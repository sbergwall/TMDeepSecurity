function Get-TmdsFileExtensionList {
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
        [int[]]$FileExtensionListId
    )
    process {
        If ($PSCmdlet.ParameterSetName -eq 'ById') {
            foreach ($id in $FileExtensionListId) {
                $Resource = "fileextensionlists/$id"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }   
        }
        Else {
            $Resource = "fileextensionlists"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }
            (Invoke-TmdsApiCall @params).fileextensionlists
        }
    }
}