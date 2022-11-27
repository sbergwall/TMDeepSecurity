---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsComputerFirewallRule

## SYNOPSIS
Get firewall rules assigned to a computer.

## SYNTAX

```
Get-TmdsComputerFirewallRule -ComputerId <Int32[]> [-FirewallRuleId <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Get all or specific firewall rule assigned to a computer.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsComputerFirewallRule -ComputerId 1
```

Get all firewall rules assigned to computer with Id 1.

### Example 2
```powershell
PS C:\> Get-TmdsComputerFirewallRule -ComputerId 1 -FirewallRuleId 72
```

Get firewall rule with Id 71 assigned to computer with Id 1.

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

### -FirewallRuleId
Firewall Rule Id

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
