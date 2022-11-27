function Set-TmdsComputer {
    [CmdletBinding()]
    param (
        [parameter(
            ParameterSetName = 'ById', 
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true)]
        [Alias('Id')]
        [Int[]]$ComputerId,

        [ValidateSet("none","all","computerStatus","tasks","securityUpdates","computerSettings","allSecurityModules","antiMalware","webReputation","activityMonitoring","firewall","intrusionPrevention","integrityMonitoring","logInspection","applicationControl","SAP","interfaces","ESXSummary","allVirtualMachineSummaries","azureARMVirtualMachineSummary","azureVMVirtualMachineSummary","ec2VirtualMachineSummary","noConnectorVirtualMachineSummary","vmwareVMVirtualMachineSummary","vcloudVMVirtualMachineSummary","workspaceVirtualMachineSummary","gcpVirtualMachineSummary")]
        [string[]]$PropertySet = "none",
        [string]$Description,
        [string]$DisplayName,
        [string]$HostName,
        [int]$GroupId,
        [int]$AssetImportanceId,
        [int]$PolicyId,
        [int]$RelayListId
    )

    process {
        foreach ($computer in $ComputerId) {
            $Resource = "computers/$($computer)?expand=$PropertySet"

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
}