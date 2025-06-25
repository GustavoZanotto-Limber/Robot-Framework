*** Settings ***
Documentation    Smoke Test: Vendas
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_ven


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Vendas/Consultas/    

*** Keywords ***

Consultas
    Cadastros
    Repetidor de Teclas     Right    3

*** Test Cases ***

Estoque Atual
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Estoque Atual
    Consultas
    RPA.Windows.Click       Estoque Atual
    RPA.Windows.Get Text    Consulta de Itens (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Itens (1)    ${Caminho_Screenshots}Estoque Atual
    Fechar janela

Estoque Atual (Modelo 2)
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Estoque Atual (Modelo 2)
    Consultas
    RPA.Windows.Click       Estoque Atual (Modelo 2)
    Sleep                   1s
    RPA.Windows.Get Text    Consulta de Itens (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Itens (1)    ${Caminho_Screenshots}Estoque Atual (Modelo 2)
    RPA.Windows.Click       Fechar

Lançamentos de Saídas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Lançamentos de Saídas
    Consultas
    RPA.Windows.Click         Lançamentos de Saídas
    RPA.Windows.Get Text      Consulta de Lançamentos de Saídas (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Lançamentos de Saídas (1)    ${Caminho_Screenshots}Lançamentos de Saídas
    Fechar janela

Lançamentos de Saídas - Item
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Lançamentos de Saídas - Item
    Consultas
    RPA.Windows.Click         Lançamentos de Saídas - Item
    RPA.Windows.Get Text      Lançamentos de Saída (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Lançamentos de Saída (1)    ${Caminho_Screenshots}Lançamentos de Saídas - Item
    Fechar janela

Consulta de Notas Fiscais Emitidas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}          Consulta de Notas Fiscais Emitidas
    Consultas
    RPA.Windows.Click       Consulta de Notas Fiscais Emitidas
    RPA.Windows.Get Text    Consulta de Notas Fiscais Emitidas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Notas Fiscais Emitidas (1)    ${Caminho_Screenshots}Consulta de Notas Fiscais Emitidas
    RPA.Windows.Click       Sim
    Fechar janela

Movimentação de Clientes/Veículos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Movimentação de Clientes/Veículos
    Consultas
    RPA.Windows.Click         Movimentação de Clientes / Veículos
    RPA.Windows.Get Text      Movimentação de Cliente/Veículo (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Movimentação de Cliente/Veículo (1)    ${Caminho_Screenshots}Movimentação de Clientes/Veículos
    Fechar janela

Clientes/Veículos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Clientes/Veículos
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Orçamentos/                      Orçamentos
    Consultas
    RPA.Windows.Click         Orçamentos
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Consulta de Orçamentos (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Orçamentos (1)    ${Caminho_Screenshots}Orçamentos/Orçamentos
    Fechar janela

Pacotes Promocionais
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Pacotes Promocionais
    Consultas
    RPA.Windows.Click         Pacotes Promocionais
    RPA.Windows.Get Text      Consulta de Pacotes Promocionais (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Pacotes Promocionais (1)    ${Caminho_Screenshots}Pacotes Promocionais
    RPA.Windows.Click         Fechar

Pedidos de Vendas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Pedidos de Vendas
    Consultas
    RPA.Windows.Click         Pedidos de Venda
    RPA.Windows.Get Text      Consulta de Pedidos de Venda (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Pedidos de Venda (1)    ${Caminho_Screenshots}Pedidos de Vendas
    Fechar janela

Ficha Kardex de Produtos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Ficha Kardex de Produtos
    Consultas
    RPA.Windows.Click       Ficha Kardex de Produtos
    RPA.Windows.Get Text    Kardex do Estoque (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Kardex do Estoque (1)    ${Caminho_Screenshots}Ficha Kardex de Produtos
    RPA.Windows.Click       OK
    Fechar janela

Tabela Preços de Venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Tabela Preços de Venda
    Consultas
    RPA.Windows.Click         Tabela Preços de Venda
    RPA.Windows.Get Text      Consulta de Preço de Venda de Produtos (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Preço de Venda de Produtos (1)    ${Caminho_Screenshots}Tabela Preços de Venda
    Fechar janela

Saldo Sintético de Produtos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Saldo Sintético de Produtos
    Consultas
    RPA.Windows.Click       Saldo Sintético de Produtos
    RPA.Windows.Get Text    Consulta Saldo Sintético de Produtos (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta Saldo Sintético de Produtos (1)    ${Caminho_Screenshots}Saldo Sintético de Produtos
    RPA.Windows.Click       OK
    Fechar janela

Consulta Saldo Sintético de Operações
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Consulta Saldo Sintético de Operações
    Consultas
    RPA.Windows.Click       Consulta Saldo Sintético de Operações
    RPA.Windows.Get Text    Consulta Saldo Sintético de Operações (1)
    RPA.Windows.Click       Executar
    BaseDesktop.Screenshot  Consulta Saldo Sintético de Operações (1)    ${Caminho_Screenshots}Consulta Saldo Sintético de Operações
    Fechar janela

Movimentação de Operações
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Movimentação de Operações
    Consultas
    RPA.Windows.Click       Movimentação de Operações
    RPA.Windows.Get Text    Movimentação de Operações (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Movimentação de Operações (1)    ${Caminho_Screenshots}Movimentação de Operações
    Fechar janela

Saldo de Operações
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Saldo de Operações
    Consultas
    RPA.Windows.Click       Saldo de Operações
    RPA.Windows.Get Text    Consulta Saldo de Operações (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta Saldo de Operações (1)    ${Caminho_Screenshots}Saldo de Operações
    Fechar janela

Saldo de Lotes - Sintético
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Saldo de Lotes - Sintético
    Consultas 
    RPA.Windows.Click       Saldo de Lotes - Sintético
    RPA.Windows.Get Text    Consulta de Lotes/Sintético (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Lotes/Sintético (1)    ${Caminho_Screenshots}Saldo de Lotes - Sintético
    Fechar janela

Movimentação de Lotes
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Movimentação de Lotes
    Consultas 
    RPA.Windows.Click       Movimentação de Lotes
    RPA.Windows.Get Text    Relatório de Movimentação de Lotes (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Relatório de Movimentação de Lotes (1)    ${Caminho_Screenshots}Movimentação de Lotes
    RPA.Windows.Click       OK
    Fechar janela

Saldo de Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Saldo de Terceiros
    Consultas
    RPA.Windows.Click       Saldo de Terceiros
    RPA.Windows.Get Text    Saldos de Terceiros (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Saldos de Terceiros (1)    ${Caminho_Screenshots}Saldo de Terceiros
    Fechar janela

Movimentação de Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Movimentação de Terceiros
    Consultas
    RPA.Windows.Click       Movimentação de Terceiros
    RPA.Windows.Get Text    Movimentação de Terceiros (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Movimentação de Terceiros (1)    ${Caminho_Screenshots}Movimentação de Terceiros
    RPA.Windows.Click       OK
    Fechar janela

Consulta de Visitas Técnicas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Consulta de Visitas Técnicas
    Consultas
    RPA.Windows.Click         Consulta de Visitas Técnicas
    RPA.Windows.Get Text      Consulta de Visitas Técnicas (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Visitas Técnicas (1)    ${Caminho_Screenshots}Consulta de Visitas Técnicas
    RPA.Windows.Click         OK
    Fechar janela

Consultas Personalizadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Consultas Personalizadas
    Consultas
    RPA.Windows.Click         Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1)
    RPA.Windows.Click         Cadastrar Nova Consulta
    BaseDesktop.Screenshot    Consultas Personalizadas (1)    ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click         Fechar
    Fechar janela

Análise de Terceiro
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                 Análise de Terceiro
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


    