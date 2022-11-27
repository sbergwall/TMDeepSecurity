function Get-TmdsPolicyIntrusionPreventionRuleId {
    param (
        # Parameter help description
        [Parameter(ParameterSetName = 'ById', 
            ValueFromPipeline = $true, 
            ValueFromPipelineByPropertyName = $true,
            Mandatory = $true)]
        [int]$PolicyId

    )

    process {

        foreach ($id in $PolicyId) {
            $Resource = "policies/$id/intrusionprevention/assignments"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }
            Invoke-TmdsApiCall @params
        }
    }
}