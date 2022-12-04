---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsPolicyDefaultSetting

## SYNOPSIS
Get default policy settings.

## SYNTAX

### All (Default)
```
Get-TmdsPolicyDefaultSetting [-All] [<CommonParameters>]
```

### BySettingName
```
Get-TmdsPolicyDefaultSetting [-SettingName <String>] [<CommonParameters>]
```

## DESCRIPTION

Get default policy settings.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsPolicyDefaultSetting
```

Return all default policy settings.

### Example 2
```powershell
PS C:\> Get-TmdsPolicyDefaultSetting -SettingName antiMalwareSettingNsxSecurityTaggingOnRemediationFailureEnabled
```

Return the value of antiMalwareSettingNsxSecurityTaggingOnRemediationFailureEnabled.

## PARAMETERS

### -All
{{ Fill All Description }}

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

### -SettingName
{{ Fill SettingName Description }}

```yaml
Type: String
Parameter Sets: BySettingName
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
