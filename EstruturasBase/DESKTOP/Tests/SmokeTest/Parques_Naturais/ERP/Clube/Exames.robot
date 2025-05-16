*** Settings ***
Documentation    Smoke Test: Clube
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_clube

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Clube/Exames/    

*** Keywords ***

Exames
    Cadastros
    repetidor de teclas    right    3

*** Test Cases ***

Validar Exames
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Validar Exames
    Exames 
    RPA.Windows.Click       Validar Exames
    RPA.Windows.Get Text    Validação de Exames (1)
    RPA.Windows.Click       Atualizar Exame
    BaseDesktop.Screenshot  Validação de Exames (1)   ${Caminho_Screenshots}Validar Exames
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar    

Encerrar
    Encerrar tudo