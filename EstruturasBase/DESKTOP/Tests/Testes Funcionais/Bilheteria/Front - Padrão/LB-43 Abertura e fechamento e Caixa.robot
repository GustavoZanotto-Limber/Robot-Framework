*** Settings ***
Documentation    Testes regressivos: Abertura e fechamento e Caixa
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Resource         ../../../../Resources/BDD/BDDKeywordsDesktop.robot
Suite Setup      Iniciar sessao e abrir caixa    ${nome_exe}   
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2    ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/Testes Regressivos/LB-43 Abertura e fechamento e Caixa/ 
${caminho_arquivos}=     C:/Users/testes/Documents/Testes Regressivos/
${nome_exe}=    cde_win_bca_front
${nome_print}
${texto_bilhete}

*** Keywords ***


*** Test Cases    ***



Cenário 1: Cadastro e configuração de um novo PDV  
    ${nome_print}=    Set Variable     Cadastro e configuração de um novo PDV
    [Tags]    Testes_Funcionais    LB-43
    Dado que estou na tela de cadastro do PDV
    Quando insiro as informações para um novo cadastro de PDV
    Então salvo o cadastro do PDV

	
Cenário 2: Abertura do caixa pelo operador    
    ${nome_print}=    Set Variable     Abertura do caixa pelo operador
    [Tags]    Testes_Funcionais    LB-43
    Dado que estou na tela do caixa operador
    Quando abro o caixa operador
    Então valido se o caixa foi aberto

Cenário 3: Fechamento do caixa pelo operador    
    ${nome_print}=    Set Variable     Fechamento do caixa pelo operador
    [Tags]    Testes_Funcionais    LB-43
    Dado que estou na tela do caixa operador
    Quando abro o caixa operador
    Então valido se o caixa foi fechado corretamente
    
Cenário 4: Geração e impressão do fechamento de caixa    
    ${nome_print}=    Set Variable     Geração e impressão do fechamento de caixa
    ${texto}=    Set Variable       DEMONSTRACAO     RESUMO DE MOVIMENTAÇÃO BILHETERIA    DATA:    PDV:    CÓDIGO CX:    OPERADOR:        
    [Tags]    Testes_Funcionais    LB-43
    Dado que estou na tela do caixa operador
    ${texto2}=    Quando realizo a impressão do caixa      
    Então valido se a impressão saiu corretamente 2    ${Caminho_arquivos}    Fechamento de Caixa.pdf    Fechamento de Caixa.pdf - WPS Office    ${Caminho_Screenshots}     Fechamento de Caixa    ${texto}    ${texto2}
    
    
Cenário 5: Fechamento dos caixas e validar a geração da receita (módulo financeiro)
    ${nome_print}=    Set Variable     Fechamento dos caixas e validar a geração da receita
    [Tags]    Testes_Funcionais    LB-43
    #Dado que abri o caixa operador E realizei uma venda
    #${texto}=    Quando Fecho o caixa operador E pego o Resumo Geral    ${Caminho_arquivos}    Resumo Geral.pdf    Resumo Geral.pdf - WPS Office    ${Caminho_Screenshots}     Resumo Geral
    Então abro o financeiro e valido as informações   600,00
