*** Settings ***
Documentation    Smoke Test: Vendas
Resource         ../../../../../Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Vendas/Consultas/    
${nome_print}
${nome_exe}=    cde_win_ven
${ESPAÇO}=    ${SPACE}
*** Keywords ***

Consultas
    Cadastros
    Repetidor de Teclas     Right    4

*** Test Cases ***

Estoque Atual
    ${nome_print}=     Set Variable     Estoque Atual
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Estoque Atual
    RPA.Windows.Get Text    Consulta de Itens (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Itens (1)    ${Caminho_Screenshots}Estoque Atual
    Fechar janela

Estoque Atual (Modelo 2)
    ${nome_print}=     Set Variable     Estoque Atual (Modelo 2)
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Estoque Atual (Modelo 2)
    Sleep                   1s
    RPA.Windows.Get Text    Consulta de Itens (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Itens (1)    ${Caminho_Screenshots}Estoque Atual (Modelo 2)
    RPA.Windows.Click       Fechar

Lançamentos de Saídas
    ${nome_print}=     Set Variable     Lançamentos de Saídas
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Lançamentos de Saídas
    RPA.Windows.Get Text      Consulta de Lançamentos de Saídas (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Lançamentos de Saídas (1)    ${Caminho_Screenshots}Lançamentos de Saídas
    Fechar janela

Lançamentos de Saídas - Item
    ${nome_print}=     Set Variable     Lançamentos de Saídas - Item
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Lançamentos de Saídas - Item
    RPA.Windows.Get Text      Lançamentos de Saída (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Lançamentos de Saída (1)    ${Caminho_Screenshots}Lançamentos de Saídas - Item
    Fechar janela

Consulta de Notas Fiscais Emitidas
    ${nome_print}=     Set Variable     Consulta de Notas Fiscais Emitidas
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Consulta de Notas Fiscais Emitidas
    RPA.Windows.Get Text    Consulta de Notas Fiscais Emitidas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Notas Fiscais Emitidas (1)    ${Caminho_Screenshots}Consulta de Notas Fiscais Emitidas
    RPA.Windows.Click       Sim
    Fechar janela

Movimentação de Clientes/Veículos
    ${nome_print}=     Set Variable     Movimentação de Clientes/Veículos
    [Tags]    Vendas   Consultas   SmokeTest    
    Consultas
    RPA.Windows.Click         Movimentação de Clientes / Veículos
    RPA.Windows.Get Text      Movimentação de Cliente/Veículo $ESPAÇO(1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Movimentação de Cliente/Veículo $ESPAÇO(1)    ${Caminho_Screenshots}Movimentação de Clientes/Veículos
    Fechar janela

Clientes/Veículos
    ${nome_print}=     Set Variable     Clientes/Veículos
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Clientes/Veículo
    RPA.Windows.Get Text      Consulta de Clientes/Veículo (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Consulta de Clientes/Veículo (1)    ${Caminho_Screenshots}Clientes/Veículos
    RPA.Windows.Click         OK
    RPA.Windows.Click         Confirmar
    Fechar janela

Orçamentos
    ${nome_print}=     Set Variable     Orçamentos
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Orçamentos
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Consulta de Orçamentos (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Orçamentos (1)    ${Caminho_Screenshots}Orçamentos/Orçamentos
    Fechar janela

Pacotes Promocionais
    ${nome_print}=     Set Variable     Pacotes Promocionais
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Pacotes Promocionais
    RPA.Windows.Get Text      Consulta de Pacotes Promocionais (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Pacotes Promocionais (1)    ${Caminho_Screenshots}Pacotes Promocionais
    RPA.Windows.Click         Fechar

Pedidos de Vendas
    ${nome_print}=     Set Variable     Pedidos de Vendas
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Pedidos de Venda
    RPA.Windows.Get Text      Consulta de Pedidos de Venda (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Pedidos de Venda (1)    ${Caminho_Screenshots}Pedidos de Vendas
    Fechar janela

Ficha Kardex de Produtos
    ${nome_print}=     Set Variable     Ficha Kardex de Produtos
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Ficha Kardex de Produtos
    RPA.Windows.Get Text    Kardex do Estoque (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Kardex do Estoque (1)    ${Caminho_Screenshots}Ficha Kardex de Produtos
    RPA.Windows.Click       OK
    Fechar janela

Tabela Preços de Venda
    ${nome_print}=     Set Variable     Tabela Preços de Venda
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Tabela Preços de Venda
    RPA.Windows.Get Text      Consulta de Preço de Venda de Produtos (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Preço de Venda de Produtos (1)    ${Caminho_Screenshots}Tabela Preços de Venda
    Fechar janela

Saldo Sintético de Produtos
    ${nome_print}=     Set Variable     Saldo Sintético de Produtos
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Saldo Sintético de Produtos
    RPA.Windows.Get Text    Consulta Saldo Sintético de Produtos (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta Saldo Sintético de Produtos (1)    ${Caminho_Screenshots}Saldo Sintético de Produtos
    RPA.Windows.Click       OK
    Fechar janela

Consulta Saldo Sintético de Operações
    ${nome_print}=     Set Variable     Consulta Saldo Sintético de Operações
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Consulta Saldo Sintético de Operações
    RPA.Windows.Get Text    Consulta Saldo Sintético de Operações (1)
    RPA.Windows.Click       Executar
    BaseDesktop.Screenshot  Consulta Saldo Sintético de Operações (1)    ${Caminho_Screenshots}Consulta Saldo Sintético de Operações
    Fechar janela

Movimentação de Operações
    ${nome_print}=     Set Variable     Movimentação de Operações
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Movimentação de Operações
    RPA.Windows.Get Text    Movimentação de Operações (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Movimentação de Operações (1)    ${Caminho_Screenshots}Movimentação de Operações
    Fechar janela

Saldo de Operações
    ${nome_print}=     Set Variable     Saldo de Operações
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Saldo de Operações
    RPA.Windows.Get Text    Consulta Saldo de Operações (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta Saldo de Operações (1)    ${Caminho_Screenshots}Saldo de Operações
    Fechar janela

Saldo de Lotes - Sintético
    ${nome_print}=     Set Variable     Saldo de Lotes - Sintético
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas 
    RPA.Windows.Click       Saldo de Lotes - Sintético
    RPA.Windows.Get Text    Consulta de Lotes/Sintético (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Lotes/Sintético (1)    ${Caminho_Screenshots}Saldo de Lotes - Sintético
    Fechar janela

Movimentação de Lotes
    ${nome_print}=     Set Variable     Movimentação de Lotes
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas 
    RPA.Windows.Click       Movimentação de Lotes
    RPA.Windows.Get Text    Relatório de Movimentação de Lotes (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Relatório de Movimentação de Lotes (1)    ${Caminho_Screenshots}Movimentação de Lotes
    RPA.Windows.Click       OK
    Fechar janela

Saldo de Terceiros
    ${nome_print}=     Set Variable     Saldo de Terceiros
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Saldo de Terceiros
    RPA.Windows.Get Text    Saldos de Terceiros (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Saldos de Terceiros (1)    ${Caminho_Screenshots}Saldo de Terceiros
    Fechar janela

Movimentação de Terceiros
    ${nome_print}=     Set Variable     Movimentação de Terceiros
    [Tags]    Vendas   Consultas   SmokeTest    
    Consultas
    RPA.Windows.Click       Movimentação de Terceiros
    RPA.Windows.Get Text    Movimentação de Terceiros (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Movimentação de Terceiros (1)    ${Caminho_Screenshots}Movimentação de Terceiros
    RPA.Windows.Click       OK
    Fechar janela

Consulta de Visitas Técnicas
    ${nome_print}=     Set Variable     Consulta de Visitas Técnicas
    [Tags]    Vendas   Consultas   SmokeTest       
    Consultas
    RPA.Windows.Click         Consulta de Visitas Técnicas
    RPA.Windows.Get Text      Consulta de Visitas Técnicas (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Visitas Técnicas (1)    ${Caminho_Screenshots}Consulta de Visitas Técnicas
    Fechar janela

Consultas Personalizadas
    ${nome_print}=     Set Variable     Consultas Personalizadas
    [Tags]    Vendas   Consultas   SmokeTest        
    Consultas
    RPA.Windows.Click         Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1)
    RPA.Windows.Click         Cadastrar Nova Consulta
    BaseDesktop.Screenshot    Consultas Personalizadas (1)    ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click         Fechar
    Fechar janela

Análise de Terceiro
    ${nome_print}=     Set Variable     Análise de Terceiro
    [Tags]    Vendas   Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Análise de Terceiro
    Sleep                     1s
    RPA.Windows.Get Text      Consulta de Terceiros
    BaseDesktop.Screenshot    Consulta de Terceiros    ${Caminho_Screenshots}Análise de Terceiro
    RPA.Windows.Click         Carregar
    RPA.Windows.Click         Fechar
    RPA.Windows.Get Text      Análise de Terceiros (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Análise de Terceiros (1)    ${Caminho_Screenshots}Análise de Terceiro
    RPA.Windows.Click         Fechar