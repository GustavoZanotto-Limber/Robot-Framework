*** Settings ***
Documentation    Smoke Test: Clube
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup         Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteça erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Clube/Exames/    
${nome_print}
${nome_exe}=    cde_win_clube

*** Keywords ***

Exames
    Cadastros
    repetidor de teclas    right    3

*** Test Cases ***

Validar Exames
    ${nome_print}=     Set Variable     Validar Exames
    [Tags]     Clube    Exames   SmokeTest
    Exames 
    RPA.Windows.Click       Validar Exames
    RPA.Windows.Get Text    Validação de Exames (1)
    RPA.Windows.Click       Atualizar Exame
    BaseDesktop.Screenshot  Validação de Exames (1)   ${Caminho_Screenshots}Validar Exames
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar