*** Settings ***
Documentation    Smoke Test: Compras
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_compras


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Compras/Consultas/    

*** Keywords ***

Consultas
    Cadastros
    repetidor de teclas    Right    3

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
    RPA.Windows.Get Text    Consulta de Itens (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Itens (1)    ${Caminho_Screenshots}Estoque Atual (Modelo 2)
    RPA.Windows.Click       Fechar

Pedidos de Compra
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Pedidos de Compra
    Consultas
    RPA.Windows.Click       Pedidos de Compra
    RPA.Windows.Get Text    Consulta de Pedidos de Compra (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Pedidos de Compra (1)    ${Caminho_Screenshots}Pedidos de Compra
    Fechar janela

Entrega de Pedidos de Compra
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Entrega de Pedidos de Compra
    Consultas
    RPA.Windows.Click       Entrega de Pedidos de Compra
    RPA.Windows.Get Text    Controle de entrega de Pedido de Compras (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Controle de entrega de Pedido de Compras (1)    ${Caminho_Screenshots}Entrega de Pedidos de Compra
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

Análise de Compras
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Análise de Compras
    Consultas
    RPA.Windows.Click       Análise de Compras
    RPA.Windows.Get Text    Consulta de Análise de Compra (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Análise de Compra (1)    ${Caminho_Screenshots}Análise de Compras
    RPA.Windows.Click       OK
    Fechar janela

Consulta Descontos Calculados
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Consulta Descontos Calculados
    Consultas
    RPA.Windows.Click         Consulta Descontos Calculados
    RPA.Windows.Get Text      Consulta Descontos Calculados (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot    Consulta Descontos Calculados (1)    ${Caminho_Screenshots}Consulta Descontos Calculados
    RPA.Windows.Click       OK
    Fechar janela

Consultas Personalizadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Consultas Personalizadas
    Consultas
    RPA.Windows.Click         Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1)
    RPA.Windows.Click       Cadastrar Nova Consulta
    BaseDesktop.Screenshot    Consultas Personalizadas (1)    ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click       Fechar
    Fechar janela

Encerrar
    Encerrar tudo