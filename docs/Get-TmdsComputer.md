---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsComputer

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### All (Default)
```
Get-TmdsComputer [-All] [-PropertySet <String[]>] [<CommonParameters>]
```

### ById
```
Get-TmdsComputer [-ComputerId <Int32[]>] [-PropertySet <String[]>] [<CommonParameters>]
```

### ByHostName
```
Get-TmdsComputer [-PropertySet <String[]>] [-HostName <String>] [<CommonParameters>]
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

### -ComputerId
{{ Fill ComputerId Description }}

```yaml
Type: Int32[]
Parameter Sets: ById
Aliases: Id

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -HostName
{{ Fill HostName Description }}

```yaml
Type: String
Parameter Sets: ByHostName
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Int32[]

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
