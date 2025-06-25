*** Settings ***
Documentation    Smoke Test: Clube
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup         Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteça erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Clube/Eleições/    
${nome_print}
${nome_exe}=    cde_win_clube

*** Test Cases ***

Cadastro de Eleições
    ${nome_print}=     Set Variable     Cadastro de Eleições
    [Tags]     Clube    Eleições   SmokeTest
    Eleições 
    RPA.Windows.Click       Cadastro de Eleições
    RPA.Windows.Get Text    Cadastro de Eleições (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Eleições (1)   ${Caminho_Screenshots}Cadastro de Eleições
    Fechar com Sim 

Verificação/Votação de Eleitores
    ${nome_print}=     Set Variable     Verificação_Votação de Eleitores
    [Tags]     Clube    Eleições   SmokeTest
    Eleições 
    RPA.Windows.Click       Verificação/Votação de Eleitores
    RPA.Windows.Get Text    Verificação de Eleitores (1)
    BaseDesktop.Screenshot  Verificação de Eleitores (1)   ${Caminho_Screenshots}Verificação_Validação de Eleitores
    RPA.Windows.Click       Fechar 

Relação de Sócios que votaram
    ${nome_print}=     Set Variable     Relação de Sócios que votaram
    [Tags]     Clube    Eleições   SmokeTest
    Eleições 
    RPA.Windows.Click       Relação de Sócios que votaram
    RPA.Windows.Get Text    Relação de Sócios que votaram (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relação de Sócios que votaram (1)   ${Caminho_Screenshots}Relação de Sócios que votaram
    RPA.Windows.Click       Confirmar
    RPA.Windows.Click       Fechar