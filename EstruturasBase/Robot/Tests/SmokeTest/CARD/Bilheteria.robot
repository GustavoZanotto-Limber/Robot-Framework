*** Settings ***
Documentation    Smoke Test: CARD
Resource         ../../../Resources/BDD/BDDSmokeCard.robot
Resource         ../../../Resources/Base/BaseKeywordsCARD.robot
Suite Setup      Abrir CARD e logar 
Suite Teardown   Fechar navegador
Test Teardown    Caso aconteca erro SmokeWeb  ${Caminho_Screenshots}Erros/    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/CARD/Bilheteria/
${nome_print}

*** Test Cases ***

Bilheteria 
    [Tags]        CARD    SmokeTest    Bilheteria    SmokeCARD
    ${nome_print}=    Set Variable     Bilheteria 
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    8   
    Então Valido a tela de bilheteria