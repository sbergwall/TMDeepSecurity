---
external help file: Trend-Micro-Deep-Security-help.xml
Module Name: Trend-Micro-Deep-Security
online version:
schema: 2.0.0
---

# New-TmdsComputer

## SYNOPSIS
Create a new computer. 

## SYNTAX

```
New-TmdsComputer [[-Description] <String>] [[-DisplayName] <String>] [[-HostName] <String>]
 [[-GroupId] <Int32>] [[-AssetImportanceId] <Int32>] [[-PolicyId] <Int32>] [[-RelayListId] <Int32>]
 [<CommonParameters>]
```

## DESCRIPTION
Creates a new computer object in DSM.

## EXAMPLES

### Example 1
```powershell
PS C:\> New-TmdsComputer -Description "a description" -DisplayName "dc1.company.com" -HostName "dc1.company.com" -AssetImportanceId 1 -PolicyId 1
```

Create a new computer in DSM with Asset Importance 1 and bind policy 1 to the object.

## PARAMETERS

### -AssetImportanceId
ID of the asset importance assigned to the computer.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
Description of the computer.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisplayName
Display name of the computer.

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

### -GroupId
ID of the computer group to which the computer belongs.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HostName
Hostname of the computer.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PolicyId
ID of the policy assigned to the computer.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RelayListId
ID of the relay list that is assigned to the computer.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
