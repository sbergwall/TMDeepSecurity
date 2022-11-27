function Get-TmdsPolicyIntrusionPreventionApplicationType {
    param (
        # Parameter help description
        [Parameter(ParameterSetName = 'ById', 
            ValueFromPipeline = $true, 
            ValueFromPipelineByPropertyName = $true,
            Mandatory = $true)]
        [int]$PolicyId,
        [int]$ApplicationTypeId

    )

    process {

        foreach ($id in $PolicyId) {
            if ($ApplicationTypeId) {
                $Resource = "policies/$id/intrusionprevention/applicationtypes/$ApplicationTypeId"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
            else {
                $Resource = "policies/$id/intrusionprevention/applicationtypes"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                (Invoke-TmdsApiCall @params).applicationTypes
            }
        }
    }
}