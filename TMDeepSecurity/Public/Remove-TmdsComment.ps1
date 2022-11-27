
function  Remove-TmdsComment {
    param (
        $Object
    )
    process {
        foreach ($Obj in $Object) {
            $obj | ForEach-Object {
                switch ($_) {
                    {$_ -notlike "#*" -and $_ -notlike "*#*"} {$_.trim()} # Trim the whitespace
                    {$_ -notlike "#*" -and $_ -like "*#*"} { $_.Substring(0, $_.IndexOf('#')).trim() } # If there is a comment after the exklusion we want to remove it. We also trim the whitespace.
                    Default {}
                }
            }
        }
    }
}
