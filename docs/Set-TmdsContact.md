---
external help file: TMDeepSecurity-help.xml
Module Name: TMDeepSecurity
online version:
schema: 2.0.0
---

# Set-TmdsContact

## SYNOPSIS
Modify a contact.

## SYNTAX

```
Set-TmdsContact [-ContactId] <Int32> [[-Description] <String>] [[-EmailAddress] <String>] [[-Locale] <String>]
 [[-MobileNumber] <String>] [[-Name] <String>] [[-PagerNumber] <String>] [[-PhoneNumber] <String>]
 [[-ReportPDFPassword] <String>] [[-ReportPDFPasswordEnabled] <Boolean>] [[-RoleID] <Int32>]
 [<CommonParameters>]
```

## DESCRIPTION
Modify a contact. Any unset elements will be left unchanged. 

## EXAMPLES

### Example 1
```powershell
PS C:\> Set-TmdsContact -ContactId 1 -Description "New Description" -EmailAddress "email@company.com"
```

Set description and email adress for contact with id 1.

## PARAMETERS

### -ContactId
The ID number of the contact to modify.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
Description of the Contact.

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

### -EmailAddress
Email address of the Contact.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Locale
Locale of the Contact.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MobileNumber
Mobile number of the Contact.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Name of the Contact.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PagerNumber
Pager number of the Contact. 

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PhoneNumber
Phone number of the Contact. 

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReportPDFPassword
Password that protects the reports that the Contact generates. Ignored when ReportPDFPasswordEnabled is false.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReportPDFPasswordEnabled
Controls whether the reports that the Contact generates are password-protected. Set to true to password-protect, and false otherwise. 

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RoleID
ID of the role assigned to the Contact.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
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
