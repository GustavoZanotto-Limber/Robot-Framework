*** Settings ***
Documentation    Smoke Test: CARD
Resource         ../../../Resources/Base/BaseKeywordsCARD.robot
Resource         ../../../Resources/BDD/BDDKeywordsWeb.robot
Resource         ../../../Resources/BDD/BDDSmokeCard.robot
Suite Setup      Abrir CARD e logar 
Suite Teardown   Fechar Navegador
Test Teardown    Caso aconteca erro SmokeWeb  ${Caminho_Screenshots}Erros/    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/SmokeTest/CARD/Agências_Parceiros/
${nome_print}

*** Test Cases ***

Requisições de Acordo
    [Tags]        CARD    SmokeTest    Agências_Parceiros    SmokeCARD
    ${nome_print}=    Set Variable     Requisições de Acordo
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    7    1
    Então valido as Requisições de Acordo