<#
.Synopsis
	Build script (https://github.com/nightroman/Invoke-Build)
#>

task UpdateHelp {
    "Import Module $PSScriptRoot\TMDeepSecurity"
    Import-Module $PSScriptRoot\TMDeepSecurity -Force
    Update-MarkdownHelpModule -Path $PSScriptRoot\docs
    New-ExternalHelp -Path $PSScriptRoot\docs -OutputPath .\TMDeepSecurity\en-US -Force
}
