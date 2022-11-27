function Set-TmdsConfig {
    [CmdletBinding()]
    param (
        [string]$DeepSecurityManager,

        [string]$APIKey
    )
    process {
        $script:DSConfig = [PSCustomObject]@{
            DeepSecurityManager = $DeepSecurityManager
            APIKey              = $APIKey
        }
    }
}
