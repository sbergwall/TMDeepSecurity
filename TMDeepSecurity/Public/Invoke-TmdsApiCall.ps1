
Function Invoke-TmdsApiCall {
    param (
        $Resource,
        $DeepSecurityManager = $DSConfig.DeepSecurityManager,
        $APIKey = $DSConfig.APIKey,
        [ValidateSet('Get','Put','Post','Delete')]
        $Method = "GET",
        $Body,
        [bool]$SkipCertificateCheck = $true
    )

    process {
        $headers = @{'api-version' = "v1"; 'api-secret-key' = $APIKey; 'Content-Type' = "application/json" }

        $params = @{
            'Uri' = "$DeepSecurityManager/api/$Resource"
            'Method' = $Method
            'SkipCertificateCheck' = $SkipCertificateCheck
        }

        If ($body) {
            $params.add('Body', ([System.Text.Encoding]::UTF8.GetBytes($body)))
        }

        Invoke-RestMethod @params -Headers $headers 
    }
}
