function Get-TmdsComputer {
    [CmdletBinding(DefaultParameterSetName = 'All')]
    param (
        [parameter(ParameterSetName = 'All')]
        [switch]$All,

        [parameter(ParameterSetName = 'ById', ValueFromPipeline = $true)]
        [Alias('Id')]
        [int[]]$ComputerId,

        [ValidateSet("none", "all", "computerStatus", "tasks", "securityUpdates", "computerSettings", "allSecurityModules", "antiMalware", "webReputation", "activityMonitoring", "firewall", "intrusionPrevention", "integrityMonitoring", "logInspection", "applicationControl", "SAP", "interfaces", "ESXSummary", "allVirtualMachineSummaries", "azureARMVirtualMachineSummary", "azureVMVirtualMachineSummary", "ec2VirtualMachineSummary", "noConnectorVirtualMachineSummary", "vmwareVMVirtualMachineSummary", "vcloudVMVirtualMachineSummary", "workspaceVirtualMachineSummary", "gcpVirtualMachineSummary")]
        [string[]]$PropertySet = "none",

        [parameter(ParameterSetName = 'ByHostName' )]
        [ArgumentCompleter({Get-TmdsComputer -All -PropertySet none  | select-object -ExpandProperty hostName | where-object { $_.hostName -like "$WordToComplete*" } })]
        [string]$HostName

    )
    process {
        If ($PSCmdlet.ParameterSetName -eq 'ById') {
            foreach ($computer in $ComputerId) {
                $Resource = "computers/$($computer)?expand=$PropertySet"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Get"
                }
                Invoke-TmdsApiCall @params
            }
        }
        elseif ($PSCmdlet.ParameterSetName -eq 'ByHostName') {
            Get-TmdsComputer -All -PropertySet $PropertySet | where-object { $_.hostName -eq "$HostName" } 
        }
        Else {
            $Resource = "computers?expand=$PropertySet"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }
            (Invoke-TmdsApiCall @params).computers
        }
    }
}