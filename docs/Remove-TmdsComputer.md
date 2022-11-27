---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Remove-TmdsComputer

## SYNOPSIS
Delete a computer by Id or by HostName in Deep Security Manager.

## SYNTAX

### ById
```
Remove-TmdsComputer -ComputerId <Int32[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ByHostName
```
Remove-TmdsComputer [-HostName <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
You can specify either the Id or the HostName of a computer object in DSM to remove it. You can use Tab or Ctrl + Space to see all computer objects in DSM.

## EXAMPLES

### Example 1
```powershell
PS C:\> Remove-TmdsComputer -HostName dc1.company.com
```

Remove computer object with hostname dc1.company.com from DSM.

### Example 2
```powershell
PS C:\> Remove-TmdsComputer -ComputerId 1
```

Remove computer object with Id 1 from DSM.

## PARAMETERS

### -ComputerId
Computer objects Id in DSM.

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

### -HostName
HostName in DSM.

```yaml
Type: String
Parameter Sets: ByHostName
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
