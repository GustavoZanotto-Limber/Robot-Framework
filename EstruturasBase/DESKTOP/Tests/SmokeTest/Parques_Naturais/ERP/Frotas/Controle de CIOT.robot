*** Settings ***
Documentation    Smoke Test: Frotas
Resource          C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_frotas

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Frotas/Controle de CIOT/    

*** Keywords ***

Controle de CIOT
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    6
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Lançamento de CIOT
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Lançamento de CIOT
    Controle de CIOT               Lançamento de CIOT
    RPA.Windows.Get Text    CIOT (1)  
    RPA.Windows.Click       Novo 
    BaseDesktop.Screenshot  CIOT (1)                               ${Caminho_Screenshots}Lançamento de CIOT
    Fechar Janela
    RPA.Windows.Click       Sim

Monitor de CIOT
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Monitor de CIOT
    Controle de CIOT               Monitor de CIOT
    RPA.Windows.Get Text    Monitor CIOT (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter  
    BaseDesktop.Screenshot  Monitor CIOT (1)                                 ${Caminho_Screenshots}Monitor de CIOT
    RPA.Windows.Click       Confirmar
    Fechar Janela

Encerrar
    Encerrar tudo