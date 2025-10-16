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

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/CARD/Precos e Disponibilidades/
${nome_print}

*** Test Cases ***

Configuração de preços e Disponibilidades    
    [Tags]        CARD    SmokeTest    Precos e Disponibilidades    SmokeCARD
    ${nome_print}=    Set Variable     Configuração de preços e Disponibilidades
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    5    1
    Então valido se a tela de Configuração de preços e Disponibilidades foi carregada corretamente

Gerenciamento de Lotes
    [Tags]        CARD    SmokeTest    Precos e Disponibilidades    SmokeCARD
    ${nome_print}=    Set Variable     Gerenciamento de Lotes    
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    5    2
    Então valido se a tela de Gerenciamento de Lotes foi carregada corretamente

Ocupação de Disponibilidade Online
    [Tags]        CARD    SmokeTest    Precos e Disponibilidades    SmokeCARD
    ${nome_print}=    Set Variable     Ocupação de Disponibilidade Online
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    5    3
    Então valido se a tela de Ocupação de Disponibilidade Online foi carregada corretamente