---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsComputerFirewallId

## SYNOPSIS
Get all firewall rule IDs assigned to a computer.

## SYNTAX

```
Get-TmdsComputerFirewallId -ComputerId <Int32[]> [<CommonParameters>]
```

## DESCRIPTION
Get all firewall rule IDs assigned to a computer.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsComputerFirewallId -ComputerId 1
```

Get the firewall rules for ComputerId 1.

## PARAMETERS

### -ComputerId
Computer Id in Deep Security Manager

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
