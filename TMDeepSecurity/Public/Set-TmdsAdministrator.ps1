function Set-TmdsAdministrator {
    [CmdletBinding()]
    [Alias('Set-TmdsUser')]
    param (
        [parameter(
            ParameterSetName = 'ById',
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true
        )]
        [Alias('Id')]
        [int]$AdministratorId,

        #If set to true, the Administrator can authenticate. If set to false, the Administrator is locked out.
        [boolean]$Active,

        # Description of the Administrator.
        [string]$Description,

        # Email address of the Administrator.
        [string]$EmailAddress,

        # Full name of the Administrator.
        [string]$FullName,

        # Locale of the Administrator. Enum: "en-US" "ja-JP"
        [string]$Locale,

        # Specifies the type of multi-factor authentication used to authenticate the Administrator. Defaults to none. Enum: "none" "local-totp"
        [string]$MfaType,

        # Mobile number of the Administrator.
        [string]$MobileNumber,

        # Pager number of the Administrator.
        [string]$PagerNumber,

        # Password of the Administrator.
        [SecureString]$Password,

        # Enabled if the Administrator's password never expires. Defaults to false. 
        [boolean]$PasswordNeverExpires,

        # Phone number of the Administrator. 
        [string]$PhoneNumber,

        # If set to true, the administrator is a primary contact. Primary contacts receive Deep Security as a Service account-related emails for that tenant. A valid emailAddress is required.
        [boolean]$PrimaryContact,

        # If set to true, alert emails will be sent to the Administrator. A valid emailAddress is required.
        [boolean]$ReceiveNotifications,

        # Password that protects the reports that the Administrator generates. Ignored when reportPDFPasswordEnabled is false.
        [SecureString]$ReportPDFPassword,

        # Controls whether the reports that the Administrator generates are password-protected. Set to true to password-protect, and false otherwise. Defaults to false.
        [boolean]$ReportPDFPasswordEnabled,

        # ID of the role assigned to the Administrator.
        [int]$RoleID,

        # Time format preference of the Administrator. Can be either the 12-hour format or the 24-hour format. Enum: "12" "24"
        [ValidateSet('12','24')]
        [string]$TimeFormat,

        # Time zone of the Administrator.
        [Validateset("Africa/Abidjan","Africa/Accra","Africa/Addis_Ababa","Africa/Algiers","Africa/Asmera","Africa/Bamako","Africa/Bangui","Africa/Banjul","Africa/Bissau","Africa/Blantyre","Africa/Brazzaville","Africa/Bujumbura","Africa/Cairo","Africa/Casablanca","Africa/Ceuta","Africa/Conakry","Africa/Dakar","Africa/Dar_es_Salaam","Africa/Djibouti","Africa/Douala","Africa/El_Aaiun","Africa/Freetown","Africa/Gaborone","Africa/Harare","Africa/Johannesburg","Africa/Kampala","Africa/Khartoum","Africa/Kigali","Africa/Kinshasa","Africa/Lagos","Africa/Libreville","Africa/Lome","Africa/Luanda","Africa/Lubumbashi","Africa/Lusaka","Africa/Malabo","Africa/Maputo","Africa/Maseru","Africa/Mbabane","Africa/Mogadishu","Africa/Monrovia","Africa/Nairobi","Africa/Ndjamena","Africa/Niamey","Africa/Nouakchott","Africa/Ouagadougou","Africa/Sao_Tome","Africa/Timbuktu","Africa/Tripoli","Africa/Tunis","Africa/Windhoek","America/Adak","America/Anchorage","America/Anguilla","America/Antigua","America/Araguaina","America/Aruba","America/Asuncion","America/Atka","America/Barbados","America/Belem","America/Belize","America/Boa_Vista","America/Bogota","America/Boise","America/Buenos_Aires","America/Cambridge_Bay","America/Cancun","America/Caracas","America/Catamarca","America/Cayenne","America/Cayman","America/Chicago","America/Chihuahua","America/Cordoba","America/Costa_Rica","America/Cuiaba","America/Curacao","America/Danmarkshavn","America/Dawson","America/Dawson_Creek","America/Denver","America/Detroit","America/Dominica","America/Edmonton","America/Eirunepe","America/El_Salvador","America/Ensenada","America/Fort_Wayne","America/Fortaleza","America/Glace_Bay","America/Godthab","America/Goose_Bay","America/Grand_Turk","America/Grenada","America/Guadeloupe","America/Guatemala","America/Guayaquil","America/Guyana","America/Halifax","America/Havana","America/Hermosillo","America/Indianapolis","America/Inuvik","America/Iqaluit","America/Jamaica","America/Jujuy","America/Juneau","America/Knox_IN","America/La_Paz","America/Lima","America/Los_Angeles","America/Louisville","America/Maceio","America/Managua","America/Manaus","America/Martinique","America/Mazatlan","America/Mendoza","America/Menominee","America/Merida","America/Mexico_City","America/Miquelon","America/Monterrey","America/Montevideo","America/Montreal","America/Montserrat","America/Nassau","America/New_York","America/Nipigon","America/Nome","America/Noronha","America/Panama","America/Pangnirtung","America/Paramaribo","America/Phoenix","America/Port_of_Spain","America/Porto_Acre","America/Porto_Velho","America/Puerto_Rico","America/Rainy_River","America/Rankin_Inlet","America/Recife","America/Regina","America/Rio_Branco","America/Rosario","America/Santiago","America/Santo_Domingo","America/Sao_Paulo","America/Scoresbysund","America/Shiprock","America/St_Johns","America/St_Kitts","America/St_Lucia","America/St_Thomas","America/St_Vincent","America/Swift_Current","America/Tegucigalpa","America/Thule","America/Thunder_Bay","America/Tortola","America/Vancouver","America/Virgin","America/Whitehorse","America/Winnipeg","America/Yakutat","America/Yellowknife","Antarctica/Casey","Antarctica/Davis","Antarctica/DumontDUrville","Antarctica/Mawson","Antarctica/McMurdo","Antarctica/Palmer","Antarctica/Rothera","Antarctica/South_Pole","Antarctica/Syowa","Antarctica/Vostok","Arctic/Longyearbyen","Asia/Aden","Asia/Almaty","Asia/Amman","Asia/Anadyr","Asia/Aqtau","Asia/Aqtobe","Asia/Ashgabat","Asia/Ashkhabad","Asia/Baghdad","Asia/Bahrain","Asia/Baku","Asia/Bangkok","Asia/Beirut","Asia/Bishkek","Asia/Brunei","Asia/Calcutta","Asia/Choibalsan","Asia/Chongqing","Asia/Chungking","Asia/Colombo","Asia/Dacca","Asia/Damascus","Asia/Dhaka","Asia/Dili","Asia/Dubai","Asia/Dushanbe","Asia/Gaza","Asia/Harbin","Asia/Hong_Kong","Asia/Hovd","Asia/Irkutsk","Asia/Istanbul","Asia/Jakarta","Asia/Jayapura","Asia/Jerusalem","Asia/Kabul","Asia/Kamchatka","Asia/Karachi","Asia/Kashgar","Asia/Katmandu","Asia/Krasnoyarsk","Asia/Kuala_Lumpur","Asia/Kuching","Asia/Kuwait","Asia/Macao","Asia/Macau","Asia/Magadan","Asia/Makassar","Asia/Manila","Asia/Muscat","Asia/Nicosia","Asia/Novosibirsk","Asia/Omsk","Asia/Oral","Asia/Phnom_Penh","Asia/Pontianak","Asia/Pyongyang","Asia/Qatar","Asia/Qyzylorda","Asia/Rangoon","Asia/Riyadh","Asia/Saigon","Asia/Sakhalin","Asia/Samarkand","Asia/Seoul","Asia/Shanghai","Asia/Singapore","Asia/Taipei","Asia/Tashkent","Asia/Tbilisi","Asia/Tehran","Asia/Tel_Aviv","Asia/Thimbu","Asia/Thimphu","Asia/Tokyo","Asia/Ujung_Pandang","Asia/Ulaanbaatar","Asia/Ulan_Bator","Asia/Urumqi","Asia/Vientiane","Asia/Vladivostok","Asia/Yakutsk","Asia/Yekaterinburg","Asia/Yerevan","Atlantic/Azores","Atlantic/Bermuda","Atlantic/Canary","Atlantic/Cape_Verde","Atlantic/Faeroe","Atlantic/Jan_Mayen","Atlantic/Madeira","Atlantic/Reykjavik","Atlantic/South_Georgia","Atlantic/St_Helena","Atlantic/Stanley","Australia/ACT","Australia/Adelaide","Australia/Brisbane","Australia/Broken_Hill","Australia/Canberra","Australia/Darwin","Australia/Hobart","Australia/LHI","Australia/Lindeman","Australia/Lord_Howe","Australia/Melbourne","Australia/North","Australia/NSW","Australia/Perth","Australia/Queensland","Australia/South","Australia/Sydney","Australia/Tasmania","Australia/Victoria","Australia/West","Australia/Yancowinna","Brazil/Acre","Brazil/DeNoronha","Brazil/East","Brazil/West","Canada/Atlantic","Canada/Central","Canada/Eastern","Canada/Mountain","Canada/Newfoundland","Canada/Pacific","Canada/Saskatchewan","Canada/Yukon","Chile/Continental","Chile/EasterIsland","Etc/GMT","Etc/GMT0","Etc/Greenwich","Etc/UCT","Etc/Universal","Etc/UTC","Etc/Zulu","Europe/Amsterdam","Europe/Andorra","Europe/Athens","Europe/Belfast","Europe/Belgrade","Europe/Berlin","Europe/Bratislava","Europe/Brussels","Europe/Bucharest","Europe/Budapest","Europe/Chisinau","Europe/Copenhagen","Europe/Dublin","Europe/Gibraltar","Europe/Helsinki","Europe/Istanbul","Europe/Kaliningrad","Europe/Kiev","Europe/Lisbon","Europe/Ljubljana","Europe/London","Europe/Luxembourg","Europe/Madrid","Europe/Malta","Europe/Minsk","Europe/Monaco","Europe/Moscow","Europe/Nicosia","Europe/Oslo","Europe/Paris","Europe/Prague","Europe/Riga","Europe/Rome","Europe/Samara","Europe/San_Marino","Europe/Sarajevo","Europe/Simferopol","Europe/Skopje","Europe/Sofia","Europe/Stockholm","Europe/Tallinn","Europe/Tirane","Europe/Tiraspol","Europe/Uzhgorod","Europe/Vaduz","Europe/Vatican","Europe/Vienna","Europe/Vilnius","Europe/Warsaw","Europe/Zagreb","Europe/Zaporozhye","Europe/Zurich","Indian/Antananarivo","Indian/Chagos","Indian/Christmas","Indian/Cocos","Indian/Comoro","Indian/Kerguelen","Indian/Mahe","Indian/Maldives","Indian/Mauritius","Indian/Mayotte","Indian/Reunion","Mexico/BajaNorte","Mexico/BajaSur","Mexico/General","Pacific/Apia","Pacific/Auckland","Pacific/Chatham","Pacific/Easter","Pacific/Efate","Pacific/Enderbury","Pacific/Fakaofo","Pacific/Fiji","Pacific/Funafuti","Pacific/Galapagos","Pacific/Gambier","Pacific/Guadalcanal","Pacific/Guam","Pacific/Honolulu","Pacific/Johnston","Pacific/Kiritimati","Pacific/Kosrae","Pacific/Kwajalein","Pacific/Majuro","Pacific/Marquesas","Pacific/Midway","Pacific/Nauru","Pacific/Niue","Pacific/Norfolk","Pacific/Noumea","Pacific/Pago_Pago","Pacific/Palau","Pacific/Pitcairn","Pacific/Ponape","Pacific/Port_Moresby","Pacific/Rarotonga","Pacific/Saipan","Pacific/Samoa","Pacific/Tahiti","Pacific/Tarawa","Pacific/Tongatapu","Pacific/Truk","Pacific/Wake","Pacific/Wallis","Pacific/Yap","SystemV/AST4","SystemV/AST4ADT","SystemV/CST6","SystemV/CST6CDT","SystemV/EST5","SystemV/EST5EDT","SystemV/HST10","SystemV/MST7","SystemV/MST7MDT","SystemV/PST8","SystemV/PST8PDT","SystemV/YST9","US/Alaska","US/Aleutian","US/Central","US/Eastern","US/Hawaii","US/Michigan","US/Mountain","US/Pacific","US/Samoa")]
        [string]$TimeZone,

        #Username of the Administrator.
        [string]$Username,

        #UTC offset of the Administrator.
        [string]$UTCOffset
    )

    process {
        If ($PSCmdlet.ParameterSetName -eq 'ById' ) {
            foreach ($adminId in $AdministratorId) {
                $Resource = "administrators/$adminId"

                [hashtable]$body = @{}
                switch ($PSBoundParameters.Keys) {
                    'Active' { $Body['active'] = $Active }
                    'Description' { $Body['description'] = $Description }
                    'EmailAddress' { $Body['emailAddress'] = $EmailAddress }
                    'fullName' { $Body['fullName'] = $fullName }
                    'locale' { $Body['locale'] = $locale }
                    'mfaType' { $Body['mfaType'] = $mfaType }
                    'mobileNumber' { $Body['mobileNumber'] = $mobileNumber }
                    'pagerNumber' { $Body['pagerNumber'] = $pagerNumber }
                    'password' { $Body['password'] = $password }
                    'passwordNeverExpires' { $Body['passwordNeverExpires'] = $passwordNeverExpires }
                    'phoneNumber' { $Body['phoneNumber'] = $phoneNumber }
                    'primaryContact' { $Body['primaryContact'] = $primaryContact }
                    'receiveNotifications' { $Body['receiveNotifications'] = $receiveNotifications }
                    'reportPDFPassword' { $Body['reportPDFPassword'] = $reportPDFPassword }
                    'reportPDFPasswordEnabled' { $Body['reportPDFPasswordEnabled'] = $reportPDFPasswordEnabled }
                    'roleID' { $Body['roleID'] = $roleID }
                    'timeFormat' { $Body['timeFormat'] = $timeFormat }
                    'timeZone' { $Body['timeZone'] = $timeZone }
                    'username' { $Body['username'] = $username }
                    'UTCOffset' { $Body['UTCOffset'] = $UTCOffset }
                }

                Write-Verbose "Resource is $Resource"
                $params = @{
                    'Resource'  = $Resource
                    'Method'    = "Post"
                    'Body'      = ($body | ConvertTo-Json)
                }

                Write-Verbose "Invoking API call"
                Invoke-TmdsApiCall @params
            }
        }
    }
}