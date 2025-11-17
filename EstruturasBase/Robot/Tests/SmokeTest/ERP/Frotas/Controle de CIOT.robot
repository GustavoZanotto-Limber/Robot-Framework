*** Settings ***
Documentation    Smoke Test: Frotas
Resource          ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/SmokeTest/Bilheteria/ERP/Frotas/Controle de CIOT/    
${nome_print}
${nome_exe}=    cde_win_frotas
*** Keywords ***

Controle de CIOT
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    7
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Lançamento de CIOT (CONFIGURAÇÂO)
    ${nome_print}=     Set Variable     Lançamento de CIOT
    [Tags]   SmokeERP   Frotas   Controle de CIOT   SmokeTest
    Controle de CIOT               Lançamento de CIOT
    RPA.Windows.Get Text    CIOT (1)  
    RPA.Windows.Click       Novo 
    BaseKeywordsDesktop.Screenshot  CIOT (1)                               ${Caminho_Screenshots}Lançamento de CIOT
    Fechar com Sim

Monitor de CIOT (CONFIGURAÇÂO)
    ${nome_print}=     Set Variable     Monitor de CIOT
    [Tags]   SmokeERP   Frotas   Controle de CIOT   SmokeTest
    Controle de CIOT               Monitor de CIOT
    RPA.Windows.Get Text    Monitor CIOT (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter  
    BaseKeywordsDesktop.Screenshot  Monitor CIOT (1)                                 ${Caminho_Screenshots}Monitor de CIOT
    RPA.Windows.Click       Confirmar
    Fechar Janela