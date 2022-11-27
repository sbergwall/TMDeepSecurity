function Get-TmdsPolicy {
    [CmdletBinding(DefaultParameterSetName = 'All')]
    param (
        # Parameter help description
        [Parameter(ParameterSetName = 'All')]
        [switch]$All,

        # Parameter help description
        [Parameter(ParameterSetName = 'ById', ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
        [int]$PolicyId,

        [Parameter(ParameterSetName = 'ById')]
        [string]$SettingName
    )
    
    process {
        If ($PSCmdlet.ParameterSetName -eq 'All') {

            $Resource = "policies"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }
        (Invoke-TmdsApiCall @params).policies
        }

        If ($PSCmdlet.ParameterSetName -eq 'ById') {
            foreach ($policy in $PolicyId) {
                $Resource = "policies/$policy"

                If ($SettingName) {
                    $Resource = $resource + "/settings/$SettingName"
                }

                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }

                Invoke-TmdsApiCall @params
            }
        }
    }
}