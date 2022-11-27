---
external help file: Trend-Micro-Deep-Security-help.xml
Module Name: Trend-Micro-Deep-Security
online version:
schema: 2.0.0
---

# New-TmdsAdministratorRole

## SYNOPSIS
Creates a new Administrator Role.

## SYNTAX

```
New-TmdsAdministratorRole [[-AllComputers] <Boolean>] [[-AllowManageWorkloadSecurityLink] <Boolean>]
 [[-AllowMigration] <Boolean>] [[-AllowUserInterface] <Boolean>] [[-AllowWebService] <Boolean>]
 [[-AllPolicies] <Boolean>] [[-CanOnlyManipulateUsersWithEqualOrLesserRights] <Boolean>]
 [[-ComputerGroupIDs] <Int32>] [[-ComputerIDs] <Int32>] [[-Description] <String>] [[-Name] <String>]
 [[-PolicyIDs] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Creates a new Administrator Role. This is the same as Administration -> User Management -> Roles in the WebGUI.

## EXAMPLES

### Example 1
```powershell
PS C:\> New-TmdsAdministratorRole -AllComputers $true -AllowManageWorkloadSecurityLink $false -AllowMigration $false -AllowUserInterface $true -AllowWebService $true -AllPolicies $true -CanOnlyManipulateUsersWithEqualOrLesserRights $true -Description "Description" -Name "Name of Role"
```

Creates a new role. This is the same as creating a role at Administration -> User Management -> Roles in the WebGUI.

## PARAMETERS

### -AllComputers
Controls whether or not the role is allowed to access all computers.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllPolicies
Controls whether or not the role is allowed to access all policies.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowManageWorkloadSecurityLink
Controls whether or not the role is allowed management of Workload Security Link. 

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowMigration
Controls whether or not the role is allowed migration to Workload Security. 

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowUserInterface
Controls whether or not the role is allowed to use the user interface.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowWebService
Controls whether or not the role is allowed to use the web service API.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CanOnlyManipulateUsersWithEqualOrLesserRights
Controls whether or not the role can only manipulate users with equal or lesser rights. 

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ComputerGroupIDs
List of computer group IDs that the role can access. A group ID of '0' allows access to computers not in a computer group. Note that groups must be identified individually and that access to sub-groups is not automatically granted. Ignored if 'allComputers' is true.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ComputerIDs
List of computer IDs that the role can access. Ignored if 'allComputers' is true.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
Description of the administrator role.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Name of the administrator role. 

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PolicyIDs
List of policy IDs that the role can access. 

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
