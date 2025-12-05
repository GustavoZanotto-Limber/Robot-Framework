*** Settings ***
Documentation     Testes regressivos: Impressão de Bilhete
Resource          ../../../Resources/Base/Base_CARD.robot
Resource          ../../../Resources/BDD/BDD_Web.robot
Resource          ../../../Resources/BDD/BDD_RegressivosCARD.robot
Suite Setup       Abrir CARD e logar
Test Teardown     Caso aconteca erro WEB    ${Caminho_Screenshots}    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/Testes Regressivos/CARD/LB-28 Remarcação De Visitas/ 
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

Cenário 3: Tentativa de remarcação após leitura ou confirmação
    ${nome_print}=    Set Variable    Remarcação via E-Commerce
    [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-28
    Dado que estou no e-commerce                                LB-28 Remarcação de Visitas
    Quando faço a venda do bilhete com multiplas categorias                             1    5    2    1
    E realizo a leitura ou confirmação do bilhete vendido
    Então tento realizar a remarcação via CARD e recebo a mensagem de erro apropriada