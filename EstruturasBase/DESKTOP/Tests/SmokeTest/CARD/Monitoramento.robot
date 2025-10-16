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

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/CARD/Monitoramento/
${nome_print}

*** Test Cases ***

Notificações
    [Tags]        CARD    SmokeTest    Monitoramento    SmokeCARD
    ${nome_print}=    Set Variable     Notificações
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    10    1
    Então valido se a tela de Notificações foi carregada corretamente

Logs Nuvem
    [Tags]        CARD    SmokeTest    Monitoramento    SmokeCARD
    ${nome_print}=    Set Variable     Log Nuvem
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    10    2
    Então valido se a tela de Logs Nuvem foi carregada corretamente