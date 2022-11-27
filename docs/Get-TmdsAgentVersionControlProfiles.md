---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsAgentVersionControlProfiles

## SYNOPSIS
Lists agent version control profiles. 

## SYNTAX

### All (Default)
```
Get-TmdsAgentVersionControlProfiles [-All] [<CommonParameters>]
```

### ById
```
Get-TmdsAgentVersionControlProfiles [-AgentVersionControlProfilesId <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Lists agent version control profiles. 

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsAgentVersionControlProfiles
```

Lists all agent version control profiles. 

## PARAMETERS

### -AgentVersionControlProfilesId
List an Agent Version Control Profile by ID. 

```yaml
Type: Int32
Parameter Sets: ById
Aliases: Id

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -All
Lists all agent version control profiles. 

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Int32

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
