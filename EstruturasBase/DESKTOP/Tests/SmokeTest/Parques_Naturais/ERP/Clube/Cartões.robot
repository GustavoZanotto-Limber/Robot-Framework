*** Settings ***
Documentation    Smoke Test: Clube
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup         Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteça erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Clube/Cartões/    
${nome_print}
${nome_exe}=    cde_win_clube

*** Keywords ***

Cartões
    Cadastros
    repetidor de teclas    right    4

*** Test Cases ***

Impressão
    ${nome_print}=     Set Variable     Impressão
    [Tags]     Clube    Cartões   SmokeTest
    Cartões 
    RPA.Windows.Click       Impressão
    RPA.Windows.Get Text    Impressão de Carteirinhas (1)
    RPA.Windows.Click       Adicionar
    BaseDesktop.Screenshot  Impressão de Carteirinhas (1)   ${Caminho_Screenshots}Impressão
    Fechar janela 

Entrega de Cartões
    ${nome_print}=     Set Variable     Entrega de Cartões
    [Tags]     Clube    Cartões   SmokeTest
    Cartões 
    RPA.Windows.Click       Entrega de Cartões
    RPA.Windows.Get Text    Controle de Entrega de Cartões (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Controle de Entrega de Cartões (1)   ${Caminho_Screenshots}Entrega de Cartões
    Fechar janela