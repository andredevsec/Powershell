<#

Redirecionadores

Operador -> Descrição
| -> Pipeline - Passa a saída para o comando subsequente para processamento
> -> Redireciona a saida para o aquivo especificado. Sobrescvreve o atual caso ja exista um.
>> -> Redireciona a saida para o arquivo especificado. Se o arquivo ja existe, o novo conteudo sera anexado ao conteudo atual
2> -> Redireciona a saida de erro para o arquivo especificado. Sobrescreve o coneudo se ja existe
2>> -> Redireciona a saida de erro para o arquivo especificado. Se ja existe sera anexado no atual
2>&1 -> Redireciona a saida de erro para a saida padrao

#>

# demosntração do redirecionadores |
Get-Process | more
Get-Process | format-list
#usando dois |
Get-Process | Format-List | more
# passando para um arquivo html
Get-Process | converTo-html | Out-File "proce.html"


# usando >
Get-Date > lista.txt
# para mostrar o coteudo do arquivo
type .lista.txt
# usando append
get-dat >> lista2.txt
dir c:\ >> lista2.txt

# redirecionamento de codigo de erro
deas 2> erro.log

# dando append
dsas 2>> erro2.log
dsad 2>> erro2.log

# utilizar out
dir c:\ | Out-File
# ou apresenta em gri
Get-Process | Out-GridView
# outdeffoult

<#
⦁	Out-Default - Envie a saída para o formatador padrão e o cmdlet de saída padrão.
⦁	Out-File - Envia a saída para um arquivo.
⦁	Out-GridView - Envia a saída para uma tabela interativa em uma janela separada
⦁	Out-Host - Envia a saída para a linha de comando.
⦁	Out-Null - Apaga saída, em vez de enviá-lo para o console.
⦁	Out-Printer - Envia a saída para uma impressora.
⦁	Out-String – Envia a saída pra um seria de string
#>

