*** Settings ***
Documentation    Smoke Test: Compras
Resource         ../../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  cde_win_compras
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Compras/Gráficos/    
${nome_print}
${nome_exe}=    cde_win_compras

*** Keywords ***

Gráficos
    Cadastros
    repetidor de teclas    Right    5

*** Test Cases ***

Compras/Aquisição de Serviços - Evolução Diária
    ${nome_print}=     Set Variable     Compras_Aquisição de Serviços - Evolução Diária
    [Tags]   SmokeERP    Compras    Gráficos   SmokeTest
    Gráficos
    RPA.Windows.Click       Compras/Aquisição de Serviços - Evolução Diária
    RPA.Windows.Get Text    Compras/Aquisição de Serviços - Evolução Diária. (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Compras/Aquisição de Serviços - Evolução Diária. (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Evolução Diária
    RPA.Windows.Click       OK
    Fechar janela

Compras/Aquisição de Serviços - Evolução Mensal
    ${nome_print}=     Set Variable     Compras_Aquisição de Serviços - Evolução Mensal
    [Tags]   SmokeERP    Compras    Gráficos   SmokeTest
    Gráficos
    RPA.Windows.Click       Compras/Aquisição de Serviços - Evolução Mensal
    RPA.Windows.Get Text    Compras - Evolução Mensal. (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Compras - Evolução Mensal. (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Evolução Mensal
    RPA.Windows.Click       OK
    Fechar janela

Compras/Aquisição de Serviços - Evolução Anual
    ${nome_print}=     Set Variable     Compras_Aquisição de Serviços - Evolução Anual
    [Tags]   SmokeERP    Compras    Gráficos   SmokeTest
    Gráficos
    RPA.Windows.Click       Compras/Aquisição de Serviços - Evolução Anual
    RPA.Windows.Get Text    Compras - Evolução Anual. (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Compras - Evolução Anual. (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Evolução Anual
    RPA.Windows.Click       OK
    Fechar janela

Compras/Aquisição de Serviços - Sintético/Fornecedor
    ${nome_print}=     Set Variable     Compras_Aquisição de Serviços - Sintético_Fornecedor
    [Tags]   SmokeERP    Compras    Gráficos   SmokeTest
    Gráficos
    RPA.Windows.Click       Compras/Aquisição de Serviços - Sintético/Fornecedor
    RPA.Windows.Get Text    Compras/Aquisição de Serviços / Fornecedor. (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Compras/Aquisição de Serviços / Fornecedor. (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Sintético_Fornecedor
    Fechar janela

Compras/Aquisição de Serviços - Sintético/Setor
    ${nome_print}=     Set Variable     Compras_Aquisição de Serviços - Sintético_Setor
    [Tags]   SmokeERP    Compras    Gráficos   SmokeTest
    Gráficos
    RPA.Windows.Click       Compras/Aquisição de Serviços - Sintético/Setor
    RPA.Windows.Get Text    Compras - Aquisição de Serviços Sintético / Setor. (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Compras - Aquisição de Serviços Sintético / Setor. (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Sintético_Setor