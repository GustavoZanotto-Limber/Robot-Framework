*** Settings ***
Documentation     Testes regressivos: Programação de Preços
Resource          ../../../../Resources/Base/BaseKeywordsCARD.robot
Resource          ../../../../Resources/BDD/BDDKeywordsWeb.robot
Suite Setup       Abrir CARD e logar 
Test Teardown     Encerrar Cenário    ${nome_print}    ${Caminho_Screenshots}
*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/Testes Regressivos/Bilheteria/Front - Padrao/LB-41 Programacao de Preço/ 
${nome_print}
${texto_bilhete}
${numero_bilhete}=  6422


*** Keywords ***

Encerrar Cenário 2
    [Arguments]    ${nome_print}
    Encerrar Cenário    ${nome_print}    ${Caminho_Screenshots}
    Retirar Categoria  2  6422
    Run Keyword And Ignore Error    Excluir Categoria   ${numero_categoria}
    Sleep    2s
    
Encerrar cenário 3
    [Arguments]    ${nome_print}
    Encerrar Cenário    ${nome_print}    ${Caminho_Screenshots}
    Run Keyword And Ignore Error    Retirar Categoria  3  6422
    Run Keyword And Ignore Error    Retirar Categoria  2  6422

Encerrar Cenário 4
    [Arguments]    ${nome_print}
    Encerrar Cenário    ${nome_print}    ${Caminho_Screenshots}
    @{ano_mes_dia}=  Get Time	year month day 
    ${dia_numero}=    Convert To Integer    ${ano_mes_dia[2]}
    ${amanha}=    Evaluate    ${dia_numero} + 1
    Run Keyword and ignore error    Limpar dia do calendário       ${ano_mes_dia[1]}    ${amanha}
<<<<<<< HEAD
    Run Keyword and ignore error    Retirar temporada    6422    2
=======
    Sleep    3s
    Retirar temporada    6422    2
>>>>>>> 98e5622aa9f08d638439b2c5ee560cf76f363dd0
    

*** Test Cases ***

Cenário 1: Cadastro de uma nova tarifa
    ${nome_print}=    Set Variable     Cadastro de uma nova tarifa
    [Tags]    Testes_Funcionais    LB-41
    Dado que estou na tela de preço e disponibilidade    ${numero_bilhete}    Tabela de Preço Automatizada (TAXA)    taxa=150
    Quando ele insere a tabela com taxa no calendario    ${numero_bilhete}
    Então valido se a tarifa foi salva corretamente    

Cenário 2: Cadastro de um novo convênio
    [Teardown]        Encerrar Cenário 2    ${nome_print}
    ${nome_print}=    Set Variable     Cadastro de um novo convênio
    [Tags]    Testes_Funcionais    LB-41
    Dado que o usuário acessa o Cadastro de Categorias
    Quando adiciono o convênio no bilhete    ${numero_bilhete}
    Então Valido se o convênio foi salvo corretamente

Cenário 3: Cadastro de preços para diferentes categorias
    [Teardown]        Encerrar cenário 3    ${nome_print}
    ${nome_print}=    Set Variable     Cadastro de preços para diferentes categorias
    [Tags]    Testes_Funcionais    LB-41
    Dado que adicionei uma categoria no bilhete  
    Quando cadastro a tabela de preço
    Então valido se os preços foram salvos corretamente    6422

Cenário 4: Configuração de preços por temporada
    [Teardown]        Encerrar Cenário 4    ${nome_print}
    ${nome_print}=    Set Variable     Configuração de preços por temporada
    [Tags]    Testes_Funcionais    LB-41
    Dado que criei novas temporadas              6422
    Quando coloco as temporadas no calendario    6422
    Então valido as temporadas no E-Commerce     6422

#Cenário 5: Associação de Receita à configuração de preços
    #${nome_print}=    Set Variable     Associação de Receita à configuração de preços
    #[Tags]    Testes_Funcionais    LB-41
    #Dado que estou na tela de preço e disponibilidade    6422
    #Quando crio uma nova tabela de preço e disponibilidade para o bilhete    6422
    #Então valido se o preço foi salvo corretamente       6422
