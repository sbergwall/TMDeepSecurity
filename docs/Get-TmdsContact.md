---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsContact

## SYNOPSIS
Get contacts.

## SYNTAX

### All (Default)
```
Get-TmdsContact [-All] [<CommonParameters>]
```

### ById
```
Get-TmdsContact [-ContactId <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Get contacts.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsContact
```

Gets all contacts.

## PARAMETERS

### -All
Returns all contacts.

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

### -ContactId
The ID number of the contact to describe.

```yaml
Type: Int32
Parameter Sets: ById
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
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
