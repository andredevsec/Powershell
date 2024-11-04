<#
Expressões Regulares
É uma linguagem que busca padrões

\d Numerico [0-9]
\w Calpha numerico [a-z-A-Z-0-9_]
\s aractere de espaç~o em branco
. Qualquer caractere exceto nova lina
() Sub-Expression
\ Proximo Caractere

#>

$email = Read-Host Qual seu email ?
$regex = "^[a-z]+\.[a-z]+@contoso.com$"



If ($email –notmatch $regex) {
  Write-Host "Errou o endereço de email  $email" 
  Exit
  }

Write-Host Acertou !
