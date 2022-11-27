function Get-TmdsSystemSetting {
    [CmdletBinding(DefaultParameterSetName = 'All')]
    [Alias('')]
    param (
        [parameter(ParameterSetName = 'All')]
        [switch]$All,

        [parameter(
            ParameterSetName = 'ByName', 
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true)]
        [Alias('Name')]
        [string[]]$SystemSettingName
    )
    process {
        If ($PSCmdlet.ParameterSetName -eq 'ByName') {
            foreach ($name in $SystemSettingName) {
                $Resource = "systemsettings/$name"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
        }   
        Else {
            $Resource = "systemsettings"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }
            Invoke-TmdsApiCall @params
        }
    }
}