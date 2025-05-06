*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_fin


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Financeiro/Orçamento/    

*** Keywords ***

Orçamentos
    Cadastros
    repetidor de teclas    right    9

*** Test Cases ***

Liberação Orçamentária
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Liberação Orçamentária
    Orçamentos
    RPA.Windows.Click         Liberação Orçamentária
    RPA.Windows.Get Text      Liberação Orçamentária (1)
    BaseDesktop.Screenshot    Liberação Orçamentária (1)    ${Caminho_Screenshots}Liberação Orçamentária
    Fechar janela

Previsão Orçamentária
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Previsão Orçamentária
    Orçamentos
    RPA.Windows.Click         Previsão Orçamentária
    RPA.Windows.Get Text      Previsão Orçamentária (1)
    BaseDesktop.Screenshot    Previsão Orçamentária (1)    ${Caminho_Screenshots}Previsão Orçamentária
    Fechar janela

Transferência de Orçamentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Transferência de Orçamentos
    Orçamentos
    RPA.Windows.Click         Transferência de Orçamentos
    RPA.Windows.Get Text      Transferência de Orçamentos (1)
    BaseDesktop.Screenshot    Transferência de Orçamentos (1)    ${Caminho_Screenshots}Transferência de Orçamentos
    Fechar janela

Consultas > Previsão X Realizado
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Consultas/                        ERRO Previsão X Realizado
    Orçamentos
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Consulta de Acompanhamento Previsto X Realizado (1)
    BaseDesktop.Screenshot    Consulta de Acompanhamento Previsto X Realizado (1)    ${Caminho_Screenshots}Consultas/Previsão X Realizado
    Fechar janela

Consultas > Previsão X Realizado 2
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Previsão X Realizado 2
    Orçamentos
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Consulta Previsto X Realizado (1)
    BaseDesktop.Screenshot    Consulta Previsto X Realizado (1)    ${Caminho_Screenshots}Previsão X Realizado 2
    Fechar janela

Encerrar
    Encerrar tudo