*** Settings ***
Documentation    Smoke Test: Corretagem
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_crt
Suite Teardown   Encerrar Tudo

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Corretagem/Consultas/    

*** Keywords ***

Consultas
    Cadastros 
    repetidor de teclas    right    2

*** Test Cases ***

Consultas Personalizadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                      Consultas Personalizadas
    Consultas
    RPA.Windows.Click         Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1)
    RPA.Windows.Click         Cadastrar Nova Consulta
    BaseDesktop.Screenshot    Consultas Personalizadas (1)      ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click         Fechar
    Fechar janela

Log de Alterações
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                      Log de Alterações
    Consultas
    RPA.Windows.Click         Log de Alterações
    RPA.Windows.Get Text      Consulta Log de Alterações (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta Log de Alterações (1)      ${Caminho_Screenshots}Log de Alterações
    Fechar janela


    