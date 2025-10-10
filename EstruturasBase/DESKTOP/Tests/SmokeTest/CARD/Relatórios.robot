*** Settings ***
Documentation    Smoke Test: CARD
Resource         ../../../Resources/SmokeCard/BDDSmokeCard.robot
Resource         ../../../Resources/SmokeCard/BaseSmokeTestCard.robot
Suite Setup      Abrir CARD e logar 
Suite Teardown   Fechar Navegador
Test Teardown    Caso aconteca erro SmokeWeb  ${Caminho_Screenshots}Erros/    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/CARD/Relatórios/
${nome_print}

*** Test Cases ***

Horário de Vendas
    [Tags]        CARD    SmokeTest    Relatórios
    ${nome_print}=    Set Variable     Horário de Vendas
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    1
    Então configuro o relatório com o nome    Horário de Vendas

Receita de compra Cupom de Desconto
    [Tags]        CARD    SmokeTest    Relatórios
    ${nome_print}=    Set Variable     Receita de compra Cupom de Desconto
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    2
    Então configuro o relatório com o nome    Receita de compra Cupom de Desconto

Resumo Geral
    [Tags]        CARD    SmokeTest    Relatórios
    ${nome_print}=    Set Variable     Resumo Geral
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    3
    Então configuro o relatório com o nome    Resumo Geral

Predição de Visitação
    [Tags]        CARD    SmokeTest    Relatórios
    ${nome_print}=    Set Variable     Predição de Visitação
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    4
    Então configuro o relatório com o nome    Horário de Vendas

Previsão de Público
    [Tags]        CARD    SmokeTest    Relatórios
    ${nome_print}=    Set Variable     Previsão de Público
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    5
    Então configuro o relatório com o nome    Previsão de Público

Ranking de Vendedores
    [Tags]        CARD    SmokeTest    Relatórios
    ${nome_print}=    Set Variable     Ranking de Vendedores
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    6
    Então configuro o relatório com o nome    Ranking de Vendedores

Padrão de Carrinho
    [Tags]        CARD    SmokeTest    Relatórios
    ${nome_print}=    Set Variable     Padrão de Carrinho
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    7
    Então configuro o relatório com o nome    Padrão de Carrinho

Ranking de Parceiros
    [Tags]        CARD    SmokeTest    Relatórios
    ${nome_print}=    Set Variable     Ranking de Parceiros
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    8
    Então configuro o relatório com o nome    Ranking de Parceiros

Venda por Ponto de Venda e Usuário
    [Tags]        CARD    SmokeTest    Relatórios
    ${nome_print}=    Set Variable     Venda por Ponto de Venda e Usuário
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    9
    Então configuro o relatório com o nome    Vendas por Ponto de Venda e Usuário

Visitação em Tempo Real
    [Tags]        CARD    SmokeTest    Relatórios
    ${nome_print}=    Set Variable     Visitação em Tempo Real
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    3    10
    Então configuro o relatório com o nome    Visitação em Tempo Real


