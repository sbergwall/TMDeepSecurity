function Get-TmdsScript {
    [Alias('')]
    param ()
    process {
        $Resource = "scripts"
        $params = @{
            'Resource' = $Resource
            'Method'   = "Get"
        }
        
        (Invoke-TmdsApiCall @params).scripts
    }
}