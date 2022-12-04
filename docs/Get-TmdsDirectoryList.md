---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsDirectoryList

## SYNOPSIS
Get directory lists.

## SYNTAX

### All (Default)
```
Get-TmdsDirectoryList [-All] [<CommonParameters>]
```

### ById
```
Get-TmdsDirectoryList [-DirectoryListId <Int32[]>] [<CommonParameters>]
```

## DESCRIPTION
Get directory lists.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsDirectoryList
```

Returns all Directory Lists.

## PARAMETERS

### -All
Returns all Directory Lists.

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

### -DirectoryListId
The ID number of the directory list.

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
