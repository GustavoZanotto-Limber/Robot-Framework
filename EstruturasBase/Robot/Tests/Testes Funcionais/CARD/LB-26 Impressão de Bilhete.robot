*** Settings ***
Documentation     Testes regressivos: Impressão de Bilhete
Resource          ../../../Resources/Base/BaseKeywordsCARD.robot
Resource          ../../../Resources/BDD/BDDKeywordsWeb.robot
Resource          ../../../Resources/BDD/BDDRegressivosCARD.robot
Suite Setup       Iniciar Suite
Test Teardown     Em caso de erro    ${nome_print}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/Testes Regressivos/CARD/LB-26 Impressão de Bilhete/ 
${Caminho_arquivos}
${nome_print}

*** Keywords ***

Iniciar Suite
    ${caminho}=       Replace String    ${EXECDIR}       \\Robot_Framework     ${EMPTY}
    Set Suite Variable    ${Caminho_arquivos}     ${caminho}\\Documents\\Testes_Regressivos\\CARD\\
    Abrir CARD e logar  

Em caso de erro
    [Arguments]    ${nome_print}
    Run Keyword if test Failed            Run Keyword And Ignore Error    ALT F4
    Caso aconteca erro Regressivos CARD   ${Caminho_Screenshots}Erros/    ${nome_print}
    

*** Test Cases ***

Cenário 1: Impressão via E-commerce    
    ${nome_print}=    Set Variable     Impressão via E-commerce
    [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-26
    Dado que estou no e-commerce                                LB-26 Impressão de Bilhete
    Quando faço a venda do bilhete                              1    1
    Então valido a impressão no e-commerce                      ${Caminho_arquivos}   	Impressão_E-Commerce.pdf - WPS Office    ${Caminho_Screenshots}

Cenário 2: Impressão na plataforma CARD   
    ${nome_print}=    Set Variable     Impressão na plataforma CARD  
    [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-26
    Dado que estou no e-commerce                                LB-26 Impressão de Bilhete
    Quando faço a venda do bilhete                              1    1
    Então valido a impressão na plataforma CARD                 ${Caminho_arquivos}    Impressão_Celular_CARD.pdf    ${Caminho_Screenshots}

# Cenário 3 a impressão é via TICK ingressos a automação não contempla este fluxo no momento.

Cenário 4: Impressão com itens Cancelados Parcial e Total
    ${nome_print}=    Set Variable     Impressão com itens Cancelados Parcial e Total
    [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-26
    Dado que estou no e-commerce    LB-26 Impressão de Bilhete
    Quando faço a venda do bilhete      1    2
    #E
    @{data_e_hora}=    Quando Cancelo um dos ingressos
    Então valido a impressão com itens Cancelados Parcial        ${Caminho_arquivos}    Impressão_Cancelada.pdf    ${Caminho_Screenshots}    @{data_e_hora}    
    #E
    Então valido a impressão com cancelamento total               ${Caminho_arquivos}       ${Caminho_Screenshots}      @{data_e_hora}

Cenário 5: Impressão de bilhetes, validação layout
    ${nome_print}=    Set Variable     Impressão de bilhetes, validação layout
    [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-26
    Dado que estou no e-commerce    LB-26 Impressão de Bilhete
    Quando faço a venda do bilhete       1    1
    Então valido o layout da impressão                            ${Caminho_arquivos}       ${Caminho_Screenshots}               
    


