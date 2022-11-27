function Get-TmdsReport {
    [CmdletBinding(DefaultParameterSetName = 'All')]
    [Alias('')]
    param (
        [parameter(ParameterSetName = 'All')]
        [switch]$All,

        [parameter(
            ParameterSetName = 'ById', 
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true)]
        [Alias('Id')]
        [int[]]$ReportId
    )
    process {
        If ($PSCmdlet.ParameterSetName -eq 'ById') {
            foreach ($id in $ReportId) {
                $Resource = "reporttemplates/$id"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
        }   
        Else {
            $Resource = "reporttemplates"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }
            (Invoke-TmdsApiCall @params).reporttemplates
        }
    }
}