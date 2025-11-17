*** Settings ***
Documentation    Smoke Test: CARD
Resource         ../../../Resources/BDD/BDDSmokeCard.robot
Resource         ../../../Resources/Base/BaseKeywordsCARD.robot
Suite Setup      Abrir card sem filtro 
Suite Teardown   Fechar Navegador
Test Teardown    Caso aconteca erro relatorios  ${Caminho_Screenshots}Erros/    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/SmokeTest/CARD/Relatórios/
${nome_print}

*** Keywords ***
Abrir card sem filtro
    Abrir pagina login card
    Minimize Browser Window
    Sleep                      1s
    Maximize Browser Window
    Preencher email
    Sleep                      1s
    Preencher senha
    clicar em continuar
    Maximize Browser Window
    Sleep                      1s

Caso aconteca erro relatorios
        [Arguments]     ${Caminho_Screenshots}        ${nome_print}    
        Run Keyword If Test Failed    Run Keyword And Ignore error    Remove File                     ${Caminho_Screenshots}${nome_print}.png
        Run Keyword If Test Failed    Take Screenshot                 ${Caminho_Screenshots}Erro ${nome_print}.png
        Run Keyword If Test Failed    Fechar navegador
        Sleep                         1s
        Run Keyword If Test Failed    Abrir CARD e logar

*** Test Cases ***

Horário de Vendas
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Horário de Vendas
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    1
    Então configuro o relatório com o nome    Horário de Vendas

Receita de compra Cupom de Desconto
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Receita de compra Cupom de Desconto
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    2
    Então configuro o relatório com o nome    Receita de compra Cupom de Desconto

Resumo Geral
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Resumo Geral
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    3
    Então configuro o relatório com o nome    Resumo Geral

Predição de Visitação
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Predição de Visitação
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    4
    Então configuro o relatório com o nome    Horário de Vendas

Previsão de Público
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Previsão de Público
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    5
    Então configuro o relatório com o nome    Previsão de Público

Ranking de Vendedores
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Ranking de Vendedores
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    6
    Então configuro o relatório com o nome    Ranking de Vendedores

Padrão de Carrinho
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Padrão de Carrinho
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    7
    Então configuro o relatório com o nome    Padrão de Carrinho

Ranking de Parceiros
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Ranking de Parceiros
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    8
    Então configuro o relatório com o nome    Ranking de Parceiros

Ingressos Emitidos por Grupo de Bilhete e Categoria
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Ingressos Emitidos por Grupo de Bilhete e Categoria
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    9
    Então configuro o relatório com o nome    Ingressos Emitidos por Grupo de Bilhete e Categoria

Origem do Visitante
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Origem do Visitante
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    10
    Então configuro o relatório com o nome    Origem do Visitante

Venda por Ponto de Venda e Usuário
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Venda por Ponto de Venda e Usuário
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    11
    Então configuro o relatório com o nome    Vendas por Ponto de Venda e Usuário

Faturamento por Meio de Venda
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Faturamento por Meio de Venda
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    12
    Então configuro o relatório com o nome    Faturamento por Meio de Venda

Visitação em Tempo Real
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Visitação em Tempo Real
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    13
    Então configuro o relatório com o nome    Visitação em Tempo Real

Detalhamento de Vendas
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Detalhamento de Vendas
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    14
    Então configuro o relatório com o nome    Detalhamento de Vendas

Vendas Código Promocional
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Vendas Código Promocional
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    15
    Então configuro o relatório com o nome    Vendas código promocional

Vendas por Cupom de Desconto
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Vendas por Cupom de Desconto
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    16
    Então configuro o relatório com o nome    Vendas por Cupom de Desconto

Detalhamento de receita reconhecida
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Detalhamento de receita reconhecida
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    17
    Então configuro o relatório com o nome    Detalhamento de receita reconhecida

Resumo de Vendas
    [Tags]        CARD    SmokeTest    Relatórios    SmokeCARD
    ${nome_print}=    Set Variable     Resumo de Vendas
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    18
    Então configuro o relatório com o nome    Resumo de Vendas
