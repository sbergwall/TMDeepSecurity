---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsAdministratorRole

## SYNOPSIS
Return one or more Administrator Roles from DSM. 

## SYNTAX

### All (Default)
```
Get-TmdsAdministratorRole [-All] [<CommonParameters>]
```

### ById
```
Get-TmdsAdministratorRole [-AdministratorRoleId <Int32[]>] [<CommonParameters>]
```

### ByName
```
Get-TmdsAdministratorRole [-Name <String>] [<CommonParameters>]
```

## DESCRIPTION
Return one or more Administrator Roles from DSM. This is the same that is found in Administrators -> User Management -> Roles in the WebGUI.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsAdministratorRole -All
```

Return all Administrator Roles from DSM.

### Example 2
```powershell
PS C:\> Get-TmdsAdministratorRole -AdministratorRoleId 1,2
```

Return Administrator Roles with Id 1 and Id 2.

### Example 3
```powershell
PS C:\> Get-TmdsAdministratorRole -Name Auditor
```

Return Administrator Role with Name Auditor from DSM. If you press Ctrl + Space you get argument completer.

## PARAMETERS

### -AdministratorRoleId
Id of the Administrator Role you want to return.

```yaml
Type: Int32[]
Parameter Sets: ById
Aliases: RoleId, Id

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -All
Return all Administrator Roles from DSM.

```yaml
Type: SwitchParameter
Parameter Sets: All
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Return a administrator with the Name specified. If you press Ctrl + Space you get argument completer.

```yaml
Type: String
Parameter Sets: ByName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Int32[]

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
