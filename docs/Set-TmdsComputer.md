---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Set-TmdsComputer

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
Set-TmdsComputer -ComputerId <Int32[]> [-PropertySet <String[]>] [-Description <String>]
 [-DisplayName <String>] [-HostName <String>] [-GroupId <Int32>] [-AssetImportanceId <Int32>]
 [-PolicyId <Int32>] [-RelayListId <Int32>] [<CommonParameters>]
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

### -AssetImportanceId
{{ Fill AssetImportanceId Description }}

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

### -ComputerId
{{ Fill ComputerId Description }}

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

### -Description
{{ Fill Description Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisplayName
{{ Fill DisplayName Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupId
{{ Fill GroupId Description }}

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

### -HostName
{{ Fill HostName Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PolicyId
{{ Fill PolicyId Description }}

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

### -PropertySet
{{ Fill PropertySet Description }}

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: none, all, computerStatus, tasks, securityUpdates, computerSettings, allSecurityModules, antiMalware, webReputation, activityMonitoring, firewall, intrusionPrevention, integrityMonitoring, logInspection, applicationControl, SAP, interfaces, ESXSummary, allVirtualMachineSummaries, azureARMVirtualMachineSummary, azureVMVirtualMachineSummary, ec2VirtualMachineSummary, noConnectorVirtualMachineSummary, vmwareVMVirtualMachineSummary, vcloudVMVirtualMachineSummary, workspaceVirtualMachineSummary, gcpVirtualMachineSummary

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RelayListId
{{ Fill RelayListId Description }}

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
