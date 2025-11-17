*** Settings ***
Documentation     Testes regressivos: Impressão de Bilhete
Resource          ../../../Resources/Base/BaseKeywordsCARD.robot
Resource          ../../../Resources/BDD/BDDKeywordsWeb.robot
Resource          ../../../Resources/BDD/BDDRegressivosCARD.robot
Suite Setup       Abrir CARD e logar
Test Teardown     Caso aconteca erro Regressivos CARD   ${Caminho_Screenshots}Erros/    ${nome_print}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/Testes Regressivos/CARD/LB-26 Impressão de Bilhete/ 
${nome_print}

*** Test Cases ***

Cenário 1: Impressão via E-commerce    
    ${nome_print}=    Set Variable     Impressão via E-commerce
    [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-26
    Dado que estou no e-commerce    LB-26 Impressão de Bilhete
    Quando faço a venda do bilhete        1    1
    # Então valido a impressão no e-commerce

Cenário 2: Impressão na plataforma CARD   
    ${nome_print}=    Set Variable     Impressão na plataforma CARD  
    [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-26
    Dado que estou no e-commerce    LB-26 Impressão de Bilhete
    Quando faço a venda do bilhete        1    1
    # Então valido a impressão na plataforma CARD

# Cenário 3 a impressão é via TICK ingressos a automação não contempla este fluxo no momento.

Cenário 4: Impressão com itens Cancelados Parcial e Total
    ${nome_print}=    Set Variable     Impressão com itens Cancelados Parcial e Total
    [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-26
    Dado que estou no e-commerce    LB-26 Impressão de Bilhete
    Quando faço a venda do bilhete      1    2
    # Então valido a impressão com itens Cancelados Parcial e Total

Cenário 5: Impressão de bilhetes, validação layout
    ${nome_print}=    Set Variable     Impressão de bilhetes, validação layout
    [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-26
    Dado que estou no e-commerce    LB-26 Impressão de Bilhete
    Quando faço a venda do bilhete       1    1
    # Então valido a impressão de bilhetes, validação layout

