*** Settings ***
Documentation    Testes regressivos: Cadastro e alteracao de Programacao de Horario
Resource         ../../Resources/BaseWeb.robot
Resource         ../../Resources/KeywordWeb.robot
Suite Setup      Abrir CARD e logar 
#Suite Teardown   Fechar navegador
#Test Teardown    Caso aconteca erro WEB    ${Caminho_Screenshots}Erros/    ${nome_print}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/Testes Regressivos/LB-42 Cadastro e alteracao de Programacao de Horario/ 
${nome_print}
${texto_bilhete}
${numero_bilhete}=  6275
*** Keywords ***



*** Test Cases    ***

Cenário 1: Cadastro de um bilhete por Horario/Vaga
    ${nome_print}=    Set Variable     Cadastro de um bilhete por Horario_Vaga
    [Tags]    Testes_Funcionais    LB-42
    Dado que estou na tela de criação de bilhete
    Quando insiro as informações para um novo cadastro de bilhete 
    Então valido se o bilhete foi criado corretamente
    

Cenário 2: Associação de um horario a um bilhete
    ${nome_print}=    Set Variable     Associação de um horario a um bilhete
    [Tags]    Testes_Funcionais    LB-42
    Dado que estou na tela de preço e disponibilidade    ${numero_bilhete}
    Quando crio uma nova tabela de preço e disponibilidade para o bilhete    ${numero_bilhete}
    Então valido se a disponibilidade integrou corretamente     ${numero_bilhete}