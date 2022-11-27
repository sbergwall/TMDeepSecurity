function New-EndpointBasecampAgentDeploymentScript {
    param (
        [Parameter(Mandatory = $true)]
        [ValidateSet("windows","linux")]
        [string]$Platform
    )
    
    process {
        $Resource = "endpointbasecampagentdeploymentscripts"
        
        [hashtable]$body = @{}
        switch ($PSBoundParameters.Keys) {
            'Platform' { $Body['platform'] = $Platform }
        }

        Write-Verbose "Resource is $Resource"
        $params = @{
            'Resource'  = $Resource
            'Method'    = "Post"
            'Body'      = ($body | ConvertTo-Json)
        }

        Write-Verbose "Invoking API call"
        Invoke-TmdsApiCall @params

    }
}