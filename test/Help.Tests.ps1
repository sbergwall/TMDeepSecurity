$ModuleName = 'TMDeepSecurity'

BeforeDiscovery {
    $ModuleName = 'TMDeepSecurity'
    $ModuleBase = Split-Path -Parent $PSScriptRoot
    $ModulePath = Join-Path $ModuleBase -ChildPath $ModuleName

    # Removes all versions of the module from the session before importing
    Get-Module $ModuleName | Remove-Module
    Import-Module $ModulePath -PassThru -ErrorAction Stop

    $commands = Get-Command -Module $ModuleName -CommandType Cmdlet, Function  # Not alias
}

Describe "$ModuleName" {

    $ModuleName = 'TMDeepSecurity'
    $commands = Get-Command -Module $ModuleName -CommandType Cmdlet, Function  # Not alias

    foreach ($command in $commands) {
        Context "$command" {

            $Help = @{ Help = Get-Help -Name $Command -Full | Select-Object -Property * }

            It "Has Synopsis and not have synopsis from PlatyPS" -TestCases $Help {
                $Help.Synopsis | Should -Not -BeNullOrEmpty
                $Help.Synopsis | should -Not -BeLike "*{{ Fill in the Synopsis }}*"
            }

            It "Has Description and not have description from PlatyPS" -TestCases $Help {
                $Help.Description | Should -Not -BeNullOrEmpty
                $Help.Description | should -Not -BeLike "*{{ Fill in the Description }}*"
            }

            It "Has Examples and not have examples from PlatyPS" -TestCases $Help {
                $help.Examples.Example | Should -Not -BeNullOrEmpty
                $Help.Examples.Example | should -Not -BeLike "*{{ Add example code here }}*"
            }
        }
    }
}
