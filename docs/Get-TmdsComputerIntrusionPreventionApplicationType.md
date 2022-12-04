---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsComputerIntrusionPreventionApplicationType

## SYNOPSIS
Get all intrusion prevention application types assigned to a computer.

## SYNTAX

```
Get-TmdsComputerIntrusionPreventionApplicationType -ComputerId <Int32[]> [-ApplicationTypeId <Int32>]
 [<CommonParameters>]
```

## DESCRIPTION
Get all intrusion prevention application types assigned to a computer.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsComputerIntrusionPreventionApplicationType -ComputerId 1
```

Get all intrusion prevention application types assigned to computer with id 1.

## PARAMETERS

### -ApplicationTypeId
Application Type Id.

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
Computer Id.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Int32[]

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
