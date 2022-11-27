function New-TmdsContact {
    param (
        # Description of the Contact. Searchable as String.
        [string]$Description,

        # Email address of the Contact. Searchable as String.
        [string]$EmailAddress,

        # Locale of the Contact. Enum: "en-US" "ja-JP"
        [string]$Locale,

        # Mobile number of the Contact. Searchable as String.
        [string]$MobileNumber,

        # Name of the Contact. Searchable as String.
        [string]$Name,

        # Pager number of the Contact. Searchable as String.
        [string]$PagerNumber,

        # Phone number of the Contact. Searchable as String.
        [string]$PhoneNumber,

        # Password that protects the reports that the Contact generates. Ignored when reportPDFPasswordEnabled is false.
        [string]$ReportPDFPassword,

        # Password that protects the reports that the Contact generates. Ignored when reportPDFPasswordEnabled is false.
        [bool]$ReportPDFPasswordEnabled,

        # ID of the role assigned to the Contact. Searchable as Numeric.
        [int]$RoleID
    )
    
    process {
        $Resource = "contacts"

        [hashtable]$body = @{}
        switch ($PSBoundParameters.Keys) {
            'description' {$body['description'] = $description}
            'emailAddress' {$body['emailAddress'] = $emailAddress}
            'locale' {$body['locale'] = $locale}
            'mobileNumber' {$body['mobileNumber'] = $mobileNumber}
            'name' {$body['name'] = $name}
            'pagerNumber' {$body['pagerNumber'] = $pagerNumber}
            'phoneNumber' {$body['phoneNumber'] = $phoneNumber}
            'reportPDFPassword' {$body['reportPDFPassword'] = $reportPDFPassword}
            'reportPDFPasswordEnabled' {$body['reportPDFPasswordEnabled'] = $reportPDFPasswordEnabled}
            'roleID' {$body['roleID'] = $roleID}
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