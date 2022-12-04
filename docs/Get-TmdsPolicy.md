---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsPolicy

## SYNOPSIS
Get policies.

## SYNTAX

### All (Default)
```
Get-TmdsPolicy [-All] [<CommonParameters>]
```

### ById
```
Get-TmdsPolicy [-PolicyId <Int32>] [-SettingName <String>] [<CommonParameters>]
```

## DESCRIPTION
Get policies.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsPolicy
```

Return all policies.

### Example 2
```powershell
PS C:\> Get-TmdsPolicy -PolicyId 1 -SettingName "logInspectionSettingSeverityClippingAgentEventSendSyslogLevelMin"
```

Get the value of setting logInspectionSettingSeverityClippingAgentEventSendSyslogLevelMin for policy with id 1.

## PARAMETERS

### -All
Return all policies.

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

### -PolicyId
The ID number of the policy.

```yaml
Type: Int32
Parameter Sets: ById
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -SettingName
The name of the policy setting.

```yaml
Type: String
Parameter Sets: ById
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

### System.Int32

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
