function Remove-TmdsComputer {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High')]
    param (
        [parameter(
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            ParameterSetName = 'ById')]
        [Alias('Id')]
        [Int[]]$ComputerId,

        [parameter(ParameterSetName = 'ByHostName')]
        [ArgumentCompleter({ Get-TmdsComputer -All -PropertySet none | select-object -ExpandProperty hostName | where-object { $_.hostName -like "$WordToComplete*" } })]
        [string]$HostName
    )
    process {
        If ($PSCmdlet.ParameterSetName -eq 'ById') {
            foreach ($computer in $ComputerId) {
                If ($PSCmdlet.ShouldProcess("Id $computer", "Remove Trend Micro Deep Security Computer")) {
                    $Resource = "computers/$computer"
                    $params = @{
                        'Resource' = $Resource
                        'Method'   = "Delete"
                    }
                    Invoke-TmdsApiCall @params
                }
            }
        }

        If ($PSCmdlet.ParameterSetName -eq 'ByHostName') {
            $TmdsHost = Get-TmdsComputer -All -PropertySet none | where-object { $_.hostName -eq $HostName }
            If ($PSCmdlet.ShouldProcess("HostName $($TmdsHost.HostName) with Computer Id $($TmdsHost.Id)", "Remove Trend Micro Deep Security Computer")) {
                $Resource = "computers/$($TmdsHost.Id)"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Delete"
                }
                Invoke-TmdsApiCall @params
            }
        }
    }    
}