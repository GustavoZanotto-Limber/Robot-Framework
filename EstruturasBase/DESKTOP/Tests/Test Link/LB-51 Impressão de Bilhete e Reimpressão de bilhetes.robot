*** Settings ***
Documentation    Testes regressivos: Test Link
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Resource         ../../Resources/Keywords.robot
Suite Setup      Iniciar sessao Front

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/Testes Regressivos/LB-51 Impressão de Bilhete e Reimpressão de bilhetes/ 

*** Keywords ***


*** Test Cases    ***

Cenário: Emissão de Bilhete
    Dado que realizei uma venda