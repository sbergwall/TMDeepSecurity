function New-TmdsApiKeySecretKey {
    [CmdletBinding()]
    param (
        # Id of Api Key
        [int]$ApiKeyId
    )

    process {

        $Resource = "apikeys/$ApiKeyId/secretkey"
        $params = @{
            'Resource'  = $Resource
            'Method'    = "Post"
            'Body'      = ($body | ConvertTo-Json)
        }

        Write-Verbose "Invoking API call"
        Invoke-TmdsApiCall @params
    }
}