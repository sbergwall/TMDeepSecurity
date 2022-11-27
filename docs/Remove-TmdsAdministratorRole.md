---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Remove-TmdsAdministratorRole

## SYNOPSIS
Removes a role.

## SYNTAX

### ById
```
Remove-TmdsAdministratorRole -AdministratorRoleId <Int32[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ByName
```
Remove-TmdsAdministratorRole [-Name <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Removes a role. This is the same as Administration -> User Management -> Roles in the WebGUI.

## EXAMPLES

### Example 1
```powershell
PS C:\> Remove-TmdsAdministratorRole -AdministratorRoleId 5
```

Removes role with Id 5.

### Example 2
```powershell
PS C:\> Remove-TmdsAdministratorRole -Name "Auditor"
```

Removes role with Name Auditor. If you press Ctrl + Space you get argument completer.

## PARAMETERS

### -AdministratorRoleId
Id of role.

```yaml
Type: Int32[]
Parameter Sets: ById
Aliases: Id, RoleId

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Name of role.

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

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

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
