*** Settings ***
Documentation     Testes regressivos: Programação de Preços
Resource          ../../Resources/BaseWeb.robot
Resource          ../../Resources/KeywordWeb.robot
Suite Setup       Abrir CARD e logar 
Suite Teardown    Encerrar Tudo 
Test Teardown     Caso aconteca erro WEB    ${Caminho_Screenshots}Erros/    ${nome_print}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/Testes Regressivos/LB-42 Cadastro e alteracao de Programacao de Horario/ 
${nome_print}
${texto_bilhete}
${numero_bilhete}=  6275
${nome_bilhete}=  Bilhete Automatizado: Por Horario
*** Keywords ***