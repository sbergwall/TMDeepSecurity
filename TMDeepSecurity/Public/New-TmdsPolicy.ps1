function New-TmdsPolicy {
    param (
        [Parameter(Mandatory = $true)]
        [string]$Name,

        [string]$Description,

        [int]$ParentId,

        [ValidateSet('on','off')]
        $AutoRequiresUpdate,

        [ValidateSet('off','ongoing')]
        $RecommendationScanMode,

        [ValidateSet('inherited','on','off')]
        [string]$AntiMalwareState,

        [int]$AntiMalwareManualScanConfigurationID,

        [int]$AntiMalwareRealTimeScanConfigurationID,

        [int]$AntiMalwareRealTimeScanScheduleID,

        [int]$AntiMalwareScheduledScanConfigurationID,

        [ValidateSet('inherited','on','off')]
        $WebReputationState
    )

    process {
        $Resource = "policies"

        [hashtable]$AntiMalwareHt = @{}
        switch ($PSBoundParameters.Keys) {
            'AntiMalwareManualScanConfigurationID' {$AntiMalwareHt['manualScanConfigurationID'] = $AntiMalwareManualScanConfigurationID }
            'AntiMalwareRealTimeScanConfigurationID' {$AntiMalwareHt['realTimeScanConfigurationID'] = $AntiMalwareRealTimeScanConfigurationID }
            'AntiMalwareRealTimeScanScheduleID' {$AntiMalwareHt['realTimeScanScheduleID'] = $AntiMalwareRealTimeScanScheduleID }
            'AntiMalwareScheduledScanConfigurationID' {$AntiMalwareHt['scheduledScanConfigurationID'] = $AntiMalwareScheduledScanConfigurationID }
            'AntiMalwareState' {$AntiMalwareHt['state'] = $AntiMalwareState }
        }

        [hashtable]$webReputationHt = @{
            'state' = $WebReputationState
        }

        [hashtable]$body = @{}
        switch -Wildcard ($PSBoundParameters.Keys) {
            'Name' {$body['name'] = $Name}
            'Description' {$body['description'] = $Description}
            'ParentID' {$body['parentID'] = $ParentID}
            'AutoRequiresUpdate' {$body['autoRequiresUpdate'] = $AutoRequiresUpdate}
            'RecommendationScanMode' {$body['recommendationScanMode'] = $RecommendationScanMode}
            "AntiMalware*" {$body['antiMalware'] = $AntiMalwareHt}
            'WebReputationState' {$body['webReputation'] = $webReputationHt}
        }

        $params = @{
            'Resource' = $Resource
            'Method'   = "Post"
            'Body'     = ($body | ConvertTo-Json)
        }

        Write-Verbose "Invoking API call"
        Invoke-TmdsApiCall @params
    }
}