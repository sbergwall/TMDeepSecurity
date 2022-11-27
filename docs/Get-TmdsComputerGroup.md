---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsComputerGroup

## SYNOPSIS
Get all or specific computer groups.

## SYNTAX

### All (Default)
```
Get-TmdsComputerGroup [-All] [<CommonParameters>]
```

### ById
```
Get-TmdsComputerGroup [-ComputerGroupId <Int32[]>] [<CommonParameters>]
```

## DESCRIPTION
Get all or specific computer groups.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsComputerGroup
```

Get all Computer Groups

## PARAMETERS

### -All
Get all Computer Groups

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

### -ComputerGroupId
Get Computer Group based on Id.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Int32[]

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
