*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_fin


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Financeiro/Limite de Crédito/    

*** Keywords ***

Limite de Crédito
    Cadastros
    repetidor de teclas    right    6
    Sleep                  1s

*** Test Cases ***

Limite de Crédito
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Limite de Crédito
    Limite de Crédito
    RPA.Windows.Click         Limite de Crédito
    RPA.Windows.Get Text      Limite de Crédito (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito
    Fechar janela
    RPA.Windows.Click         Sim

Encerrar
    Encerrar tudo