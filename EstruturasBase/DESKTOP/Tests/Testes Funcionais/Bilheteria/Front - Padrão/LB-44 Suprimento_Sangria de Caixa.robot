*** Settings ***
Documentation    Testes regressivos: Impressão de Bilhete e Reimpressão de bilhetes
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Resource         ../../../../Resources/BDD/BDDKeywordsDesktop.robot
Suite Setup      Iniciar sessao e abrir caixa    ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2    ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/Testes Regressivos/LB-44 Suprimento_Sangria de Caixa/ 
${Caminho_arquivos}=     C:/Users/testes/Documents/Testes Regressivos/
${nome_exe}=    cde_win_bca_front
${nome_print}
*** Keywords ***


*** Test Cases    ***

Cenário 1: Usuário autorizado para realizar sangria ou suprimento 
    ${nome_print}=    Set Variable     Usuário autorizado para realizar sangria ou suprimento  
    [Tags]    Testes_Funcionais    LB-44   
    Dado que vou consultar um cadastro de suprimento/sangria
    Quando salvo a edição do Suprimento/Sangria
    Então valido se o usuário tem permissão 

Cenário 2: Realização de um lançamento de suprimento no caixa   
    ${nome_print}=    Set Variable     Realização de um lançamento de suprimento no caixa 
    @{texto_bilhete}=   Create List     COMPROVANTE DE SUPRIMENTO    PDV: 1 - BIL 01    CODIGO MOVIMENTO    MOTIVO: Suprimento gerado a partir de  testes automatizados
    [Tags]    Testes_Funcionais    LB-44   
    Dado que realizei um novo cadastro de suprimento
    Quando salvo o arquivo de suprimento
    Então valido se a impressão saiu corretamente 2   ${Caminho_arquivos}   suprimento.pdf    suprimento.pdf - WPS Office    ${Caminho_Screenshots}        suprimento    @{texto_bilhete}

Cenário 3: Realização de um lançamento de Sangria no caixa   
    ${nome_print}=    Set Variable     Realização de um lançamento de Sangria no caixa 
    @{texto_bilhete}=   Create List     COMPROVANTE DE SANGRIA    PDV: 1 - BIL 01    CODIGO MOVIMENTO    MOTIVO: Sangria gerado a partir de testes  automatizados
    [Tags]    Testes_Funcionais    LB-44   
    Dado que realizei um novo cadastro de Sangria
    Quando salvo o arquivo de Sangria
    Então valido se a impressão saiu corretamente 2   ${Caminho_arquivos}   Sangria.pdf    Sangria.pdf - WPS Office    ${Caminho_Screenshots}        Sangria        @{texto_bilhete}

Cenário 4: Verificação do histórico de operações no caixa  
    ${nome_print}=    Set Variable     Verificação do histórico de operações no caixa  
    [Tags]    Testes_Funcionais    LB-44   
    @{tempo}=    Dado que realizei um novo cadastro de Sangria E Suprimento
    Quando vou consultar o histórico de operações do caixa
    Então o sistema deve exibir corretamente todos os registros    ${Caminho_arquivos}   Relatório de Caixa.pdf    Relatório de Caixa.pdf - WPS Office    ${Caminho_Screenshots}        Relatório de Caixa        @{tempo}
    
Cenário 5: Geração do relatório de fechamento de caixa por turno   
    ${nome_print}=    Set Variable     Verificação do histórico de operações no caixa  
    [Tags]    Testes_Funcionais    LB-44   
    @{tempo}=    Dado que realizei um novo cadastro de Sangria E Suprimento
    Quando vou consultar o histórico de operações do caixa por turno
    Então o sistema deve exibir corretamente todos os registros    ${Caminho_arquivos}   Relatório de Caixa por Turno.pdf    Relatório de Caixa por Turno.pdf - WPS Office    ${Caminho_Screenshots}        Relatório de Caixa por Turno        @{tempo}
    
