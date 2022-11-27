---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsComputerIntegrityMonitoringId

## SYNOPSIS
Get all integrity monitoring rule IDs assigned to a computer.

## SYNTAX

```
Get-TmdsComputerIntegrityMonitoringId -ComputerId <Int32[]> [<CommonParameters>]
```

## DESCRIPTION
Get all integrity monitoring rule IDs assigned to a computer.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsComputerIntegrityMonitoringId -ComputerId 1
```

Get all integrity monitoring rule IDs assigned computer with Id 1.

## PARAMETERS

### -ComputerId
Computer Id

```yaml
Type: Int32[]
Parameter Sets: (All)
Aliases: Id

Required: True
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
