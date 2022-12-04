---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsFileExtensionList

## SYNOPSIS
Get file extension lists.

## SYNTAX

### All (Default)
```
Get-TmdsFileExtensionList [-All] [<CommonParameters>]
```

### ById
```
Get-TmdsFileExtensionList [-FileExtensionListId <Int32[]>] [<CommonParameters>]
```

## DESCRIPTION
Get file extension lists.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsFileExtensionList
```

Return all File Extension Lists

### Example 2
```powershell
PS C:\> Get-TmdsFileExtensionList -FileExtensionListId 1
```

Return File Extension List with Id 1.

## PARAMETERS

### -All
Return all File Extension Lists

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

### -FileExtensionListId
The ID number of the file extension list to describe.

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
