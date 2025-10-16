*** Settings ***
Documentation    Smoke Test: CARD
Resource         ../../../Resources/CARD/BDDSmokeCard.robot
Resource         ../../../Resources/CARD/BaseSmokeTestCard.robot
Resource         ../../../Resources/BILHETERIA/BaseKeywordsWeb.robot
Suite Setup      Abrir CARD e logar 
Suite Teardown   Fechar Navegador
Test Teardown    Caso aconteca erro SmokeWeb  ${Caminho_Screenshots}Erros/    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/CARD/SAC/
${nome_print}

*** Test Cases ***

SAC 
    [Tags]        CARD    SmokeTest    SAC    SmokeCARD
    ${nome_print}=    Set Variable     SAC 
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    6    
    Então Valido a tela de SAC