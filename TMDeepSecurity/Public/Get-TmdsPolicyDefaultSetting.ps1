function Get-TmdsPolicyDefaultSetting {
    [CmdletBinding(DefaultParameterSetName = 'All')]
    param (
        # Parameter help description
        [Parameter(ParameterSetName = 'All')]
        [switch]$All,

        # Parameter help description
        [Parameter(ParameterSetName = 'BySettingName', ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
        [string]$SettingName
    )
    
    process {
        If ($PSCmdlet.ParameterSetName -eq 'All') {

            $Resource = "policies/default"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }
            Invoke-TmdsApiCall @params
        }

        If ($PSCmdlet.ParameterSetName -eq 'BySettingName') {
            foreach ($setting in $SettingName) {
                $Resource = "policies/default/settings/$setting"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
        }
    }
}