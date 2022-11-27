function Get-TmdsPolicyIntegrityMonitoringRule {
    param (
        # Parameter help description
        [Parameter(ParameterSetName = 'ById', 
            ValueFromPipeline = $true, 
            ValueFromPipelineByPropertyName = $true,
            Mandatory = $true)]
        [int]$PolicyId,

        [int]$IntegrityMonitoringRuleId

    )

    process {

        foreach ($id in $PolicyId) {
            if ($IntegrityMonitoringRuleId) {
                $Resource = "policies/$id/integritymonitoring/rules/$IntegrityMonitoringRuleId"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
            else {
                $Resource = "policies/$id/integritymonitoring/rules"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                (Invoke-TmdsApiCall @params).integrityMonitoringRules
            }
        }
    }
}