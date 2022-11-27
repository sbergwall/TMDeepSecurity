---
external help file: Trend-Micro-Deep-Security-help.xml
Module Name: Trend-Micro-Deep-Security
online version:
schema: 2.0.0
---

# New-TmdsPolicy

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
New-TmdsPolicy [-Name] <String> [[-Description] <String>] [[-ParentId] <Int32>]
 [[-AutoRequiresUpdate] <Object>] [[-RecommendationScanMode] <Object>] [[-AntiMalwareState] <String>]
 [[-AntiMalwareManualScanConfigurationID] <Int32>] [[-AntiMalwareRealTimeScanConfigurationID] <Int32>]
 [[-AntiMalwareRealTimeScanScheduleID] <Int32>] [[-AntiMalwareScheduledScanConfigurationID] <Int32>]
 [[-WebReputationState] <Object>] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AntiMalwareManualScanConfigurationID
{{ Fill AntiMalwareManualScanConfigurationID Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AntiMalwareRealTimeScanConfigurationID
{{ Fill AntiMalwareRealTimeScanConfigurationID Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AntiMalwareRealTimeScanScheduleID
{{ Fill AntiMalwareRealTimeScanScheduleID Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AntiMalwareScheduledScanConfigurationID
{{ Fill AntiMalwareScheduledScanConfigurationID Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AntiMalwareState
{{ Fill AntiMalwareState Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: inherited, on, off

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AutoRequiresUpdate
{{ Fill AutoRequiresUpdate Description }}

```yaml
Type: Object
Parameter Sets: (All)
Aliases:
Accepted values: on, off

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
{{ Fill Description Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
{{ Fill Name Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParentId
{{ Fill ParentId Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RecommendationScanMode
{{ Fill RecommendationScanMode Description }}

```yaml
Type: Object
Parameter Sets: (All)
Aliases:
Accepted values: off, ongoing

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WebReputationState
{{ Fill WebReputationState Description }}

```yaml
Type: Object
Parameter Sets: (All)
Aliases:
Accepted values: inherited, on, off

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
