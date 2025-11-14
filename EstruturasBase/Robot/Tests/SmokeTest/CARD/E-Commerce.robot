*** Settings ***
Documentation    Smoke Test: CARD
Resource         ../../../Resources/Base/BaseKeywordsCARD.robot
Resource         ../../../Resources/BDD/BDDKeywordsWeb.robot
Resource         ../../../Resources/BDD/BDDSmokeCard.robot

Suite Setup      Abrir CARD e logar 
Suite Teardown   Fechar Navegador
Test Teardown    Caso aconteca erro SmokeWeb  ${Caminho_Screenshots}Erros/    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/CARD/E-Commerce/
${nome_print}

*** Test Cases ***

Cadastro de E-Commerce's
    [Tags]        CARD    SmokeTest    E-Commerce    SmokeCARD
    ${nome_print}=    Set Variable     Cadastro de E-Commerce's
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    11    1
    Então valido o cadastro de e-commerce  

Clientes
    [Tags]        CARD    SmokeTest    E-Commerce    SmokeCARD
    ${nome_print}=    Set Variable     Clientes
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    11    2
    Então valido o cadastro de Clientes de E-Commerce's

Cupons de Desconto
    [Tags]        CARD    SmokeTest    E-Commerce    SmokeCARD
    ${nome_print}=    Set Variable     Cupons de Desconto
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    11    3
    Então valido o titulo clico em novo    Gerenciamento de Cupons de Desconto    Novo Cupom de Desconto    cupom-desconto   app-new-or-edit-cupom-desconto

