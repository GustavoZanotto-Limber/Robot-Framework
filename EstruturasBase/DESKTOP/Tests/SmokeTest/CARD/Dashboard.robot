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

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/CARD/Dashboard/
${nome_print}

*** Test Cases ***

Dashboard
    [Tags]        CARD    SmokeTest    Dashboard    SmokeCARD
    ${nome_print}=    Set Variable    Dashboard
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    1
    Então o sistema deve apresentar o Dashboard corretamente
