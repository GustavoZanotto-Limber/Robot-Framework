*** Settings ***
Documentation    Smoke Test: CARD
Resource         ../../../Resources/Base/BaseKeywordsCARD.robot
Resource         ../../../Resources/BDD/BDDKeywordsWeb.robot
Resource         ../../../Resources/BDD/BDDSmokeCard.robot
Suite Setup      Abrir CARD e logar 
Suite Teardown   Fechar Navegador
Test Teardown    Caso aconteca erro SmokeWeb  ${Caminho_Screenshots}Erros/    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/CARD/Tick Ingressos/
${nome_print}

*** Test Cases ***

Cadastro de Tick Ingressos
    [Tags]        CARD    SmokeTest    Tick Ingressos    SmokeCARD
    ${nome_print}=    Set Variable     Cadastro Tick Ingressos
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    12    1
    Então valido o cadastro de Tick Ingressos

Localizar Terminal
    [Tags]        CARD    SmokeTest    Tick Ingressos    SmokeCARD
    ${nome_print}=    Set Variable     Localizar Terminal
    Dado que estou na página inicial do CARD
    Quando acesso a tela de consulta de terminal
    Então valido a localização de Terminal