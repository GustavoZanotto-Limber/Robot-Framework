*** Settings ***
Documentation    Smoke Test: Frotas
Resource          ../../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Frotas/Manutenções/    
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
    [Tags]   SmokeERP   Frotas   Manutenções   SmokeTest
    Manutenções             Requisição contra Almoxarifado    
    RPA.Windows.Get Text    Requisição Contra Almoxarifado (1)
    RPA.Windows.Click       Novo
    RPA.Windows.Click       OK
    BaseKeywordsDesktop.Screenshot  Requisição Contra Almoxarifado (1)    ${Caminho_Screenshots}Requisição contra Almoxarifado
    Fechar com Sim

Incluir/Alterar Entradas/Compras
    ${nome_print}=     Set Variable     Incluir_Alterar Entradas_Compras
    [Tags]   SmokeERP   Frotas   Manutenções   SmokeTest    
    Manutenções             Incluir/Alterar Entradas/Compras    
    RPA.Windows.Get Text    Entradas/Compras - Incluir/Alterar (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Entradas/Compras - Incluir/Alterar (1)    ${Caminho_Screenshots}Incluir_Alterar Entradas_Compras
    Fechar com Sim

Manutenção Manual de Pneus
    ${nome_print}=     Set Variable     Manutenção Manual de Pneus
    [Tags]   SmokeERP   Frotas   Manutenções   SmokeTest
    Manutenções              Manutenção Manual de Pneus    
    RPA.Windows.Get Text    Consulta de Pneus (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta de Pneus (1)    ${Caminho_Screenshots}Manutenção Manual de Pneus
    RPA.Windows.Click       Fechar

Ordem de Serviço Interna
    ${nome_print}=     Set Variable     Ordem de Serviço Interna
    [Tags]   SmokeERP   Frotas   Manutenções   SmokeTest
    Manutenções              Ordem de Serviço Interna    
    RPA.Windows.Get Text    Ordem de Serviço Interna (1)
    RPA.Windows.Click       Novo
    RPA.Windows.Click       OK
    BaseKeywordsDesktop.Screenshot  Ordem de Serviço Interna (1)    ${Caminho_Screenshots}Ordem de Serviço Interna
    Fechar com Sim

Ordem de Serviço Externa
    ${nome_print}=     Set Variable     Ordem de Serviço Externa
    [Tags]   SmokeERP   Frotas   Manutenções   SmokeTest
    Manutenções             Ordem de Serviço Externa    
    RPA.Windows.Get Text    Ordem de Serviço Externa
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Ordem de Serviço Externa          ${Caminho_Screenshots}Ordem de Serviço Externa
    Fechar com Sim