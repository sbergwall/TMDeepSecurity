function Get-TmdsAdministrator {
    [CmdletBinding(DefaultParameterSetName = 'All')]
    [Alias('Get-TmdsUser')]
    param (
        [parameter(ParameterSetName = 'All')]
        [switch]$All,

        [parameter(
            ParameterSetName = 'ById', 
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true)]
        [Alias('Id')]
        [int[]]$AdministratorId,

        [parameter(ParameterSetName = 'ByUsername')]
        [ArgumentCompleter({ Get-TmdsAdministrator -All | select-object -ExpandProperty username | where-object { $_.username -like "$WordToComplete*" } })]
        [string]$UserName
    )
    process {
        if ($PSCmdlet.ParameterSetName -eq 'All') {
            $resource = "administrators"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }
            (Invoke-TmdsApiCall @params).administrators
        }

        If ($PSCmdlet.ParameterSetName -eq 'ById') {
            foreach ($adminId in $AdministratorId) {
                $resource = "administrators/$adminId"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
        }

        If ($PSCmdlet.ParameterSetName -eq 'ByUsername') {
            $r = Get-TmdsAdministrator -All | Where-Object { $_.username -eq $UserName }
            If ($null -eq $r) {
                Write-Error "Object not found with username $UserName."
            } 
            else {
                $r
            }
        }
    }
}