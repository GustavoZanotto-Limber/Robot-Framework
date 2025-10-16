*** Settings ***
Documentation    Smoke Test: CARD
Resource         ../../../Resources/BILHETERIA/BaseKeywordsWeb.robot
Resource         ../../../Resources/BILHETERIA/BDDKeywordsWeb.robot
Resource         ../../../Resources/CARD/BDDSmokeCard.robot
Resource         ../../../Resources/CARD/BaseSmokeTestCard.robot
Suite Setup      Abrir CARD e logar 
Suite Teardown   Fechar Navegador
Test Teardown    Caso aconteca erro SmokeWeb  ${Caminho_Screenshots}Erros/    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/CARD/Agências_Parceiros/
${nome_print}

*** Test Cases ***

Requisições de Acordo
    [Tags]        CARD    SmokeTest    Agências_Parceiros    SmokeCARD
    ${nome_print}=    Set Variable     Requisições de Acordo
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    7    1
    Então valido as Requisições de Acordo