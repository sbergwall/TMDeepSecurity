function Set-TmdsApiKey {
    [CmdletBinding()]
    param (
        # Id of Api Key
        [int]$ApiKeyId,

        #If true, the APIKey can be used to authenticate. If false, the APIKey is locked out.
        [boolean]$Active,

        # Timestamp of the APIKey's creation, in milliseconds since epoch.
        [int64]$Created,

        # Description of the APIKey. Searchable as String.
        [string]$Description,	

        # Timestamp of the APIKey's expiry date, in milliseconds since epoch.
        [int64]$ExpiryDate,

        # Display name of the APIKey.
        [string]$KeyName,	

        # Timestamp of the APIKey's last successful authentication, in milliseconds since epoch.
        [int64]$LastSignIn,	

        # Country and language for the APIKey.
        [string]$Locale,	

        # ID of the role assigned to the APIKey.
        [parameter(ParameterSetName = 'ByRoleId')]
        [int]$RoleID,

        [parameter(ParameterSetName = 'ByRoleName')]
        [ArgumentCompleter({Get-TmdsAdministratorRole -All | select-object -ExpandProperty name | where-object { $_.name -like "$WordToComplete*" } })]
        [string]$RoleName,

        # Display name of the APIKey's time zone, e.g. America/New_York.
        [Validateset("Africa/Abidjan","Africa/Accra","Africa/Addis_Ababa","Africa/Algiers","Africa/Asmera","Africa/Bamako","Africa/Bangui","Africa/Banjul","Africa/Bissau","Africa/Blantyre","Africa/Brazzaville","Africa/Bujumbura","Africa/Cairo","Africa/Casablanca","Africa/Ceuta","Africa/Conakry","Africa/Dakar","Africa/Dar_es_Salaam","Africa/Djibouti","Africa/Douala","Africa/El_Aaiun","Africa/Freetown","Africa/Gaborone","Africa/Harare","Africa/Johannesburg","Africa/Kampala","Africa/Khartoum","Africa/Kigali","Africa/Kinshasa","Africa/Lagos","Africa/Libreville","Africa/Lome","Africa/Luanda","Africa/Lubumbashi","Africa/Lusaka","Africa/Malabo","Africa/Maputo","Africa/Maseru","Africa/Mbabane","Africa/Mogadishu","Africa/Monrovia","Africa/Nairobi","Africa/Ndjamena","Africa/Niamey","Africa/Nouakchott","Africa/Ouagadougou","Africa/Sao_Tome","Africa/Timbuktu","Africa/Tripoli","Africa/Tunis","Africa/Windhoek","America/Adak","America/Anchorage","America/Anguilla","America/Antigua","America/Araguaina","America/Aruba","America/Asuncion","America/Atka","America/Barbados","America/Belem","America/Belize","America/Boa_Vista","America/Bogota","America/Boise","America/Buenos_Aires","America/Cambridge_Bay","America/Cancun","America/Caracas","America/Catamarca","America/Cayenne","America/Cayman","America/Chicago","America/Chihuahua","America/Cordoba","America/Costa_Rica","America/Cuiaba","America/Curacao","America/Danmarkshavn","America/Dawson","America/Dawson_Creek","America/Denver","America/Detroit","America/Dominica","America/Edmonton","America/Eirunepe","America/El_Salvador","America/Ensenada","America/Fort_Wayne","America/Fortaleza","America/Glace_Bay","America/Godthab","America/Goose_Bay","America/Grand_Turk","America/Grenada","America/Guadeloupe","America/Guatemala","America/Guayaquil","America/Guyana","America/Halifax","America/Havana","America/Hermosillo","America/Indianapolis","America/Inuvik","America/Iqaluit","America/Jamaica","America/Jujuy","America/Juneau","America/Knox_IN","America/La_Paz","America/Lima","America/Los_Angeles","America/Louisville","America/Maceio","America/Managua","America/Manaus","America/Martinique","America/Mazatlan","America/Mendoza","America/Menominee","America/Merida","America/Mexico_City","America/Miquelon","America/Monterrey","America/Montevideo","America/Montreal","America/Montserrat","America/Nassau","America/New_York","America/Nipigon","America/Nome","America/Noronha","America/Panama","America/Pangnirtung","America/Paramaribo","America/Phoenix","America/Port_of_Spain","America/Porto_Acre","America/Porto_Velho","America/Puerto_Rico","America/Rainy_River","America/Rankin_Inlet","America/Recife","America/Regina","America/Rio_Branco","America/Rosario","America/Santiago","America/Santo_Domingo","America/Sao_Paulo","America/Scoresbysund","America/Shiprock","America/St_Johns","America/St_Kitts","America/St_Lucia","America/St_Thomas","America/St_Vincent","America/Swift_Current","America/Tegucigalpa","America/Thule","America/Thunder_Bay","America/Tortola","America/Vancouver","America/Virgin","America/Whitehorse","America/Winnipeg","America/Yakutat","America/Yellowknife","Antarctica/Casey","Antarctica/Davis","Antarctica/DumontDUrville","Antarctica/Mawson","Antarctica/McMurdo","Antarctica/Palmer","Antarctica/Rothera","Antarctica/South_Pole","Antarctica/Syowa","Antarctica/Vostok","Arctic/Longyearbyen","Asia/Aden","Asia/Almaty","Asia/Amman","Asia/Anadyr","Asia/Aqtau","Asia/Aqtobe","Asia/Ashgabat","Asia/Ashkhabad","Asia/Baghdad","Asia/Bahrain","Asia/Baku","Asia/Bangkok","Asia/Beirut","Asia/Bishkek","Asia/Brunei","Asia/Calcutta","Asia/Choibalsan","Asia/Chongqing","Asia/Chungking","Asia/Colombo","Asia/Dacca","Asia/Damascus","Asia/Dhaka","Asia/Dili","Asia/Dubai","Asia/Dushanbe","Asia/Gaza","Asia/Harbin","Asia/Hong_Kong","Asia/Hovd","Asia/Irkutsk","Asia/Istanbul","Asia/Jakarta","Asia/Jayapura","Asia/Jerusalem","Asia/Kabul","Asia/Kamchatka","Asia/Karachi","Asia/Kashgar","Asia/Katmandu","Asia/Krasnoyarsk","Asia/Kuala_Lumpur","Asia/Kuching","Asia/Kuwait","Asia/Macao","Asia/Macau","Asia/Magadan","Asia/Makassar","Asia/Manila","Asia/Muscat","Asia/Nicosia","Asia/Novosibirsk","Asia/Omsk","Asia/Oral","Asia/Phnom_Penh","Asia/Pontianak","Asia/Pyongyang","Asia/Qatar","Asia/Qyzylorda","Asia/Rangoon","Asia/Riyadh","Asia/Saigon","Asia/Sakhalin","Asia/Samarkand","Asia/Seoul","Asia/Shanghai","Asia/Singapore","Asia/Taipei","Asia/Tashkent","Asia/Tbilisi","Asia/Tehran","Asia/Tel_Aviv","Asia/Thimbu","Asia/Thimphu","Asia/Tokyo","Asia/Ujung_Pandang","Asia/Ulaanbaatar","Asia/Ulan_Bator","Asia/Urumqi","Asia/Vientiane","Asia/Vladivostok","Asia/Yakutsk","Asia/Yekaterinburg","Asia/Yerevan","Atlantic/Azores","Atlantic/Bermuda","Atlantic/Canary","Atlantic/Cape_Verde","Atlantic/Faeroe","Atlantic/Jan_Mayen","Atlantic/Madeira","Atlantic/Reykjavik","Atlantic/South_Georgia","Atlantic/St_Helena","Atlantic/Stanley","Australia/ACT","Australia/Adelaide","Australia/Brisbane","Australia/Broken_Hill","Australia/Canberra","Australia/Darwin","Australia/Hobart","Australia/LHI","Australia/Lindeman","Australia/Lord_Howe","Australia/Melbourne","Australia/North","Australia/NSW","Australia/Perth","Australia/Queensland","Australia/South","Australia/Sydney","Australia/Tasmania","Australia/Victoria","Australia/West","Australia/Yancowinna","Brazil/Acre","Brazil/DeNoronha","Brazil/East","Brazil/West","Canada/Atlantic","Canada/Central","Canada/Eastern","Canada/Mountain","Canada/Newfoundland","Canada/Pacific","Canada/Saskatchewan","Canada/Yukon","Chile/Continental","Chile/EasterIsland","Etc/GMT","Etc/GMT0","Etc/Greenwich","Etc/UCT","Etc/Universal","Etc/UTC","Etc/Zulu","Europe/Amsterdam","Europe/Andorra","Europe/Athens","Europe/Belfast","Europe/Belgrade","Europe/Berlin","Europe/Bratislava","Europe/Brussels","Europe/Bucharest","Europe/Budapest","Europe/Chisinau","Europe/Copenhagen","Europe/Dublin","Europe/Gibraltar","Europe/Helsinki","Europe/Istanbul","Europe/Kaliningrad","Europe/Kiev","Europe/Lisbon","Europe/Ljubljana","Europe/London","Europe/Luxembourg","Europe/Madrid","Europe/Malta","Europe/Minsk","Europe/Monaco","Europe/Moscow","Europe/Nicosia","Europe/Oslo","Europe/Paris","Europe/Prague","Europe/Riga","Europe/Rome","Europe/Samara","Europe/San_Marino","Europe/Sarajevo","Europe/Simferopol","Europe/Skopje","Europe/Sofia","Europe/Stockholm","Europe/Tallinn","Europe/Tirane","Europe/Tiraspol","Europe/Uzhgorod","Europe/Vaduz","Europe/Vatican","Europe/Vienna","Europe/Vilnius","Europe/Warsaw","Europe/Zagreb","Europe/Zaporozhye","Europe/Zurich","Indian/Antananarivo","Indian/Chagos","Indian/Christmas","Indian/Cocos","Indian/Comoro","Indian/Kerguelen","Indian/Mahe","Indian/Maldives","Indian/Mauritius","Indian/Mayotte","Indian/Reunion","Mexico/BajaNorte","Mexico/BajaSur","Mexico/General","Pacific/Apia","Pacific/Auckland","Pacific/Chatham","Pacific/Easter","Pacific/Efate","Pacific/Enderbury","Pacific/Fakaofo","Pacific/Fiji","Pacific/Funafuti","Pacific/Galapagos","Pacific/Gambier","Pacific/Guadalcanal","Pacific/Guam","Pacific/Honolulu","Pacific/Johnston","Pacific/Kiritimati","Pacific/Kosrae","Pacific/Kwajalein","Pacific/Majuro","Pacific/Marquesas","Pacific/Midway","Pacific/Nauru","Pacific/Niue","Pacific/Norfolk","Pacific/Noumea","Pacific/Pago_Pago","Pacific/Palau","Pacific/Pitcairn","Pacific/Ponape","Pacific/Port_Moresby","Pacific/Rarotonga","Pacific/Saipan","Pacific/Samoa","Pacific/Tahiti","Pacific/Tarawa","Pacific/Tongatapu","Pacific/Truk","Pacific/Wake","Pacific/Wallis","Pacific/Yap","SystemV/AST4","SystemV/AST4ADT","SystemV/CST6","SystemV/CST6CDT","SystemV/EST5","SystemV/EST5EDT","SystemV/HST10","SystemV/MST7","SystemV/MST7MDT","SystemV/PST8","SystemV/PST8PDT","SystemV/YST9","US/Alaska","US/Aleutian","US/Central","US/Eastern","US/Hawaii","US/Michigan","US/Mountain","US/Pacific","US/Samoa")]
        [string]$TimeZone,	

        # Timestamp of when a locked out APIKey will be unlocked, in milliseconds since epoch.
        [int64]$UnlockTime,	

        # Number of unsuccessful authentication attempts made since the last successful authentication.
        [int]$UnsuccessfulSignInAttempts
    )

    process {

        $Resource = "apikeys/$ApiKeyId"

        [hashtable]$body = @{}
        switch ($PSBoundParameters.Keys) {
            'active' {$body['active'] = $active}
            'created' {$body['created'] = $created}
            'description' {$body['description'] = $description}
            'expiryDate' {$body['expiryDate'] = $expiryDate}
            'keyName' {$body['keyName'] = $keyName}
            'lastSignIn' {$body['lastSignIn'] = $lastSignIn}
            'locale' {$body['locale'] = $locale}
            'timeZone' {$body['timeZone'] = $timeZone}
            'unlockTime' {$body['unlockTime'] = $unlockTime}
            'unsuccessfulSignInAttempts' {$body['unsuccessfulSignInAttempts'] = $unsuccessfulSignInAttempts}
        }

        If ($PSCmdlet.ParameterSetName -eq 'ByRoleId') {$body['roleID'] = $RoleID}
        If ($PSCmdlet.ParameterSetName -eq 'ByRoleName') {$body['roleID'] = Get-TmdsAdministratorRole -Name $RoleName | Select-Object -ExpandProperty Id}


        $params = @{
            'Resource'  = $Resource
            'Method'    = "Post"
            'Body'      = ($body | ConvertTo-Json)
        }

        Write-Verbose "Invoking API call"
        Invoke-TmdsApiCall @params
    }
}