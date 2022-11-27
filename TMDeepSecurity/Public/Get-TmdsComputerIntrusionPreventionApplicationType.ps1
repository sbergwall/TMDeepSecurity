function Get-TmdsComputerIntrusionPreventionApplicationType {
    [Alias('')]
    param (
        [parameter(
            ParameterSetName = 'ById', 
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            Mandatory = $true)]
        [Alias('Id')]
        [int[]]$ComputerId,
        [int]$ApplicationTypeId
    )
    process {
        foreach ($id in $ComputerId){
            If ($ApplicationTypeId) {
                $Resource = "computers/$id/intrusionprevention/applicationtypes/$ApplicationTypeId"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                (Invoke-TmdsApiCall @params).applicationTypes
            }
            else {
                $Resource = "computers/$id/intrusionprevention/applicationtypes"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                (Invoke-TmdsApiCall @params).applicationTypes
            }
        }
    }
}