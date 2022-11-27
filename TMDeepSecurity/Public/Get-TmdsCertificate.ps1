function Get-TmdsCertificate {
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
        [int[]]$CertificateId
    )
    process {
        If ($PSCmdlet.ParameterSetName -eq 'ById') {
            foreach ($id in $CertificateId) {
                $Resource = "certificates/$id"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
        }   
        Else {
            $Resource = "certificates"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }
            (Invoke-TmdsApiCall @params).certificates
        }
    }
}