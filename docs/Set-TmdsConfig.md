---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Set-TmdsConfig

## SYNOPSIS
Set Config what will be used by module.

## SYNTAX

```
Set-TmdsConfig [[-DeepSecurityManager] <String>] [[-APIKey] <String>] [<CommonParameters>]
```

## DESCRIPTION
Before you can start using the other functions, the configuration needs to be set. Point to your DSM server, including port, and set your API key.

## EXAMPLES

### Example
```powershell
PS C:\> Set-TmdsConfig -DeepSecurityManager 'https://dsm.company.pri:4119' -APIKey 'APIKeyAPIKeyAPIKeyAPIKeyAPIKeyAPIKey'
```

Will use https://dsm.company.pri:4119 as your DeepSecurityManager and APIKeyAPIKeyAPIKeyAPIKeyAPIKeyAPIKey as your API Key.

## PARAMETERS

### -APIKey
Your API Key.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeepSecurityManager
Your Deep Security Manager server, including port.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
