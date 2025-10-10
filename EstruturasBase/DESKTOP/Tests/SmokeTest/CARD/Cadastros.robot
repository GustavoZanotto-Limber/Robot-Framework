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

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/CARD/Cadastros/
${nome_print}

*** Test Cases ***

Bilhetes
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Bilhetes
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    1
    Então valido se a tela de bilhetes abriu corretamente

Grupo de Bilhetes
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Grupo de Bilhetes
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    2
    Então valido o titulo clico em novo e em voltar    Gerenciamento de Grupos de Bilhetes

Grupos de Pré-Vendas
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Grupos de Pré-Vendas
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    3
    Então valido o titulo clico em novo e em voltar    Gerenciamento de Grupos de Pre-Venda

Grupos de Usuários
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Grupos de Usuários
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    5    1
    Então valido o titulo clico em novo e em voltar    Gerenciamento de Grupos de Usuários

Categorias
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Categorias
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    5    2
    Então valido o titulo clico em novo e em voltar    Gerenciamento de Categorias

Grupos de Categorias
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Grupos de Categorias
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    5    3
    Então valido o titulo clico em novo e em voltar    Gerenciamento de Grupos de Categorias

Receitas
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Receitas
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    6    1
    Então valido o titulo clico em novo e em voltar    Gerenciamento de Receitas

Termo de Aceite
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Termo de Aceite
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    6    2
    Então valido o titulo clico em novo e em voltar    Gerenciamento de Termos de Aceite

Texto de E-mail
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Texto de E-mail
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    6    3
    Então valido o titulo clico em novo e em voltar    Gerenciamento de Textos de E-mail

SAC's
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     SAC's
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    7    1
    Então valido o titulo clico em novo e em voltar    Gerenciamento de SAC

Credenciados
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Credenciados
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    7    2
    Então valido o titulo clico em novo e em voltar    Gerenciamento de Credenciados

FAQ's
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     FAQ's
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    7    3
    Então valido o titulo clico em novo e em voltar    Gerenciamento de FAQ's
    