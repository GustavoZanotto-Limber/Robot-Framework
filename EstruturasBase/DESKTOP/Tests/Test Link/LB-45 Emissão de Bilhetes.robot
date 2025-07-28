*** Settings ***
Documentation    Testes regressivos: Emissão de Bilhetes e Reimpressão de bilhetes
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Resource         ../../Resources/Keywords.robot
Suite Setup      Iniciar sessao e abrir caixa    ${nome_exe}   
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2    ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/Testes Regressivos/Emissão de Bilhetes e Reimpressão de bilhetes/ 
${caminho_logs}=     C:/Users/Gustavo Zanotto/Documents/Testes Regressivos/
${nome_exe}=    cde_win_bca_frontR40
${nome_print}
${texto_bilhete}
*** Keywords ***


*** Test Cases    ***

Cenário 1: Emissão de bilhetes para diferentes categorias
    ${nome_print}=    Set Variable     Emissão de Bilhetes para diferentes categorias
    @{texto_bilhete}=   Set Variable     5875 - Z - Bilhete integrado    4321 - CATEGORIA 1    4369 - CATEGORIA 2 - INTEGRADA    4389 - CATEGORIA 3 - INTEGRADA
    [Tags]    Testes Funcionais    LB-45   
    Dado que realizei uma venda com multiplas categorias
    Quando finalizo o pagamento    3
    Então valido a venda foi realizada com sucesso    @{texto_bilhete}    metodo=DINHEIRO    valor=111,00

Cenário 2: Emissão de bilhetes com categoria e convênio
    ${nome_print}=    Set Variable     Emissão de bilhetes com categoria e convênio
    @{texto_bilhete}=   Create List     5875 - Z - Bilhete integrado    4401 - Categoria Convênio
    [Tags]    Testes Funcionais    LB-45   
    Dado que realizei uma venda com convênio
    Quando finalizo o pagamento    1
    Então valido a venda foi realizada com sucesso    @{texto_bilhete}        metodo=DINHEIRO        valor=1,00

# Cenário 3: Restrição para vendas com quantidade excessiva de bilhetes 
#     ${nome_print}=    Set Variable     Restrição para vendas com quantidade excessiva de bilhetes 
#     @{texto_bilhete}=   Create List     
#     [Tags]    Testes Funcionais    LB-45   
#     Dado que realizei uma venda com convênio
#     Quando finalizo o pagamento    1
#     Então valido a venda foi realizada com sucesso    @{texto_bilhete}        metodo=DINHEIRO        valor=1,00

Cenário 4: Compra de bilhetes diferentes na mesma venda  
    ${nome_print}=    Set Variable     Compra de bilhetes diferentes na mesma venda  
    @{texto_bilhete}=   Create List     5875 - Z - Bilhete integrado    4321 - CATEGORIA 1    6080 - Z - Bilhete integrado 2
    [Tags]    Testes Funcionais    LB-45   
    Dado que realizei uma venda com dois bilhetes
    Quando finalizo o pagamento    2
    Então valido a venda foi realizada com sucesso    @{texto_bilhete}        metodo=DINHEIRO        valor=200,00

# Cenário 5: Cadastro de dados do titular e visitante na emissão de bilhete
#     ${nome_print}=    Set Variable     Cadastro de dados do titular e visitante na emissão de bilhete  
#     @{texto_bilhete}=   Create List     5875 - Z - Bilhete integrado    4321 - CATEGORIA 1    6080 - Z - Bilhete integrado 2
#     [Tags]    Testes Funcionais    LB-45   
#     Dado que realizei uma venda com dois bilhetes
#     Quando finalizo o pagamento    2
#     Então valido a venda foi realizada com sucesso    @{texto_bilhete}        metodo=DINHEIRO        valor=200,00

Cenário 6: Redução da disponibilidade após cada venda  
    ${nome_print}=    Set Variable     Redução da disponibilidade após cada venda  
    @{texto_bilhete}=   Create List     5875 - Z - Bilhete integrado    4321 - CATEGORIA 1
    [Tags]    Testes Funcionais    LB-45   
    Dado que realizei uma venda verificando a quantidade de bilhetes
    #Quando finalizo o pagamento    2
    #Então valido a venda foi realizada com sucesso    @{texto_bilhete}        metodo=DINHEIRO        valor=200,00