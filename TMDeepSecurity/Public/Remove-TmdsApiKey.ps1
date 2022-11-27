function Remove-TmdsApiKey {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High')]
    param (
        [parameter(
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            ParameterSetName = 'ById')]
        [Alias('Id')]
        [Int[]]$ApiKeyId
    )
        
    process {
        foreach ($apiKey in $ApiKeyId) {
            If ($PSCmdlet.ShouldProcess("Id $apiKey", "Remove Trend Micro Deep Security Api Key")) {
                $Resource = "apikeys/$apiKey"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Delete"
                }
                Invoke-TmdsApiCall @params
            }
        }
    }
}