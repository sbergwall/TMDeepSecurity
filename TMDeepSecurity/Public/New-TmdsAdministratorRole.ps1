function New-TmdsAdministratorRole {
    [Alias('New-TmdsRole')]

    param (
        # Controls whether or not the role is allowed to access all computers.
        [boolean]$AllComputers,

        # Controls whether or not the role is allowed management of Workload Security Link.
        [boolean]$AllowManageWorkloadSecurityLink,

        #Controls whether or not the role is allowed migration to Workload Security.
        [boolean]$AllowMigration,

        #Controls whether or not the role is allowed to use the user interface.
        [boolean]$AllowUserInterface,

        # Controls whether or not the role is allowed to use the web service API.
        [boolean]$AllowWebService,

        # Controls whether or not the role is allowed to access all policies.
        [boolean]$AllPolicies,

        # Controls whether or not the role can only manipulate users with equal or lesser rights.
        [boolean]$CanOnlyManipulateUsersWithEqualOrLesserRights,

        # List of computer group IDs that the role can access. A group ID of '0' allows access to computers not in a computer group. Note that groups must be identified individually and that access to sub-groups is not automatically granted. Ignored if 'allComputers' is true.
        [int]$ComputerGroupIDs,

        # List of computer IDs that the role can access. Ignored if 'allComputers' is true.
        [int]$ComputerIDs,

        # Description of the administrator role.
        [string]$Description,

        # Name of the administrator role.
        [string]$Name,

        # List of policy IDs that the role can access. Ignored if 'allPolicies' is true.
        [int]$PolicyIDs
    )

    process {
        $Resource = "roles"
        [hashtable]$body = @{}
        switch ($PSBoundParameters.Keys) {
            'allComputers' { $body['allComputers'] = $allComputers }
            'allowManageWorkloadSecurityLink' { $body['allowManageWorkloadSecurityLink'] = $allowManageWorkloadSecurityLink }
            'allowMigration' { $body['allowMigration'] = $allowMigration }
            'allowUserInterface' { $body['allowUserInterface'] = $allowUserInterface }
            'allowWebService' { $body['allowWebService'] = $allowWebService }
            'allPolicies' { $body['allPolicies'] = $allPolicies }
            'canOnlyManipulateUsersWithEqualOrLesserRights' { $body['canOnlyManipulateUsersWithEqualOrLesserRights'] = $canOnlyManipulateUsersWithEqualOrLesserRights }
            'computerGroupIDs' { $body['computerGroupIDs'] = $computerGroupIDs }
            'computerIDs' { $body['computerIDs'] = $computerIDs }
            'description' { $body['description'] = $description }
            'name' { $body['name'] = $name }
            'policyIDs' { $body['policyIDs'] = $policyIDs }
        }

        Write-Verbose "Resource is $Resource"
        $params = @{
            'Resource' = $Resource
            'Method'   = "Post"
            'Body'     = ($body | ConvertTo-Json)
        }

        Write-Verbose "Invoking API call"
        Invoke-TmdsApiCall @params
    }
}