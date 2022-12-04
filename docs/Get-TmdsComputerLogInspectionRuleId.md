---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsComputerLogInspectionRuleId

## SYNOPSIS
Get log inspection rule IDs assigned to a computer.

## SYNTAX

```
Get-TmdsComputerLogInspectionRuleId -ComputerId <Int32[]> [<CommonParameters>]
```

## DESCRIPTION
Get log inspection rule IDs assigned to a computer.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsComputerLogInspectionRuleId -ComputerId 1
```

Get all log inspection rule IDs assigned to a computer with id 1.

## PARAMETERS

### -ComputerId
The ID number of the computer.

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
