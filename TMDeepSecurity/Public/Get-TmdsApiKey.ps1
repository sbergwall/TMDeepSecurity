function Get-TmdsApiKey {
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
        [int[]]$ApiKeyId,

        [parameter(ParameterSetName = 'Current')]
        [switch]$Current
    )
    process {
        If ($PSCmdlet.ParameterSetName -eq 'ById') {
            foreach ($id in $ApiKeyId) {
                $Resource = "apikeys/$id"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
        }
        elseif ($PSCmdlet.ParameterSetName -eq 'Current') {
            $Resource = "apikeys/current"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }
            Invoke-TmdsApiCall @params
        }        
        Else {
            $Resource = "apikeys"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }
            (Invoke-TmdsApiCall @params).apikeys
        }
    }
}