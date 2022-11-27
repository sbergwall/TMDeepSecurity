function Remove-TmdsAdministrator {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High')]
    [Alias('Remove-TmdsUser')]
    param (
        [parameter(
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            ParameterSetName = 'ById')]
        [Alias('Id')]
        [Int[]]$AdministratorId,
        
        [parameter(ParameterSetName = 'ByUsername')]
        [ArgumentCompleter({ Get-TmdsAdministrator -All | select-object -ExpandProperty UserName | where-object { $_.UserName -like "$WordToComplete*" } })]
        [string]$UserName
    )

    process {
        If ($PSCmdlet.ParameterSetName -eq 'ById') {
            foreach ($admin in $AdministratorId) {
                If ($PSCmdlet.ShouldProcess("Id $admin", "Remove Trend Micro Deep Security Administrator")) {
                    $Resource = "administrators/$admin"
                    $params = @{
                        'Resource' = $Resource
                        'Method'   = "Delete"
                    }
                    Invoke-TmdsApiCall @params 
                }
            }
        }
        If ($PSCmdlet.ParameterSetName -eq 'ByUsername') {
            $adminUserName = Get-TmdsAdministrator -all | Where-Object {$_.UserName -eq $UserName}
            If ($PSCmdlet.ShouldProcess("UserName $($adminUserName.UserName) with Administrator Id $($adminUserName.Id)", "Remove Trend Micro Deep Security Administrator")) {
                $Resource = "administrators/$($adminUserName.Id)"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Delete"
                }
                Invoke-TmdsApiCall @params 
            }
        }
    }
}