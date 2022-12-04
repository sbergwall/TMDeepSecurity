---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsEventBasedTask

## SYNOPSIS
Get event based tasks.

## SYNTAX

### All (Default)
```
Get-TmdsEventBasedTask [-All] [<CommonParameters>]
```

### ById
```
Get-TmdsEventBasedTask [-EventBasedTaskId <Int32[]>] [<CommonParameters>]
```

## DESCRIPTION
Get event based tasks.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsEventBasedTask
```

Return all Event Based Tasks.

### Example 2
```powershell
PS C:\> Get-TmdsEventBasedTask -EventBasedTaskId 5,7
```

Return Event Based Task with Id 5 and 7.

## PARAMETERS

### -All
Return all Event Based Tasks.

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

### -EventBasedTaskId
The ID number of the event based task.

```yaml
Type: Int32[]
Parameter Sets: ById
Aliases: Id

Required: False
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
