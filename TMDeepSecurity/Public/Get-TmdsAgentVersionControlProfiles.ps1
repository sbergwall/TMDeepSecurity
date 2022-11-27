function Get-TmdsAgentVersionControlProfiles {
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
        [int]$AgentVersionControlProfilesId
    )
    process {
        If ($PSCmdlet.ParameterSetName -eq 'ById') {
            $Resource = "agentversioncontrolprofiles/$AgentVersionControlProfilesId"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }
            Invoke-TmdsApiCall @params
        }
        Else {
            $Resource = "agentversioncontrolprofiles"
            $params = @{
                'Resource' = $Resource
                'Method'   = "Get"
            }
            (Invoke-TmdsApiCall @params).agentVersionControlProfiles
        }
    }
}