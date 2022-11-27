function New-TmdsComputer {
    [CmdletBinding()]
    param (
        [string]$Description,
        [string]$DisplayName,
        [string]$HostName,
        [int]$GroupId,
        [int]$AssetImportanceId,
        [int]$PolicyId,
        [int]$RelayListId
    )

    process {
            $Resource = "computers"

            [hashtable]$body = @{}
            switch ($PSBoundParameters.Keys) {
                'Description' {$body['description'] = $Description}
                'DisplayName' {$body['displayName'] = $DisplayName}
                'HostName' {$body['hostName'] = $HostName}
                'GroupId'  {$body['groupID'] = $GroupId}
                'AssetImportanceID'  {$body['assetImportanceID'] = $AssetImportanceID}
                'PolicyID'  {$body['policyID'] = $PolicyID}
                'RelayListId'  {$body['relayListID'] = $RelayListId}
            }

            $params = @{
                'Resource'  = $Resource
                'Method'    = "Post"
                'Body'      = ($body | ConvertTo-Json)
            }

            Write-Verbose "Invoking API call"
            Invoke-TmdsApiCall @params
    }    
}