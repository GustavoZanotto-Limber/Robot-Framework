*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_fin


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Financeiro/Cheques/    

*** Keywords ***

Cheques
    Cadastros
    repetidor de teclas    right    11

*** Test Cases ***

Cheques Emitidos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Cheques Emitidos
    Cheques
    RPA.Windows.Click         Cheques Emitidos
    RPA.Windows.Get Text      Manutenção de Cheques (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot    Manutenção de Cheques (1)    ${Caminho_Screenshots}Cheques Emitidos
    RPA.Windows.Click       Confirmar
    Fechar janela

Cheques de Terceiros
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Cheques de Terceiros
    Cheques
    RPA.Windows.Click         Cheques de Terceiros
    RPA.Windows.Get Text      Movimentação de Cheques de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Movimentação de Cheques de Terceiros (1)    ${Caminho_Screenshots}Cheques de Terceiros
    Fechar janela
    RPA.Windows.Click       Sim

Relatório de Cheque de Terceiros
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Relatório de Cheque de Terceiros
    Cheques
    RPA.Windows.Click         Relatório de Cheques de Terceiros
    RPA.Windows.Get Text      Relatório de Cheque de Terceiros (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot    Relatório de Cheque de Terceiros (1)    ${Caminho_Screenshots}Relatório de Cheque de Terceiros
    RPA.Windows.Click       Confirmar
    Fechar janela

Relatório de Cheques Emitidos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Relatório de Cheques Emitidos
    Cheques
    RPA.Windows.Click         Relatório de Cheques Emitidos
    RPA.Windows.Get Text      Relatório de Cheques (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot    Relatório de Cheques (1)    ${Caminho_Screenshots}Relatório de Cheques Emitidos
    RPA.Windows.Click       Confirmar
    Fechar janela

Relatórios de Cheques Cancelados/Excluídos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Relatórios de Cheques Cancelados_Excluídos
    Cheques
    RPA.Windows.Click         Relatório de Cheques Cancelados/Excluídos
    RPA.Windows.Get Text      Relatório de cheques cancelados (1)
    repetidor de teclas       Tab     2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot    Relatório de cheques cancelados (1)    ${Caminho_Screenshots}Relatórios de Cheques Cancelados_Excluídos
    RPA.Windows.Click       Confirmar
    Fechar janela

Layouts de Cheques para Emissão
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Layouts de Cheques para Emissão
    Cheques
    RPA.Windows.Click         Layouts de Cheques para Emissão
    RPA.Windows.Get Text      Configuração de Cheques (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Configuração de Cheques (1)    ${Caminho_Screenshots}Layouts de Cheques para Emissão
    Fechar janela
    RPA.Windows.Click       Sim

Imprimir Multiplos Cheques
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Imprimir Multiplos Cheques
    Cheques
    RPA.Windows.Click         Imprimir Multiplos Cheques
    RPA.Windows.Get Text      Imprimir Cheques (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Imprimir Cheques (1)    ${Caminho_Screenshots}Imprimir Multiplos Cheques
    Fechar janela

Encerrar
    Encerrar tudo