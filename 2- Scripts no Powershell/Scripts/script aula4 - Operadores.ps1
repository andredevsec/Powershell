<#
Operadores Condicionais e Logicos
assim como em outras linguagens de programação
o powershell pode usar operadores logicos
A saida e sempre boleano, falso o verdadeiro
#>

Write-Host 4 é maior que tres ?
4 -gt 3
Write-Host usando -eq para ver todo serviços rodando
get-service | Where-Object {$_.Status -eq "Running" }
Write-Host usando replace subtituindo def po efg
"abcdef" -replace "def", "efg"
Write-Host usando operadores de atribuição
$a = 10
$a
$a ++
$a
