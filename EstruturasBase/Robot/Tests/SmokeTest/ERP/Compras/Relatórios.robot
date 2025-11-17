*** Settings ***
Documentation    Smoke Test: Compras
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  cde_win_compras
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/SmokeTest/Bilheteria/ERP/Compras/Relatórios/    
${nome_print}
${nome_exe}=    cde_win_compras
${ESPAÇO}=    ${SPACE}
*** Keywords ***

Relatórios
    Cadastros
    repetidor de teclas    Right    4

*** Test Cases ***

Compras/Aquisição de Serviços - Lançamentos
    ${nome_print}=     Set Variable     Compras_Aquisição de Serviços - Lançamentos
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - Lançamentos
    RPA.Windows.Get Text    Lançamentos de Compras/Aquisição de Serviços (1)
    RPA.Windows.Click       Data
    BaseKeywordsDesktop.Screenshot  Lançamentos de Compras/Aquisição de Serviços (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Lançamentos
    Fechar janela

Compras/Aquisição de Serviços - Sintético/Item
    ${nome_print}=     Set Variable     Compras_Aquisição de Serviços - Sintético_Item
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - Sintético/Item
    RPA.Windows.Get Text    Compras/Aquisição de Serviços / Item (1)
    RPA.Windows.Click       Produtos
    BaseKeywordsDesktop.Screenshot  Compras/Aquisição de Serviços / Item (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Sintético_Item
    Fechar janela

Compras/Aquisição de Serviços - Sintético/Fornecedor
    ${nome_print}=     Set Variable     Compras_Aquisição de Serviços - Sintético_Fornecedor
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - Sintético/Fornecedor
    RPA.Windows.Get Text    Compras/Aquisição de Serviços / Fornecedor (1)
    RPA.Windows.Click       Nome do Fornecedor
    BaseKeywordsDesktop.Screenshot  Compras/Aquisição de Serviços / Fornecedor (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Sintético_Fornecedor
    Fechar janela

Compras/Aquisição de Serviços - Sintético/Forn/Item (ERRO)
    ${nome_print}=     Set Variable     Compras_Aquisição de Serviços - Sintético_Forn_Item
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest        
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - Sintético/Forn/Item
    RPA.Windows.Get Text    	Compras/Aquisição de Serviços / Fornecedor / Item $ESPAÇO (1)
    RPA.Windows.Click       Nome do Fornecedor
    BaseKeywordsDesktop.Screenshot  Compras/Aquisição de Serviços / Fornecedor / Item $ESPAÇO(1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Sintético_Forn_Item
    Fechar janela

Compras/Aquisição de Serviços - Sintético/Setor
    ${nome_print}=     Set Variable     Compras_Aquisição de Serviços - Sintético_Setor
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest    
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - Sintético/Setor
    RPA.Windows.Get Text    Compras/Aquisição de Serviços por Setor (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Compras/Aquisição de Serviços por Setor (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Sintético_Setor
    RPA.Windows.Click       Confirmar
    Fechar janela

Compras/Aquisição de Serviços - Evolução Diária
    ${nome_print}=     Set Variable     Compras_Aquisição de Serviços - Evolução Diária
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest    
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - Evolução Diária
    RPA.Windows.Get Text    Compras/Aquisição de Serviços - Evolução Diária (1)
    repetidor de teclas     Tab    4
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Compras/Aquisição de Serviços - Evolução Diária (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Evolução Diária
    RPA.Windows.Click       Confirmar
    Fechar janela

Compras/Aquisição de Serviços - Evolução Mensal
    ${nome_print}=     Set Variable     Compras_Aquisição de Serviços - Evolução Mensal
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - Evolução Mensal
    RPA.Windows.Get Text    Compras/Aquisição de Serviços - Evolução Mensal (1)
    repetidor de teclas     Tab    3
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Compras/Aquisição de Serviços - Evolução Mensal (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Evolução Mensal
    RPA.Windows.Click       Confirmar
    Fechar janela

Compras/Aquisição de Serviços - Evolução Anual
    ${nome_print}=     Set Variable     Compras_Aquisição de Serviços - Evolução Anual
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - Evolução Anual
    RPA.Windows.Get Text    Compras/Aquisição de Serviços - Evolução Anual (1)
    repetidor de teclas     Tab    5
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Compras/Aquisição de Serviços - Evolução Anual (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Evolução Anual
    RPA.Windows.Click       Confirmar
    Fechar janela

Compras/Aquisição de Serviços - CFOP
    ${nome_print}=     Set Variable     Compras_Aquisição de Serviços - CFOP
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - CFOP
    RPA.Windows.Get Text    Compras/Aquisição de Serviços - CFOP (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Compras/Aquisição de Serviços - CFOP (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - CFOP
    RPA.Windows.Click       Confirmar
    Fechar janela

Lançamento de Entradas (ERRO)
    ${nome_print}=     Set Variable     Lançamento de Entradas
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest    
    Relatórios
    RPA.Windows.Click       Lançamento de Entradas
    RPA.Windows.Get Text    Relatório de Lançamentos de Entradas${ESPAÇO} (1)
    RPA.Windows.Click       Fornecedor
    BaseKeywordsDesktop.Screenshot  Relatório de Lançamentos de Entradas $ESPAÇO(1)   ${Caminho_Screenshots}Lançamento de Entradas
    Fechar janela

Produtos/Fornecedor
    ${nome_print}=     Set Variable     Produtos_Fornecedor
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Produtos/Fornecedor
    RPA.Windows.Get Text    Relatório Ultimo Fornecedor (1)
    RPA.Desktop.Press Keys  Tab
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório Ultimo Fornecedor (1)   ${Caminho_Screenshots}Produtos_Fornecedor
    RPA.Windows.Click       Fechar
    Fechar janela

Fornecedor/Produtos
    ${nome_print}=     Set Variable     Fornecedor_Produtos
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Fornecedor/Produtos
    RPA.Windows.Get Text    Relatório de fornecedores por produto (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de fornecedores por produto (1)   ${Caminho_Screenshots}Fornecedor_Produtos
    RPA.Windows.Click       Confirmar
    Fechar janela

Notas Fiscais Emitidas
    ${nome_print}=     Set Variable     Notas Fiscais Emitidas
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Notas Fiscais Emitidas
    RPA.Windows.Get Text    Relatório de Notas Fiscais Emitidas (1)
    RPA.Windows.Click       Data
    BaseKeywordsDesktop.Screenshot  Relatório de Notas Fiscais Emitidas (1)   ${Caminho_Screenshots}Notas Fiscais Emitidas
    Fechar janela

Pedidos de Compra
    ${nome_print}=     Set Variable     Pedidos de Compra
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Pedidos de Compra
    RPA.Windows.Get Text    Relatório de Pedidos de Compra (1)
    RPA.Windows.Click       Data
    BaseKeywordsDesktop.Screenshot  Relatório de Pedidos de Compra (1)   ${Caminho_Screenshots}Pedidos de Compra
    Fechar janela

Pedidos de Compra - Saldo Produtos
    ${nome_print}=     Set Variable     Pedidos de Compra - Saldo Produtos
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Pedidos de Compra - Saldo Produtos
    RPA.Windows.Get Text    Relatório de Pedidos de Compra - Saldo dos produtos (1)
    RPA.Windows.Click       Data
    BaseKeywordsDesktop.Screenshot  Relatório de Pedidos de Compra - Saldo dos produtos (1)   ${Caminho_Screenshots}Pedidos de Compra - Saldo Produtos
    Fechar janela

Giro de Fornecedores
    ${nome_print}=     Set Variable     Giro de Fornecedores
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Giro de Fornecedores
    RPA.Windows.Get Text    Relatório Giro de Fornecedores (1)
    RPA.Windows.Click       Nome do Fornecedor
    BaseKeywordsDesktop.Screenshot  Relatório Giro de Fornecedores (1)   ${Caminho_Screenshots}Giro de Fornecedores
    Fechar janela

Resumo Retenção Monsanto
    ${nome_print}=     Set Variable     Resumo Retenção Monsanto
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Resumo Retenção Monsanto
    RPA.Windows.Get Text    Consulta Monsanto (1)
    RPA.Windows.Click       Executar
    BaseKeywordsDesktop.Screenshot  Consulta Monsanto (1)   ${Caminho_Screenshots}Resumo Retenção Monsanto
    Fechar janela

Resumo Geral de Movimentos/Saldos
    ${nome_print}=     Set Variable     Resumo Geral de Movimentos_Saldos
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Resumo Geral de Movimentos/Saldos
    RPA.Windows.Get Text    Resumo Geral de Movimentos/Saldos (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Resumo Geral de Movimentos/Saldos (1)   ${Caminho_Screenshots}Resumo Geral de Movimentos_Saldos
    RPA.Windows.Click       Confirmar
    Fechar janela

Customizados > Projeção de Compras
    ${nome_print}=     Set Variable     Projeção de Compras
    [Tags]   SmokeERP    Compras    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Customizados
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Projeção de Compras (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Projeção de Compras (1)   ${Caminho_Screenshots}Customizados/Projeção de Compras
    RPA.Windows.Click       Confirmar
    Fechar janela