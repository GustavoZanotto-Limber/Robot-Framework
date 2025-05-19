*** Settings ***
Documentation    Smoke Test: Estoque
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_est


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Estoque/Consultas/    

*** Keywords ***

Consultas 
    Cadastros
    repetidor de teclas     right     2

*** Test Cases ***

Consulta Simplificada do Estoque
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Consulta Simplificada do Estoque
    Consultas
    RPA.Windows.Click       Consulta Simplificada do Estoque
    RPA.Windows.Get Text    Consulta de Itens (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Itens (1)    ${Caminho_Screenshots}Consulta Simplificada do Estoque
    Fechar janela

Consulta Simplificada do Estoque (Modelo 2)
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Consulta Simplificada do Estoque (Modelo 2)
    Consultas
    RPA.Windows.Click       Consulta Simplificada do Estoque (Modelo 2)
    RPA.Windows.Get Text    Consulta de Itens (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Itens (1)    ${Caminho_Screenshots}Consulta Simplificada do Estoque (Modelo 2)
    Fechar janela

Consulta do Estoque/Estabelecimento/Setor
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Consulta do Estoque/Estabelecimento/Setor
    Consultas
    RPA.Windows.Click       Consulta do Estoque/Estabelecimento/Setor
    RPA.Windows.Get Text    Consulta de Estoque/Estabelecimento/Depósito (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Estoque/Estabelecimento/Depósito (1)    ${Caminho_Screenshots}Consulta do Estoque/Estabelecimento/Setor
    Fechar janela

Consulta Inventário de Estoque
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Consulta Inventário de Estoque
    Consultas
    RPA.Windows.Click       Consulta Inventário de Estoque
    RPA.Windows.Get Text    Consulta de Inventário de Estoque (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Inventário de Estoque (1)    ${Caminho_Screenshots}Consulta Inventário de Estoque
    RPA.Windows.Click       OK
    Fechar janela

Disponibilidade de Estoque
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Disponibilidade de Estoque
    Consultas
    RPA.Windows.Click       Disponibilidade de Estoque
    RPA.Windows.Get Text    Disponibilidade do Estoque (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Disponibilidade do Estoque (1)    ${Caminho_Screenshots}Disponibilidade de Estoque
    RPA.Windows.Click       OK
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

Lotes de Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Lotes de Terceiros
    Consultas
    RPA.Windows.Click       Lotes de Terceiros
    RPA.Windows.Get Text    Consulta de Lotes de Terceiro (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Lotes de Terceiro (1)    ${Caminho_Screenshots}Lotes de Terceiros
    Fechar janela

Análise do Estoque
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Análise do Estoque
    Consultas
    RPA.Windows.Click       Análise do Estoque
    RPA.Windows.Get Text    Análise do Estoque (1)
    RPA.Windows.Click       Carregar
    RPA.Windows.Click       Sim
    BaseDesktop.Screenshot  Análise do Estoque (1)    ${Caminho_Screenshots}Análise do Estoque
    Fechar janela

Consulta Kardex de Vasilhames
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Consulta Kardex de Vasilhames
    Consultas
    RPA.Windows.Click       Consulta Kardex de Vasilhames
    RPA.Windows.Get Text    Kardex do Estoque de Vasilhames (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Kardex do Estoque de Vasilhames (1)    ${Caminho_Screenshots}Consulta Kardex de Vasilhames
    RPA.Windows.Click       OK
    Fechar janela

Consulta de Saldo de Vasilhames
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Consulta de Saldo de Vasilhames
    Consultas
    RPA.Windows.Click       Consulta de Saldo de Vasilhames
    RPA.Windows.Get Text    Saldo de Vasilhames (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Saldo de Vasilhames (1)    ${Caminho_Screenshots}Consulta de Saldo de Vasilhames
    Fechar janela

Consultas Personalizadas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Consulta Personalizadas
    Consultas
    RPA.Windows.Click       Consultas Personalizadas
    RPA.Windows.Get Text    Consultas Personalizadas (1)
    RPA.Windows.Click       Cadastrar Nova Consulta
    BaseDesktop.Screenshot  Consultas Personalizadas (1)    ${Caminho_Screenshots}Consulta Personalizadas
    RPA.Windows.Click       Sair
    Fechar janela

Encerrar 
    Encerrar tudo