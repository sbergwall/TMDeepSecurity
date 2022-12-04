---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsPolicyFirewallRule

## SYNOPSIS
Get firewall rule including policy-level overrides.

## SYNTAX

```
Get-TmdsPolicyFirewallRule -PolicyId <Int32> [-FirewallRuleId <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Get firewall rule including policy-level overrides.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsPolicyFirewallRule -PolicyId 1 -FirewallRuleId 5
```

Get firewall rule with id 5 for policy with id 1.

## PARAMETERS

### -FirewallRuleId
The ID number of the firewall rule.

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

### -PolicyId
The ID number of the policy.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Int32

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
