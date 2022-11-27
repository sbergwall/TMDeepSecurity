function Get-TmdsScheduledTask {
    [CmdletBinding(DefaultParameterSetName = 'All')]
    [Alias('')]
    param (
        [parameter(ParameterSetName = 'All')]
        [switch]$All,

        [parameter(
            ParameterSetName = 'ById', 
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true)]
        [Alias('Id')]
        [int[]]$ScheduledTaskId
    )
    process {
        If ($PSCmdlet.ParameterSetName -eq 'ById') {
            foreach ($id in $ScheduledTaskId) {
                $Resource = "scheduledtasks/$id"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
        }   
        Else {
            $Resource = "scheduledtasks"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }
            (Invoke-TmdsApiCall @params).scheduledtasks
        }
    }
}