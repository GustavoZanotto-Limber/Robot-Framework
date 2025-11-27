*** Settings ***
Documentation     Testes regressivos: Impressão de Bilhete
Resource          ../../../Resources/Base/BaseKeywordsCARD.robot
Resource          ../../../Resources/BDD/BDDKeywordsWeb.robot
Resource          ../../../Resources/BDD/BDDRegressivosCARD.robot
Suite Setup       Abrir CARD e logar
Test Teardown     Caso aconteca erro WEB    ${Caminho_Screenshots}    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/Testes Regressivos/CARD/LB-26 Impressão de Bilhete/ 
${Caminho_arquivos}
${nome_print}

*** Test Cases ***

Cenário 1: Remarcação via E-Commerce
    ${nome_print}=    Set Variable    Remarcação via E-Commerce
    [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-28
    Dado que estou no e-commerce                                LB-28 Remarcação de Visitas
    Quando faço a venda do bilhete                              1    1      Automação de Testes   5    12345678900    01011990    46999999999    1    3    Brasil     85509432
    Então realizo a remarcação via E-Commerce

Cenário 2: Remarcação via CARD
    ${nome_print}=    Set Variable    Remarcação via E-Commerce
    [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-28
    Dado que estou no e-commerce                                LB-28 Remarcação de Visitas
    Quando faço a venda do bilhete com multiplas categorias                             1    1    2    1
    Então realizo a remarcação via CARD