function Get-TmdsContact {
    [CmdletBinding(DefaultParameterSetName = 'All')]
    param (
        # Parameter help description
        [Parameter(ParameterSetName = 'All')]
        [switch]$All,

        # Parameter help description
        [Parameter(ParameterSetName = 'ById', ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
        [int]$ContactId

    )

    process {
        If ($PSCmdlet.ParameterSetName -eq 'All') {
            $Resource = "contacts"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }
            (Invoke-TmdsApiCall @params).contacts
        }

        If ($PSCmdlet.ParameterSetName -eq 'ById') {
            foreach ($contact in $ContactId) {
                $Resource = "contacts/$contact"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
        }
    }
}