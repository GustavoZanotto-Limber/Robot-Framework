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

Dashboard
    [Tags]        CARD    SmokeTest
    ${nome_print}=    Set Variable    Dashboard
    Dado que loguei no CARD
    Quando eu acessar o Dashboard
    Então o sistema deve apresentar o Dashboard corretamente
