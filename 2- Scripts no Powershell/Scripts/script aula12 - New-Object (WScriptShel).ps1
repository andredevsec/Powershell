<#

New-Object (WScriptShel)
Abrir uma baixa de mensagem grafica, abrir o bloco de notas atraves do seus script
New-objetct permite trabalhar m todos componentes COM (Component Object Model). Eles variam desde bibiliotecas no WSH ate aplicativos ActiveX como internet Explorer etc
- New-Object -ComObject + WScript.Shell
- New-Object -ComObject + Wscript.Network
- New-Object -ComObject + Scripting.FileSystemObject
- New-Object -ComObject + Scripting.Directory

#>
#criando uma variaavel para receber o script shell
$wshell = New-Object -ComObject WScript.Shell

#vendo o que a variavel pode fazer
$wshell | Get-Member

#usando recursos graficos
$wshell.Popup("Esse curso e muito legal")

#abrindo notepad e inserindo teclas
$wshell.Run("Notepad")
$wshell.AppActivate("Notepad")
Start-Sleep 2
$wshell.SendKeys("Esse curso e muito legal")