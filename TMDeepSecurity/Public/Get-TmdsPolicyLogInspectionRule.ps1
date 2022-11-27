function Get-TmdsPolicyLogInspectionRule {
    param (
        # Parameter help description
        [Parameter(ParameterSetName = 'ById', 
            ValueFromPipeline = $true, 
            ValueFromPipelineByPropertyName = $true,
            Mandatory = $true)]
        [int]$PolicyId,
        [int]$LogInspectionRuleId

    )

    process {

        foreach ($id in $PolicyId) {
            if ($LogInspectionRuleId) {
                $Resource = "/policies/$id/loginspection/rules/$LogInspectionRuleId"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
            else {
                $Resource = "/policies/$id/loginspection/rules"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                (Invoke-TmdsApiCall @params).logInspectionRules
            }
        }
    }
}