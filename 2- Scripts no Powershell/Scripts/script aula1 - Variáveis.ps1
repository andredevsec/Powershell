<#
Variavel - objeto situado na memora que representa valor ou expressão
#>
$nome = "André Lima"
$idade = "32"
Write-Host "Nome $nome"
Write-Host "Idade $idade"

$var = Read-Host "Qual o seu nome?"
Write-Host "Olá $var"

$saudacao = "ola"
$frase = "$saudacao, $nome"
$frase

$frase.Length