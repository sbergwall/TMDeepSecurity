function Get-TmdsComputerLogInspectionRule {
    [Alias('')]
    param (
        [parameter(
            ParameterSetName = 'ById', 
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            Mandatory = $true)]
        [Alias('Id')]
        [int[]]$ComputerId,
        [int]$LogInspectionRuleId
    )
    process {
        foreach ($id in $ComputerId) {
            if ($LogInspectionRuleId) {
                $Resource = "computers/$id/loginspection/rules/$LogInspectionRuleId"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
            else {
                $Resource = "computers/$id/loginspection/rules"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
            (Invoke-TmdsApiCall @params).logInspectionRules
            }
        }
    }
}