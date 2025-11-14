*** Settings ***
Documentation    Testes regressivos: Emissão de Bilhetes e Reimpressão de bilhetes
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Resource         ../../../../Resources/BDD/BDDKeywordsDesktop.robot
Suite Setup      Iniciar sessao e abrir caixa    ${nome_exe}   
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2    ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/Testes Regressivos/Bilheteria/Front - Padrao/LB-45 Emissão de Bilhetes/ 
${caminho_logs}=     C:\\Users\\gustavo.zanotto_limb\\Documents\\Testes_Regressivos\\
${nome_exe}=    cde_win_bca_front
${nome_print}
${texto_bilhete}

*** Keywords ***


*** Test Cases    ***


Cenário 1: Emissão de bilhetes para diferentes categorias
    ${nome_print}=    Set Variable     Emissão de Bilhetes para diferentes categorias
    @{texto_bilhete}=   Set Variable     6660 - LB-45 Bilhete Integrado    4651 - Categoria 1    4683 - Categoria 2    4684 - Categoria 3
    [Tags]    Testes_Funcionais    LB-45   
    Dado que realizei uma venda com multiplas categorias
    Quando finalizo o pagamento    3
    Então valido a venda foi realizada com sucesso    @{texto_bilhete}        metodo=DINHEIRO    valor=111,00

Cenário 2: Emissão de bilhetes com categoria e convênio
    ${nome_print}=    Set Variable     Emissão de bilhetes com categoria e convênio
    @{texto_bilhete}=   Create List     6660 - LB-45 Bilhete Integrado    4916 - Convênio
    [Tags]    Testes_Funcionais    LB-45   
    Dado que realizei uma venda com convênio
    Quando finalizo o pagamento    1
    Então valido a venda foi realizada com sucesso    @{texto_bilhete}        metodo=DINHEIRO        valor=1,00

#TODO: Arrumar a quantidade excessiva para um valor menor ou realizar uma venda com a quantidade ja estabelecida 
# Cenário 3: Restrição para vendas com quantidade excessiva de bilhetes 
#     ${nome_print}=    Set Variable     Restrição para vendas com quantidade excessiva de bilhetes 
#     @{texto_bilhete}=   Create List     
#     [Tags]    Testes_Funcionais    LB-45   
#     Dado que realizei uma venda com convênio
#     Quando finalizo o pagamento    1
#     Então valido a venda foi realizada com sucesso    @{texto_bilhete}        metodo=DINHEIRO        valor=1,00

Cenário 4: Compra de bilhetes diferentes na mesma venda  
    ${nome_print}=    Set Variable     Compra de bilhetes diferentes na mesma venda  
    @{texto_bilhete}=   Create List     6660 - LB-45 Bilhete Integrado    4651 - Categoria 1    6661 - LB-45 Bilhete Integrado 2
    [Tags]    Testes_Funcionais    LB-45   
    Dado que realizei uma venda com dois bilhetes
    Quando finalizo o pagamento    2
    Então valido a venda foi realizada com sucesso    @{texto_bilhete}        metodo=DINHEIRO        valor=200,00

Cenário 5: Cadastro de dados do titular e visitante na emissão de bilhete
    ${nome_print}=    Set Variable     Cadastro de dados do titular e visitante na emissão de bilhete  
    @{texto_bilhete}=   Create List     6663 - LB-45 Bilhete Integrado - Coleta dados do Usuário     4651 - Categoria 1    PR    1 - BRASIL    GUSTAVO ZANOTTO AUTOMATIZADO     09285844960    5546999999999    Masculino     Ensino Superior Incompleto    22/08/2000
    [Tags]    Testes_Funcionais    LB-45   
    Dado que realizei uma reserva preenchendo os dados do titular e visitante
    Quando finalizo o pagamento    1
    Então valido a venda foi realizada com sucesso    @{texto_bilhete}        metodo=DINHEIRO        valor=100,00

Cenário 6: Redução da disponibilidade após cada venda  
    ${nome_print}=    Set Variable     Redução da disponibilidade após cada venda  
    @{texto_bilhete}=   Create List     6660 - LB-45 Bilhete Integrado    4651 - Categoria 1
    [Tags]    Testes_Funcionais    LB-45   
    ${qtd_vagas}=    Dado que realizei uma reserva verificando a quantidade de bilhetes    
    Quando finalizo o pagamento (sem fechar a janela)    1
    Então valido se a quantidade foi reduzida corretamente    ${qtd_vagas}       6660
    
Cenário 7: Verificação de vendas realizadas
    ${nome_print}=    Set Variable     Verificação de vendas realizadas
    @{texto_bilhete}=   Create List     6660 - LB-45 Bilhete Integrado    4916 - Convênio
    [Tags]    Testes_Funcionais    LB-45   
    Dado que realizei uma venda com convênio
    Quando finalizo o pagamento    1
    Então valido a venda foi realizada com sucesso    @{texto_bilhete}        metodo=DINHEIRO        valor=1,00

Cenário 8: Geração de comprovante RPS e bilhete após a venda
    ${nome_print}=    Set Variable     Geração de comprovante RPS e bilhete após a venda
    @{texto_bilhete}=   Create List     6660 - LB-45 Bilhete Integrado    4651 - Categoria 1
    [Tags]    Testes_Funcionais    LB-45   
    Dado que realizei uma venda
    Quando imprimo o bilhete
    Então valido se a impressão RPS saiu corretamente    ${caminho_logs}     RPS.pdf    RPS.pdf - WPS Office    ${Caminho_Screenshots}     Cenário Reimpressão de RPS

Cenário 9: Venda de bilhete comum (visitação e atrativos)
    ${nome_print}=    Set Variable     Venda de bilhete comum (visitação e atrativos)
    @{texto_bilhete}=   Create List     5774 - Teste de Agências TESTLINK    3582 - Inteira    501 - Venda de bilhete Outras Receitas
    [Tags]    Testes_Funcionais    LB-45   
    Dado que realizei uma reserva como outras receitas
    Quando finalizo o pagamento    1
    Então valido a venda foi realizada com sucesso    @{texto_bilhete}        metodo=DINHEIRO        valor=1,00

Cenário 10: Venda de bilhete com Constribuição de Fundo
    ${nome_print}=    Set Variable     Venda de bilhete com Constribuição de Fundo
    @{texto_bilhete}=   Create List     6080 Bilhete Integrado - 2     4651 Categoria 1 
    [Tags]    Testes_Funcionais    LB-45   
    Dado que realizei uma reserva com fundo iguaçu
    Quando finalizo o pagamento    1
    Então valido a venda foi realizada com sucesso    @{texto_bilhete}        metodo=DINHEIRO        valor=101,00

Cenário 11: Venda de bilhete zerado com coleta de observação
    ${nome_print}=    Set Variable     Venda de bilhete zerado com coleta de observação
    @{texto_bilhete}=   Create List     6163 - Z - Valor Zerado INTEGRADO      4651 Categoria 1 
    [Tags]    Testes_Funcionais    LB-45   
    Dado que realizei uma reserva com valor Zerado
    Quando preencho a observação    
    Então valido a venda foi realizada com sucesso (valor zerado)    @{texto_bilhete}        metodo=DINHEIRO        valor=1,00