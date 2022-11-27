function Remove-TmdsAdministratorRole {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High')]
    [Alias('Remove-TmdsRole')]
    param (
        [parameter(
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            ParameterSetName = 'ById')]
        [Alias('Id', 'RoleId')]
        [Int[]]$AdministratorRoleId,

        [parameter(ParameterSetName = 'ByName')]
        [ArgumentCompleter({ Get-TmdsAdministratorRole -All | select-object -ExpandProperty name | where-object { $_.name -like "$WordToComplete*" } })]
        [string]$Name
    )

    process {
        If ($PSCmdlet.ParameterSetName -eq 'ById') {
            foreach ($id in $AdministratorRoleId) {
                If ($PSCmdlet.ShouldProcess("Id $id", "Remove Trend Micro Deep Security Administrator")) {
                    $Resource = "roles/$id"
                    $params = @{
                        'Resource' = $Resource
                        'Method'   = "Delete"
                    }
                    Invoke-TmdsApiCall @params
                }
            }
        }
        If ($PSCmdlet.ParameterSetName -eq 'ByName') {
            $roleName = Get-TmdsAdministratorRole -All | Where-Object {$_.Name -eq $Name}
            If ($PSCmdlet.ShouldProcess("Name $($roleName.Name) with Id $($roleName.Id)", "Remove Trend Micro Deep Security Administrator Role")) {
                $Resource = "roles/$($roleName.Id)"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Delete"
                }
                Invoke-TmdsApiCall @params
            }
        }
    }
}