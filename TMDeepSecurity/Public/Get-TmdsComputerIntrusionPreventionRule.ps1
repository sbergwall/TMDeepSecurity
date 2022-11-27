function Get-TmdsComputerIntrusionPreventionRule {
    [Alias('')]
    param (
        [parameter(
            ParameterSetName = 'ById', 
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            Mandatory = $true)]
        [Alias('Id')]
        [int[]]$ComputerId,
        [int]$IntrusionPreventionRuleId
    )
    process {
        foreach ($id in $ComputerId) {
            If ($IntrusionPreventionRuleId) {
                $Resource = "/computers/$id/intrusionprevention/rules/$IntrusionPreventionRuleId"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
            else {
                $Resource = "/computers/$id/intrusionprevention/rules"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
            (Invoke-TmdsApiCall @params).intrusionPreventionRules
            }
        }
    }
}