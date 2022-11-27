---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsApiKey

## SYNOPSIS
Get API Keys

## SYNTAX

### All (Default)
```
Get-TmdsApiKey [-All] [<CommonParameters>]
```

### ById
```
Get-TmdsApiKey [-ApiKeyId <Int32[]>] [<CommonParameters>]
```

### Current
```
Get-TmdsApiKey [-Current] [<CommonParameters>]
```

## DESCRIPTION
Get API Keys from Deep Security Manager

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsApiKey
```

Get all API Keys from Deep Security Manager

## PARAMETERS

### -All
Get all API Keys from Deep Security Manager

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

### -ApiKeyId
Get API Key with specific Id from Deep Security Manager

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

### -Current
Get the API key that is associated with the credentials that are being used to authenticate this call. Authentication must be done via an API secret key.

```yaml
Type: SwitchParameter
Parameter Sets: Current
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
