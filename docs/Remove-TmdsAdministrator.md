---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Remove-TmdsAdministrator

## SYNOPSIS
Removes a administrator.

## SYNTAX

### ById
```
Remove-TmdsAdministrator -AdministratorId <Int32[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ByUsername
```
Remove-TmdsAdministrator [-UserName <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Removes a administrator. This is the same as Administration -> User Management -> Users in the WebGUI.

## EXAMPLES

### Example 1
```powershell
PS C:\> Remove-TmdsAdministrator -AdministratorId 5
```

Removes a administrator with Id 5.

### Example 2
```powershell
PS C:\> Remove-TmdsAdministrator -UserName Administrator
```

Removes the administrator with UserName Administrator. If you press Ctrl + Space you get argument completer.

## PARAMETERS

### -AdministratorId
Id of administrator.

```yaml
Type: Int32[]
Parameter Sets: ById
Aliases: Id

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

### -UserName
UserName of administrator.

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
