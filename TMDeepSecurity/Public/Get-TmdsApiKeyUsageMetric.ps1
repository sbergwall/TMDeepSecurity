function Get-TmdsApiKeyUsageMetric {
    param ()

    process {
        $Resource = "apiusagemetrics"
        $params = @{
            'Resource' = $Resource
            'Method'   = "Get"
        }
        (Invoke-TmdsApiCall @params).apiUsageMetrics
    }
}