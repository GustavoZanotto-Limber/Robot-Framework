*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteça erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Financeiro/Limite de Crédito/    
${nome_print}
${nome_exe}=    cde_win_fin
*** Keywords ***

Limite de Crédito
    Cadastros
    repetidor de teclas    right    7
    Sleep                  1s

*** Test Cases ***

Limite de Crédito
    ${nome_print}=     Set Variable     Limite de Crédito
    [Tags]     Financeiro    Limite de Crédito   SmokeTest
    Limite de Crédito
    RPA.Windows.Click         Limite de Crédito
    RPA.Windows.Get Text      Limite de Crédito (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito
    Fechar com Sim