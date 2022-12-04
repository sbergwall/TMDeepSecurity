---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsComputerIntrusionPreventionRule

## SYNOPSIS
Get intrusion prevention rules assigned to a computer.

## SYNTAX

```
Get-TmdsComputerIntrusionPreventionRule -ComputerId <Int32[]> [-IntrusionPreventionRuleId <Int32>]
 [<CommonParameters>]
```

## DESCRIPTION
Get intrusion prevention rules assigned to a computer.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsComputerIntrusionPreventionRule -ComputerId 1
```

Get all intrusion prevention rules assigned to computer with Id 1.

## PARAMETERS

### -ComputerId
The ID number of the computer.s

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

### -IntrusionPreventionRuleId
The ID number of the intrusion prevention rule.

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
