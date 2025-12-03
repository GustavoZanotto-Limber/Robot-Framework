*** Settings ***
Documentation    Smoke Test: CARD
Resource         ../../../Resources/Base/Base_CARD.robot
Resource         ../../../Resources/BDD/BDD_Web.robot
Resource         ../../../Resources/BDD/BDD_SmokeCard.robot

Suite Setup      Abrir CARD e logar 
Suite Teardown   Fechar Navegador
Test Teardown    Caso aconteca erro SmokeWeb  ${Caminho_Screenshots}Erros/    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/SmokeTest/CARD/Paginas sem atenticação/
${nome_print}

*** Test Cases ***