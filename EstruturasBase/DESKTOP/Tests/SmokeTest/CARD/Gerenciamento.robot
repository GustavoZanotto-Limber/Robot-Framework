*** Settings ***
Documentation    Smoke Test: CARD
Resource         ../../../Resources/BaseKeywordsWeb.robot
Resource         ../../../Resources/BDDKeywordsWeb.robot
Resource         ../../../Resources/SmokeCard/BDDSmokeCard.robot
Resource         ../../../Resources/SmokeCard/BaseSmokeTestCard.robot
Suite Setup      Abrir CARD e logar 
Suite Teardown   Fechar Navegador
Test Teardown    Caso aconteca erro SmokeWeb  ${Caminho_Screenshots}Erros/    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/CARD/Dashboard/
${nome_print}

*** Test Cases ***

Gerenciamento de Vendas
    [Tags]        CARD    SmokeTest    Gerenciamento
    ${nome_print}=    Set Variable     Dashboard
    Dado que loguei no CARD
    Quando acesso o menu lateral    2    1
    Então valido se a tela de Gerenciamento de Vendas foi carregada corretamente

Extração de Dados/Relatórios
    [Tags]        CARD    SmokeTest    Gerenciamento
    ${nome_print}=    Set Variable    Extração de Dados/Relatórios
    Dado que loguei no CARD
    Quando acesso o menu lateral    2    2
    Então valido se a tela de Extração de Dados/Relatórios foi carregada corretamente
