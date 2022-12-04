---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsFileList

## SYNOPSIS
Get File Lists

## SYNTAX

### All (Default)
```
Get-TmdsFileList [-All] [<CommonParameters>]
```

### ById
```
Get-TmdsFileList [-FileListId <Int32[]>] [<CommonParameters>]
```

## DESCRIPTION
Get File Lists

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsFileList
```

Return all File Lists.

### Example 2
```powershell
PS C:\> Get-TmdsFileList -FileListId 1,2
```

Return File Lists with id 1 and 2.

## PARAMETERS

### -All
Return all File Lists.

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

### -FileListId
The ID number of the file list.

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
