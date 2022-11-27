---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Get-TmdsCertificate

## SYNOPSIS
Get SSL certificates.

## SYNTAX

### All (Default)
```
Get-TmdsCertificate [-All] [<CommonParameters>]
```

### ById
```
Get-TmdsCertificate [-CertificateId <Int32[]>] [<CommonParameters>]
```

## DESCRIPTION
Get SSL certificates.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TmdsCertificate
```

Get all SSL certificates.

### Example 2
```powershell
PS C:\> Get-TmdsCertificate -CertificateId 2
```

Get SSL certificate with Id 2.

## PARAMETERS

### -All
Get all SSL certificates.

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

### -CertificateId
Get SSL certificate with specific Id.

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
