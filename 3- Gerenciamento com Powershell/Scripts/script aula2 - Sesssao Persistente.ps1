<#
Sessão Persistente
Permite criar e salvar uma sessao em um pc remoto, que pode desconectar e reconectar quando necessario, os scripts continua no computador remotod
#>

$session1 = New-PSSession -name nomecomputer

Invoke-Command -Session $session1 -ScriptBlock 
{
    $i = 0
    while($true) 
    {
        $i++
        Write-Host "Vou contar ate $i"
        Sleep 1
        if ($i -ge 1000) 
        {
            break
        }
    }
}
-AsJob -JobName LongoTrabalho

#Comandos
Get-Command *PSSEssion

#Desconectar da sessão
Disconnect-PSSession $session1

Get-Job -Name LongoTrabalho | Receive-Job -Keep
Get-Job -Name LongoTrabalho | Stop-Job -Keep

