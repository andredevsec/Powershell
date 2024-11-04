<#
Como executar o powershell remotamente?
O powershel e a melhor ferramenta para adm remota, voce pede criar um script e executar em 10 servidroes diferentes, por exemplo
Habilitando o gerenciamento Remoto
Remoting PowerShell é contrido sobre o WinRm (Windows remote management) para fornecer acesso remoto a maquinas
O que pode da errado no gereciamento remoto
Comunicação tcp ip
Ter certeza que tem o firewall e esta habilitado, ao habilitar o powershell remoto ele cria a regra de firewall automaticamente
Em muitos casos desabilita o firwall interno do wondows firwall
As maquinas tem qeu fazer parte de um dominio de um AD (Active Directory)
Maquinas StandAlone (fora do dominio) so podem acessar se o ip dessa maquina estiver liberado dentro do servidor AD para acessa-lo

O powershell suporta sessoas persistentes ou resilientes, executadas remotamente.
Voce pode executar script atraves de uma sessão remota, resoliente ou persistente

- Invoke-command
Esse comando executa uma sessão, executa o comando, e finaliza a sessão

• Podemos nos conectar usando:
- CLI
- PowerShell ISE
- Server Manager do Windows Server

#>
#Habilitr o acesso remoto pelo powershell
Enable-PSRemoting

#Ver os hotfix instalados
Get-HotFix

Get-HotFix <ID>

#pesquisando um hotfixem outro computador
Invoke-Command -ComputerName <nomecomputador> -ScriptBlock {Get-HotFix -i <idhotfix>}

#abrindo uma sessao em um computador remoto
Enter-PSSession <nomecomputador>