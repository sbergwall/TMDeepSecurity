function Get-TmdsPolicyIntrusionPreventionRule {
    param (
        # Parameter help description
        [Parameter(ParameterSetName = 'ById', 
            ValueFromPipeline = $true, 
            ValueFromPipelineByPropertyName = $true,
            Mandatory = $true)]
        [int]$PolicyId,
        [int]$IntrusionPreventionRuleId

    )

    process {

        foreach ($id in $PolicyId) {
            if ($IntrusionPreventionRuleId) {
                $Resource = "policies/$id/intrusionprevention/rules/$IntrusionPreventionRuleId"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
            else {
                $Resource = "policies/$id/intrusionprevention/rules"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                (Invoke-TmdsApiCall @params).intrusionPreventionRules
            }
        }
    }
}