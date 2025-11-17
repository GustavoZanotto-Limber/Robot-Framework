*** Settings ***
Documentation     Testes regressivos: Cadastro e alteracao de Programacao de Horario
Resource          ../../../../Resources/Base/BaseKeywordsCARD.robot
Resource          ../../../../Resources/BDD/BDDKeywordsWeb.robot
Suite Setup       Abrir CARD e logar 
Suite Teardown    Inativar bilhete   ${numero_bilhete}    
Test Teardown     Caso ocorra erro    ${nome_print}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/Testes Regressivos/Bilheteria/Front - Padrao/LB-42 Cadastro e alteracao de Programacao de Horario/ 
${nome_print}
${texto_bilhete}
${numero_bilhete}=         6491
${nome_bilhete}=           LB-42 Cadastro e alteração de Programação de Horario
    
*** Keywords ***

Caso ocorra erro
    [Arguments]    ${nome_print}
    Caso aconteca erro WEB          ${Caminho_Screenshots}Erros/    ${nome_print}
    Run keyword and ignore error    Excluir tabela de preço e disponibilidade    ${numero_bilhete}
    Sleep    2s
    @{ano_mes_dia}=  Get Time	    year month day 
    Run keyword and ignore error    Limpar dia do calendário    ${ano_mes_dia[2]}    ${ano_mes_dia[1]}
    Run Keyword if test Failed      Retirar bilhete do e-commerce   ${numero_bilhete}    2
    Run Keyword if test Failed      Set Suite Variable              ${numero_bilhete}    6491
    

Cenario 1
    [Arguments]    ${nome_print}
    Caso aconteca erro WEB          ${Caminho_Screenshots}Erros/    ${nome_print}

*** Test Cases    ***

Cenário 1: Cadastro de um bilhete por Horario/Vaga
     [Teardown]     Cenario 1    ${nome_print}
    ${nome_print}=    Set Variable     Cadastro de um bilhete por Horario_Vaga
    [Tags]    Testes_Funcionais    LB-42
    Dado que estou na tela de criação de bilhete
    Quando insiro as informações para um novo cadastro de bilhete 
    ${numero_bilhete}=    Então valido se o bilhete foi criado corretamente

Cenário 2: Associação de um horario a um bilhete
    ${nome_print}=    Set Variable     Associação de um horario a um bilhete
    [Tags]    Testes_Funcionais    LB-42
    Dado que estou na tela de preço e disponibilidade                        ${numero_bilhete}
    Quando crio uma nova tabela de preço e disponibilidade para o bilhete    ${numero_bilhete}
    Então valido se a disponibilidade integrou corretamente                  ${numero_bilhete}

Cenário 3: Alteração do saldo de horário com motivo registrado
    ${nome_print}=    Set Variable     Alteração do saldo de horário com motivo registrado
    [Tags]    Testes_Funcionais    LB-42
    Dado que estou na tela de Exceções de Preço e Disponibilidade    ${numero_bilhete}
    Quando crio uma Exceção de Disponibilidade para o bilhete
    Então valido a Exceção no E-commerce e na bilheteria           ${numero_bilhete}    5

Cenário 4: Emissão de bilhete com saldo atualizado
    ${nome_print}=    Set Variable     Emissão de bilhete com saldo atualizado    
    [Tags]    Testes_Funcionais    LB-42
    Dado que estou na tela de emissão de bilhetes                  ${numero_bilhete}
    Quando emito um bilhete com saldo atualizado                   ${numero_bilhete}    1000
    Então valido se a quantidade foi reduzida corretamente         1000    ${numero_bilhete}

Cenário 5: Bloqueio de Horário
    ${nome_print}=    Set Variable     Bloqueio de Horário
    [Tags]    Testes_Funcionais    LB-42
    Dado que estou na tela de Exceções de Preço e Disponibilidade       ${numero_bilhete}
    Quando realizo o bloqueio de horário para o bilhete                 ${numero_bilhete}    
    Então valido o bloqueio de horário no E-commerce e na bilheteria    ${numero_bilhete}   
