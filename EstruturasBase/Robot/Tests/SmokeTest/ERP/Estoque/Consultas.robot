*** Settings ***
Documentation    Smoke Test: Estoque
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/SmokeTest/Bilheteria/ERP/Estoque/Consultas/    
${nome_print}
${nome_exe}=    cde_win_est
*** Keywords ***

Consultas 
    Cadastros
    repetidor de teclas     right     2

*** Test Cases ***

Consulta Simplificada do Estoque
    ${nome_print}=     Set Variable     Consulta Simplificada do Estoque
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Consulta Simplificada do Estoque
    RPA.Windows.Get Text    Consulta de Itens (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta de Itens (1)    ${Caminho_Screenshots}Consulta Simplificada do Estoque
    Fechar janela

Consulta Simplificada do Estoque (Modelo 2)
    ${nome_print}=     Set Variable     Consulta Simplificada do Estoque (Modelo 2)
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Consulta Simplificada do Estoque (Modelo 2)
    RPA.Windows.Get Text    Consulta de Itens (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta de Itens (1)    ${Caminho_Screenshots}Consulta Simplificada do Estoque (Modelo 2)
    Fechar janela

Consulta do Estoque/Estabelecimento/Setor
    ${nome_print}=     Set Variable     Consulta do Estoque_Estabelecimento_Setor
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Consulta do Estoque/Estabelecimento/Setor
    RPA.Windows.Get Text    Consulta de Estoque/Estabelecimento/Depósito (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta de Estoque/Estabelecimento/Depósito (1)    ${Caminho_Screenshots}Consulta do Estoque/Estabelecimento/Setor
    Fechar janela

Consulta Inventário de Estoque
    ${nome_print}=     Set Variable     Consulta Inventário de Estoque
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Consulta Inventário de Estoque
    RPA.Windows.Get Text    Consulta de Inventário de Estoque (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta de Inventário de Estoque (1)    ${Caminho_Screenshots}Consulta Inventário de Estoque
    RPA.Windows.Click       OK
    Fechar janela

Disponibilidade de Estoque
    ${nome_print}=     Set Variable     Disponibilidade de Estoque
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Disponibilidade de Estoque
    RPA.Windows.Get Text    Disponibilidade do Estoque (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Disponibilidade do Estoque (1)    ${Caminho_Screenshots}Disponibilidade de Estoque
    RPA.Windows.Click       OK
    Fechar janela

Ficha Kardex de Produtos
    ${nome_print}=     Set Variable     Ficha Kardex de Produtos
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Ficha Kardex de Produtos
    RPA.Windows.Get Text    Kardex do Estoque (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Kardex do Estoque (1)    ${Caminho_Screenshots}Ficha Kardex de Produtos
    RPA.Windows.Click       OK
    Fechar janela

Saldo Sintético de Produtos
    ${nome_print}=     Set Variable     Saldo Sintético de Produtos
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Saldo Sintético de Produtos
    RPA.Windows.Get Text    Consulta Saldo Sintético de Produtos (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta Saldo Sintético de Produtos (1)    ${Caminho_Screenshots}Saldo Sintético de Produtos
    RPA.Windows.Click       OK
    Fechar janela

Consulta Saldo Sintético de Operações
    ${nome_print}=     Set Variable     Consulta Saldo Sintético de Operações
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Consulta Saldo Sintético de Operações
    RPA.Windows.Get Text    Consulta Saldo Sintético de Operações (1)
    RPA.Windows.Click       Executar
    BaseKeywordsDesktop.Screenshot  Consulta Saldo Sintético de Operações (1)    ${Caminho_Screenshots}Consulta Saldo Sintético de Operações
    Fechar janela

Movimentação de Operações
    ${nome_print}=     Set Variable     Movimentação de Operações
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Movimentação de Operações
    RPA.Windows.Get Text    Movimentação de Operações (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Movimentação de Operações (1)    ${Caminho_Screenshots}Movimentação de Operações
    Fechar janela

Saldo de Operações
    ${nome_print}=     Set Variable     Saldo de Operações
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Saldo de Operações
    RPA.Windows.Get Text    Consulta Saldo de Operações (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta Saldo de Operações (1)    ${Caminho_Screenshots}Saldo de Operações
    Fechar janela

Saldo de Terceiros
    ${nome_print}=     Set Variable     Saldo de Terceiros
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Saldo de Terceiros
    RPA.Windows.Get Text    Saldos de Terceiros (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Saldos de Terceiros (1)    ${Caminho_Screenshots}Saldo de Terceiros
    Fechar janela

Movimentação de Terceiros
    ${nome_print}=     Set Variable     Movimentação de Terceiros
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Movimentação de Terceiros
    RPA.Windows.Get Text    Movimentação de Terceiros (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Movimentação de Terceiros (1)    ${Caminho_Screenshots}Movimentação de Terceiros
    RPA.Windows.Click       OK
    Fechar janela

Lotes de Terceiros
    ${nome_print}=     Set Variable     Lotes de Terceiros
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Lotes de Terceiros
    RPA.Windows.Get Text    Consulta de Lotes de Terceiro (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta de Lotes de Terceiro (1)    ${Caminho_Screenshots}Lotes de Terceiros
    Fechar janela

Análise do Estoque
    ${nome_print}=     Set Variable     Análise do Estoque
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Análise do Estoque
    RPA.Windows.Get Text    Análise do Estoque (1)
    RPA.Windows.Click       Carregar
    RPA.Windows.Click       Sim
    BaseKeywordsDesktop.Screenshot  Análise do Estoque (1)    ${Caminho_Screenshots}Análise do Estoque
    Fechar janela

Consulta Kardex de Vasilhames
    ${nome_print}=     Set Variable     Consulta Kardex de Vasilhames
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Consulta Kardex de Vasilhames
    RPA.Windows.Get Text    Kardex do Estoque de Vasilhames (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Kardex do Estoque de Vasilhames (1)    ${Caminho_Screenshots}Consulta Kardex de Vasilhames
    RPA.Windows.Click       OK
    Fechar janela

Consulta de Saldo de Vasilhames
    ${nome_print}=     Set Variable     Consulta de Saldo de Vasilhames
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Consulta de Saldo de Vasilhames
    RPA.Windows.Get Text    Saldo de Vasilhames (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Saldo de Vasilhames (1)    ${Caminho_Screenshots}Consulta de Saldo de Vasilhames
    Fechar janela

Consultas Personalizadas
    ${nome_print}=     Set Variable     Consultas Personalizadas
    [Tags]   SmokeERP    Estoque    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Consultas Personalizadas
    RPA.Windows.Get Text    Consultas Personalizadas (1)
    RPA.Windows.Click       Cadastrar Nova Consulta
    BaseKeywordsDesktop.Screenshot  Consultas Personalizadas (1)    ${Caminho_Screenshots}Consulta Personalizadas
    RPA.Windows.Click       Sair
    Fechar janela