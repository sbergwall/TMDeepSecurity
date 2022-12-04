---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsComputerLogInspectionRule

## SYNOPSIS
Get log inspection rules assigned to a computer.

## SYNTAX

```
Get-TmdsComputerLogInspectionRule -ComputerId <Int32[]> [-LogInspectionRuleId <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Get log inspection rules assigned to a computer.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsComputerLogInspectionRule -ComputerId 1
```

Get log inspection rules assigned to computer with id 1.

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

### -LogInspectionRuleId
The ID number of the log inspection rule.

```yaml
Type: Int32
Parameter Sets: (All)
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
