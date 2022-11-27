function Remove-TmdsContact {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High')]
    param (
        [Parameter(Mandatory = $true)]
        [Int[]]$ContactId
    )

    process {
        foreach ($contact in $ContactId) {
            If ($PSCmdlet.ShouldProcess("Id $contact", "Remove Trend Micro Deep Security Contact")) {
                $Resource = "contacts/$contact"
                $params = @{
                    'Resource' = $Resource
                    'Method'   = "Delete"
                }
                Invoke-TmdsApiCall @params
            }
        }
    }
}