<#
Workflows
Muito similar a funções, tambem funciona como se fosse um comando,
Quando usar?
Quando tiver que criar script de longa executaçãoe tiver que gerenciar os script,
- Interromper
- Suspender
- Reiniciar
- Repetir
- Execução paralela
#>

#workflow - Hello World
 workflow tipo-cmdlet {
    Write-Output "Hello World"
 }
 tipo-cmdlet

 #verificar os parametros e o que eles permite
 (Get-Command tipo-cmdlet).Parameters

 function iniciar-editor {
 Start-Process Notepad
 sleep 5
 Start-Process Wordpad
 }
 iniciar-editor

 #fazendo uma execução paralela
 workflow start-editor {
    Parallel {
    Start-Process Notepad
    sleep 5
    Start-Process Wordpad
    } 
}
start-editor