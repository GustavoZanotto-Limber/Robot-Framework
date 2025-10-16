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

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/CARD/Central de Vendas/
${nome_print}

*** Test Cases ***

Central de Vendas
    [Tags]        CARD    SmokeTest    Páginas sem autenticação    SmokeCARD
    ${nome_print}=    Set Variable     Central de Vendas
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    13    
    Então valido se a tela de Central de Vendas foi carregada corretamente