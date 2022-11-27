function Get-TmdsComputerFirewallRule {
    [Alias('')]
    param (
        [parameter(
            ParameterSetName = 'ById', 
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            Mandatory = $true)]
        [Alias('Id')]
        [int[]]$ComputerId,

        [int]$FirewallRuleId
    )
    process {
        foreach ($id in $ComputerId) {
            If ($FirewallRuleId) {
                $Resource = "computers/$id/firewall/rules/$FirewallRuleId"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
            else {
                $Resource = "computers/$id/firewall/rules"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                (Invoke-TmdsApiCall @params).firewallRules
            }
        }
    }
}