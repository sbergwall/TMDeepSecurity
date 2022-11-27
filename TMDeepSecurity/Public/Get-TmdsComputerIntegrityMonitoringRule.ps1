function Get-TmdsComputerIntegrityMonitoringRule {
    [Alias('')]
    param (
        [parameter(
            ParameterSetName = 'ById',
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            Mandatory = $true)]
        [Alias('Id')]
        [int[]]$ComputerId,
        [int]$IntegrityMonitoringRuleID
    )
    process {
        foreach ($id in $ComputerId) {
            If ($IntegrityMonitoringRuleID) {
                $Resource = "computers/$id/integritymonitoring/rules/$IntegrityMonitoringRuleID"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
            else {
                $Resource = "computers/$id/integritymonitoring/rules"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
            (Invoke-TmdsApiCall @params).integrityMonitoringRules
            }
        }
    }
}