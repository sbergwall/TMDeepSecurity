---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsAdministrator

## SYNOPSIS
Get one or more administrators from DSM.

## SYNTAX

### All (Default)
```
Get-TmdsAdministrator [-All] [<CommonParameters>]
```

### ById
```
Get-TmdsAdministrator [-AdministratorId <Int32[]>] [<CommonParameters>]
```

### ByUsername
```
Get-TmdsAdministrator [-UserName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get one or more Administrators from DSM. This is the same that is found in Administrators -> User Management -> Users in the WebGUI.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsAdministrator -All
```

Returns all Administrators from DSM. -All is default.

### Example 2
```powershell
PS C:\> Get-TmdsAdministrator -AdministratorId 1,5
```

Returns administrator with Id 1 and Id 5 from DSM.

### Example 3
```powershell
PS C:\> Get-TmdsAdministrator -UserName Administrator
```

Returns administrator with UserName Administrator from DSM. If you press Ctrl + Space you get argument completer.

## PARAMETERS

### -AdministratorId
Id of the Administrator you want to return.

```yaml
Type: Int32[]
Parameter Sets: ById
Aliases: Id

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -All
Return all administrators from DSM.

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

### -UserName
Return a administrator with the UserName specified.

```yaml
Type: String
Parameter Sets: ByUsername
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
