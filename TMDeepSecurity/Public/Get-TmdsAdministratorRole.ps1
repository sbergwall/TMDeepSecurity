function Get-TmdsAdministratorRole {
    [CmdletBinding(DefaultParameterSetName = 'All')]
    [Alias('Get-TmdsRole')]
    param (
        [parameter(ParameterSetName = 'All')]
        [switch]$All,

        [parameter(
            ParameterSetName = 'ById', 
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true)]
        [Alias('RoleId', 'Id')]
        [int[]]$AdministratorRoleId,


        [Parameter(ParameterSetName = 'ByName')]
        [ArgumentCompleter({ Get-TmdsAdministratorRole -All | select-object -ExpandProperty name | where-object {$_.Name -like "$WordToComplete*"}})]
        [string]$Name
    )

    process {
        If ($PSCmdlet.ParameterSetName -eq 'All') {
            $resource = "roles"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }

            (Invoke-TmdsApiCall @params).roles
        }

        If ($PSCmdlet.ParameterSetName -eq 'ById') {
            foreach ($roleId in $AdministratorRoleId) {
                $resource = "roles/$roleId"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
            
            Invoke-TmdsApiCall @params
            }
        }

        If ($PSCmdlet.ParameterSetName -eq 'ByName') {
            $r = Get-TmdsAdministratorRole -All | Where-Object { $_.Name -eq $Name }
            If ($null -eq $r) {
                Write-Error "Object not found with name $name."
            } 
            else {
                $r
            }
        }
    }
}