---
external help file: Trend-Micro-Deep-Security-help.xml
Module Name: Trend-Micro-Deep-Security
online version:
schema: 2.0.0
---

# Set-TmdsComputer

## SYNOPSIS
Modify a computer by ID in Deep Security Manager.

## SYNTAX

```
Set-TmdsComputer -ComputerId <Int32[]> [-PropertySet <String[]>] [-Description <String>]
 [-DisplayName <String>] [-HostName <String>] [-GroupId <Int32>] [-AssetImportanceId <Int32>]
 [-PolicyId <Int32>] [-RelayListId <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Modify a computer by ID in Deep Security Manager.

## EXAMPLES

### Example 1
```powershell
PS C:\> Set-TmdsComputer -ComputerId 1 -Description "A Description" -DisplayName "A DisplayName"
```

Modify Computer with Id 1 to set description to "A Description" and displayName to "A DisplayName"

### Example 2
```powershell
PS C:\> 1,2 | Set-TmdsComputer -Description "A Description" -DisplayName "A DisplayName"
```

Modify Computer with Id 1 to set description to "A Description" and displayName to "A DisplayName"

### Example 3
```powershell
PS C:\> Set-TmdsComputer -ComputerId 2 -Description "" -DisplayName ""
```

Removes Description and DisplayName from Computer Id 2.

### Example 4
```powershell
PS C:\> Set-TmdsComputer -ComputerId 2 -Description $null -DisplayName $null
```

Removes Description and DisplayName from Computer Id 2.

## PARAMETERS

### -ComputerId
The ID number of the computer to modify.

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
Description of the computer.

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
Display name of the computer.

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

### -AssetImportanceId
ID of the asset importance assigned to the computer. Set to 0, $null or "" to remove any assignment.

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

### -GroupId
ID of the computer group to which the computer belongs. Set to 0, $null or "" to remove any assignment.

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
Hostname of the computer.

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
ID of the policy assigned to the computer. Set to 0, $null or "" to remove any assignment.

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

### -RelayListId
ID of the relay list that is assigned to the computer. Set to 0, $null or "" to remove any assignment.

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
