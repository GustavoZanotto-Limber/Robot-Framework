*** Settings ***
Documentation    Smoke Test: CARD
Resource         ../../../Resources/BDD/BDDSmokeCard.robot

Resource         ../../../Resources/Base/BaseKeywordsCARD.robot
Suite Setup      Abrir CARD e logar 
Suite Teardown   Fechar Navegador
Test Teardown    Caso aconteca erro SmokeWeb  ${Caminho_Screenshots}Erros/    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/CARD/Ferramentas/
${nome_print}

*** Test Cases ***

Agrupador de Agências/Parceiros
    [Tags]        CARD    SmokeTest    Ferramentas    SmokeCARD
    ${nome_print}=    Set Variable     Agrupador de Agências_Parceiros
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    13    1
    Então valido o cadastro de Agrupador de Agências