<#
Arrays
#>

$GoogleDNS = @("8.8.8.8", "8.8.4.4")
$TotalDNS = $GoogleDNS.Count
Write-Host Pingando todos os $TotalDNS DNS do Google
#O Teste conection tambem é um ping
Test-Connection $GoogleDNS -Count 1
sleep 3
Write-Host Fim.
