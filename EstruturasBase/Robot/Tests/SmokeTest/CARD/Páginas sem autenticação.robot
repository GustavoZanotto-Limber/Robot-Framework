*** Settings ***
Documentation    Smoke Test: CARD
Resource         ../../../Resources/Base/BaseKeywordsCARD.robot
Resource         ../../../Resources/BDD/BDDKeywordsWeb.robot
Resource         ../../../Resources/BDD/BDDSmokeCard.robot

Suite Setup      Abrir CARD e logar 
Suite Teardown   Fechar Navegador
Test Teardown    Caso aconteca erro SmokeWeb  ${Caminho_Screenshots}Erros/    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/CARD/Paginas sem atenticação/
${nome_print}

*** Test Cases ***