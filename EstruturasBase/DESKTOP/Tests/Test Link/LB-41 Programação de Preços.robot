*** Settings ***
Documentation     Testes regressivos: Programação de Preços
Resource          ../../Resources/BaseWeb.robot
Resource          ../../Resources/KeywordWeb.robot
Suite Setup       Abrir CARD e logar 
# Suite Teardown    Inativar Bilhete    ${numero_bilhete}
# Test Teardown     Caso aconteca erro WEB    ${Caminho_Screenshots}Erros/    ${nome_print}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/Testes Regressivos/LB-41 Programação de Preços/ 
${nome_print}
${texto_bilhete}
${numero_bilhete}=  6275
${nome_bilhete}=  Bilhete Automatizado: Por Horario

*** Keywords ***

*** Test Cases ***

Cenário 1: Cadastro de uma nova tarifa
    ${nome_print}=    Set Variable     Cadastro de um bilhete por Horario_Vaga
    [Tags]    Testes_Funcionais    LB-41
    Dado que estou na tela de preço e disponibilidade    ${numero_bilhete}    Tabela de Preço Automatizada (TAXA)    taxa=150
    Quando ele insere a tabela com taxa no calendario    
    Então valido se a tarifa foi salva corretamente    


Cenário 2: Cadastro de um novo convênio
    ${nome_print}=    Set Variable     Cadastro de um novo convênio
    [Tags]    Testes_Funcionais    LB-41
    Dado que o usuário acessa o Cadastro de Categorias
    Quando adiciono o convênio no bilhete
    Então Valido se o convênio foi salvo corretamente                
