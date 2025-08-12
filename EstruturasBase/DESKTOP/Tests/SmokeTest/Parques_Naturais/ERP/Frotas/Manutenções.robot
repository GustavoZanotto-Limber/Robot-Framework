*** Settings ***
Documentation    Smoke Test: Frotas
Resource          ../../../../../Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Frotas/Manutenções/    
${nome_print}
${nome_exe}=    cde_win_frotas
*** Keywords ***

Manutenções
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    2
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Requisição contra Almoxarifado
    ${nome_print}=     Set Variable     Requisição contra Almoxarifado
    [Tags]    Frotas   Manutenções   SmokeTest
    Manutenções             Requisição contra Almoxarifado    
    RPA.Windows.Get Text    Requisição Contra Almoxarifado (1)
    RPA.Windows.Click       Novo
    RPA.Windows.Click       OK
    BaseDesktop.Screenshot  Requisição Contra Almoxarifado (1)    ${Caminho_Screenshots}Requisição contra Almoxarifado
    Fechar com Sim

Incluir/Alterar Entradas/Compras
    ${nome_print}=     Set Variable     Incluir_Alterar Entradas_Compras
    [Tags]    Frotas   Manutenções   SmokeTest
    Manutenções             Incluir/Alterar Entradas/Compras    
    RPA.Windows.Get Text    Entradas/Compras - Incluir/Alterar (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Entradas/Compras - Incluir/Alterar (1)    ${Caminho_Screenshots}Incluir_Alterar Entradas_Compras
    Fechar com Sim

Manutenção Manual de Pneus
    ${nome_print}=     Set Variable     Manutenção Manual de Pneus
    [Tags]    Frotas   Manutenções   SmokeTest
    Manutenções              Manutenção Manual de Pneus    
    RPA.Windows.Get Text    Consulta de Pneus (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Pneus (1)    ${Caminho_Screenshots}Manutenção Manual de Pneus
    RPA.Windows.Click       Fechar

Ordem de Serviço Interna
    ${nome_print}=     Set Variable     Ordem de Serviço Interna
    [Tags]    Frotas   Manutenções   SmokeTest
    Manutenções              Ordem de Serviço Interna    
    RPA.Windows.Get Text    Ordem de Serviço Interna (1)
    RPA.Windows.Click       Novo
    RPA.Windows.Click       OK
    BaseDesktop.Screenshot  Ordem de Serviço Interna (1)    ${Caminho_Screenshots}Ordem de Serviço Interna
    Fechar com Sim

Ordem de Serviço Externa
    ${nome_print}=     Set Variable     Ordem de Serviço Externa
    [Tags]    Frotas   Manutenções   SmokeTest
    Manutenções             Ordem de Serviço Externa    
    RPA.Windows.Get Text    Ordem de Serviço Externa
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Ordem de Serviço Externa          ${Caminho_Screenshots}Ordem de Serviço Externa
    Fechar com Sim