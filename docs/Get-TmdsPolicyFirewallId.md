---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsPolicyFirewallId

## SYNOPSIS
Get firewall rule IDs assigned to a policy.

## SYNTAX

```
Get-TmdsPolicyFirewallId -PolicyId <Int32> [<CommonParameters>]
```

## DESCRIPTION
Get firewall rule IDs assigned to a policy.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsPolicyFirewallId -PolicyId 1
```

Get firewall rule IDs assigned to policy with id 1.

## PARAMETERS

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
