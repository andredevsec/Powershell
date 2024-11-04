<#
Job e Scheduled Jobs
Permite a execução de comandos em Background no Computador local ou remoto

- Start-job - inicia um trabalho
- Get-Job - exibe os trabalhos associados a atual sessão
- Wait-Job - Aguarda pelo trabalho ate que esteja pronto
- Receive-Job - Exibe o resultado de um trabalho em background
- Stop-job - Para um trabalho
- Remove-Job - Remove um trabalho

Scheduled Jobs permite voce agendar tarefas, e controladas atraves do agendador de tarfas do windows, trabalhando com trigger
#>

#Exemplo Job
Workflow workflow-demorado {
    while(1) {
    (get-date).ToString() + " | Script demorado"
    Start-Sleep -Seconds 2
    }
}

#Pazer o script demorado virar um job
$wfjb = workflow-demorado -AsJob
$wfjb

#Para saber se ele esta executando
Receive-Job $wfjb
#para suspender
Suspend-Job $wfjb -Force
#para parar
Stop-Job $wfjb
#para ver o resumo
Resume-Job $wfjb

