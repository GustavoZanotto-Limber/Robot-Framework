*** Settings ***
Documentation     Testes regressivos: Impressão de Bilhete
Resource          ../../../Resources/Base/BaseKeywordsCARD.robot
Resource          ../../../Resources/BDD/BDDKeywordsWeb.robot
Resource          ../../../Resources/BDD/BDDRegressivosCARD.robot
Suite Setup       Abrir CARD e logar
Test Teardown     Caso aconteca erro Regressivos CARD   ${Caminho_Screenshots}Erros/    ${nome_print}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/Testes Regressivos/LB-26 Impressão de Bilhete/ 
${nome_print}

*** Test Cases ***

Impressão via E-commerce    
    ${nome_print}=    Set Variable     Impressão via E-commerce
    [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-26
    Dado que estou no e-commerce
    Quando faço a venda do bilhete    TESTE DE IMPRESSÃO
    # Então valido a impressão no e-commerce