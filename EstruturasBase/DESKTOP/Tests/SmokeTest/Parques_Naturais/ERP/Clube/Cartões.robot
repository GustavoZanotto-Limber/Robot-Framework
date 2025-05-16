*** Settings ***
Documentation    Smoke Test: Clube
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_clube

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Clube/Cartões/    

*** Keywords ***

Cartões
    Cadastros
    repetidor de teclas    right    4

*** Test Cases ***

Impressão
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Impressão
    Cartões 
    RPA.Windows.Click       Impressão
    RPA.Windows.Get Text    Impressão de Carteirinhas (1)
    RPA.Windows.Click       Adicionar
    BaseDesktop.Screenshot  Impressão de Carteirinhas (1)   ${Caminho_Screenshots}Impressão
    Fechar janela 

Entrega de Cartões
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Entrega de Cartões
    Cartões 
    RPA.Windows.Click       Entrega de Cartões
    RPA.Windows.Get Text    Controle de Entrega de Cartões (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Controle de Entrega de Cartões (1)   ${Caminho_Screenshots}Entrega de Cartões
    Fechar janela 
