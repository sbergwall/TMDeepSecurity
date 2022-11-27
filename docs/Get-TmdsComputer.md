---
external help file: Trend-Micro-Deep-Security-help.xml
Module Name: Trend-Micro-Deep-Security
online version:
schema: 2.0.0
---

# Get-TmdsComputer

## SYNOPSIS
Get all computer objects or get specific ones based on Computer Id in Deep Security Manager.

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
Get all computer objects or get specific ones based on Computer Id in Deep Security Manager.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsComputer
```

Get all computer objects from Deep Security Manager.

### Example 2
```powershell
PS C:\> Get-TmdsComputer -ComputerId 1,2
```

Get computer object with Id 1 and 2 from Deep Security Manager.

### Example 3
```powershell
PS C:\> Get-TmdsComputer -HostName DSM.company.com
```

Get computer object with HostName DSM.company.com from Deep Security Manager.

## PARAMETERS

### -All
Return all computer objects. This is the default.

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
Get one or more computer objects by Id.

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

### -PropertySet
Determines the computer information to include in the response. Use "none" to retrieve only basic computer information such as policyID and hostName.

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

### -HostName
HostName in DSM.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Int32[]

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
