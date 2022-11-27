function Get-TmdsComputerIntegrityMonitoringId {
    [Alias('')]
    param (
        [parameter(
            ParameterSetName = 'ById', 
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            Mandatory = $true)]
        [Alias('Id')]
        [int[]]$ComputerId
    )
    process {
        foreach ($id in $ComputerId){
            $Resource = "computers/$id/integritymonitoring/assignments"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }
            Invoke-TmdsApiCall @params
        }
    }
}