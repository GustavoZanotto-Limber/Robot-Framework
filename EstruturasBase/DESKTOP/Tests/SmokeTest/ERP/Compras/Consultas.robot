*** Settings ***
Documentation    Smoke Test: Compras
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Compras/Consultas/    
${nome_print}
${nome_exe}=    cde_win_compras

*** Keywords ***

Consultas
    Cadastros
    repetidor de teclas    Right    3

*** Test Cases ***

Estoque Atual
    ${nome_print}=     Set Variable     Estoque Atual
    [Tags]   SmokeERP    Compras    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Estoque Atual
    RPA.Windows.Get Text    Consulta de Itens (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta de Itens (1)    ${Caminho_Screenshots}Estoque Atual
    Fechar janela

Estoque Atual (Modelo 2)
    ${nome_print}=     Set Variable     Estoque Atual (Modelo 2)
    [Tags]   SmokeERP    Compras    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Estoque Atual (Modelo 2)
    RPA.Windows.Get Text    Consulta de Itens (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta de Itens (1)    ${Caminho_Screenshots}Estoque Atual (Modelo 2)
    RPA.Windows.Click       Fechar

Pedidos de Compra
    ${nome_print}=     Set Variable     Pedidos de Compra
    [Tags]   SmokeERP    Compras    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Pedidos de Compra
    RPA.Windows.Get Text    Consulta de Pedidos de Compra (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta de Pedidos de Compra (1)    ${Caminho_Screenshots}Pedidos de Compra
    Fechar janela

Entrega de Pedidos de Compra
    ${nome_print}=     Set Variable     Entrega de Pedidos de Compra
    [Tags]   SmokeERP    Compras    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Entrega de Pedidos de Compra
    RPA.Windows.Get Text    Controle de entrega de Pedido de Compras (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Controle de entrega de Pedido de Compras (1)    ${Caminho_Screenshots}Entrega de Pedidos de Compra
    Fechar janela

Ficha Kardex de Produtos
    ${nome_print}=     Set Variable     Ficha Kardex de Produtos
    [Tags]   SmokeERP    Compras    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Ficha Kardex de Produtos
    RPA.Windows.Get Text    Kardex do Estoque (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Kardex do Estoque (1)    ${Caminho_Screenshots}Ficha Kardex de Produtos
    RPA.Windows.Click       OK
    Fechar janela

Saldo Sintético de Produtos
    ${nome_print}=     Set Variable     Saldo Sintético de Produtos
    [Tags]   SmokeERP    Compras    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Saldo Sintético de Produtos
    RPA.Windows.Get Text    Consulta Saldo Sintético de Produtos (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta Saldo Sintético de Produtos (1)    ${Caminho_Screenshots}Saldo Sintético de Produtos
    RPA.Windows.Click       OK
    Fechar janela

Consulta Saldo Sintético de Operações
    ${nome_print}=     Set Variable     Consulta Saldo Sintético de Operações
    [Tags]   SmokeERP    Compras    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Consulta Saldo Sintético de Operações
    RPA.Windows.Get Text    Consulta Saldo Sintético de Operações (1)
    RPA.Windows.Click       Executar
    BaseKeywordsDesktop.Screenshot  Consulta Saldo Sintético de Operações (1)    ${Caminho_Screenshots}Consulta Saldo Sintético de Operações
    Fechar janela

Movimentação de Operações
    ${nome_print}=     Set Variable     Movimentação de Operações
    [Tags]   SmokeERP    Compras    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Movimentação de Operações
    RPA.Windows.Get Text    Movimentação de Operações (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Movimentação de Operações (1)    ${Caminho_Screenshots}Movimentação de Operações
    Fechar janela

Saldo de Operações
    ${nome_print}=     Set Variable     Saldo de Operações
    [Tags]   SmokeERP    Compras    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Saldo de Operações
    RPA.Windows.Get Text    Consulta Saldo de Operações (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta Saldo de Operações (1)    ${Caminho_Screenshots}Saldo de Operações
    Fechar janela

Saldo de Lotes - Sintético
    ${nome_print}=     Set Variable     Saldo de Lotes - Sintético
    [Tags]   SmokeERP    Compras    Consultas   SmokeTest
    Consultas 
    RPA.Windows.Click       Saldo de Lotes - Sintético
    RPA.Windows.Get Text    Consulta de Lotes/Sintético (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta de Lotes/Sintético (1)    ${Caminho_Screenshots}Saldo de Lotes - Sintético
    Fechar janela

Movimentação de Lotes
    ${nome_print}=     Set Variable     Movimentação de Lotes
    [Tags]   SmokeERP    Compras    Consultas   SmokeTest
    Consultas 
    RPA.Windows.Click       Movimentação de Lotes
    RPA.Windows.Get Text    Relatório de Movimentação de Lotes (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Relatório de Movimentação de Lotes (1)    ${Caminho_Screenshots}Movimentação de Lotes
    RPA.Windows.Click       OK
    Fechar janela

Saldo de Terceiros
    ${nome_print}=     Set Variable     Saldo de Terceiros
    [Tags]   SmokeERP    Compras    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Saldo de Terceiros
    RPA.Windows.Get Text    Saldos de Terceiros (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Saldos de Terceiros (1)    ${Caminho_Screenshots}Saldo de Terceiros
    Fechar janela

Movimentação de Terceiros
    ${nome_print}=     Set Variable     Movimentação de Terceiros
    [Tags]   SmokeERP    Compras    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Movimentação de Terceiros
    RPA.Windows.Get Text    Movimentação de Terceiros (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Movimentação de Terceiros (1)    ${Caminho_Screenshots}Movimentação de Terceiros
    RPA.Windows.Click       OK
    Fechar janela

Análise de Compras
    ${nome_print}=     Set Variable     Análise de Compras
    [Tags]   SmokeERP    Compras    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Análise de Compras
    RPA.Windows.Get Text    Consulta de Análise de Compra (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta de Análise de Compra (1)    ${Caminho_Screenshots}Análise de Compras
    RPA.Windows.Click       OK
    Fechar janela

Consulta Descontos Calculados
    ${nome_print}=     Set Variable     Consulta Descontos Calculados
    [Tags]   SmokeERP    Compras    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Consulta Descontos Calculados
    RPA.Windows.Get Text      Consulta Descontos Calculados (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot    Consulta Descontos Calculados (1)    ${Caminho_Screenshots}Consulta Descontos Calculados
    RPA.Windows.Click       OK
    Fechar janela

Consultas Personalizadas
    ${nome_print}=     Set Variable     Consultas Personalizadas
    [Tags]   SmokeERP    Compras    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1)
    RPA.Windows.Click       Cadastrar Nova Consulta
    BaseKeywordsDesktop.Screenshot    Consultas Personalizadas (1)    ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click       Fechar
    Fechar janela


    