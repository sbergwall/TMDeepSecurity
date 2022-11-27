function Get-TmdsPolicyFirewallRule {
    param (
        # Parameter help description
        [Parameter(ParameterSetName = 'ById', 
            ValueFromPipeline = $true, 
            ValueFromPipelineByPropertyName = $true,
            Mandatory = $true)]
        [int]$PolicyId,

        [int]$FirewallRuleId

    )

    process {

        foreach ($id in $PolicyId) {
            if ($FirewallRuleId) {
                $Resource = "/policies/$id/firewall/rules/$FirewallRuleId"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
            else {
                $Resource = "policies/$id/firewall/rules"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                (Invoke-TmdsApiCall @params).firewallRules
            }
        }
    }
}