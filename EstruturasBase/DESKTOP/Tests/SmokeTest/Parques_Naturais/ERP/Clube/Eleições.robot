*** Settings ***
Documentation    Smoke Test: Clube
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_clube

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Clube/Eleições/    

*** Keywords ***

Eleições
    Cadastros
    repetidor de teclas    right    5

*** Test Cases ***

Cadastro de Eleições
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Cadastro de Eleições
    Eleições 
    RPA.Windows.Click       Cadastro de Eleições
    RPA.Windows.Get Text    Cadastro de Eleições (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Eleições (1)   ${Caminho_Screenshots}Cadastro de Eleições
    Fechar janela
    RPA.Windows.Click       Sim 

Verificação/Votação de Eleitores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Verificação_Validação de Eleitores
    Eleições 
    RPA.Windows.Click       Verificação/Votação de Eleitores
    RPA.Windows.Get Text    Verificação de Eleitores (1)
    BaseDesktop.Screenshot  Verificação de Eleitores (1)   ${Caminho_Screenshots}Verificação_Validação de Eleitores
    RPA.Windows.Click       Fechar 

Relação de Sócios que votaram
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Relação de Sócios que votaram
    Eleições 
    RPA.Windows.Click       Relação de Sócios que votaram
    RPA.Windows.Get Text    Relação de Sócios que votaram (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relação de Sócios que votaram (1)   ${Caminho_Screenshots}Relação de Sócios que votaram
    RPA.Windows.Click       Confirmar
    RPA.Windows.Click       Fechar 
