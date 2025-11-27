*** Settings ***
Documentation    Testes regressivos: Suprimento e Sangria
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Resource         ../../../../Resources/BDD/BDDKeywordsDesktop.robot
Suite Setup      Iniciar Suite
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2    ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/Testes Regressivos/Bilheteria/Front - Padrao/LB-44 Suprimento_Sangria de Caixa/          
${Caminho_arquivos}      
${nome_exe}=               cde_win_bca_front
${nome_print}

*** Keywords ***

Iniciar Suite
    ${caminho}=       Replace String    ${EXECDIR}       \\Robot_Framework     ${EMPTY}
    Set Suite Variable    ${Caminho_arquivos}     ${caminho}\\Documents\\Testes_Regressivos\\
    Iniciar sessao e abrir caixa    ${nome_exe} 

*** Test Cases    ***

Cenário 1: Usuário autorizado para realizar sangria ou suprimento 
    ${nome_print}=    Set Variable     Usuário autorizado para realizar sangria ou suprimento  
    [Tags]    Testes_Funcionais    LB-44  Regressivos_BIL   
    Dado que vou consultar um cadastro de suprimento/sangria
    Quando salvo a edição do Suprimento/Sangria
    Então valido se o usuário tem permissão 

Cenário 2: Realização de um lançamento de suprimento no caixa   
    ${nome_print}=    Set Variable     Realização de um lançamento de suprimento no caixa 
    @{texto_bilhete}=   Create List     COMPROVANTE DE SUPRIMENTO    PDV: 1 - BIL 01    CODIGO MOVIMENTO    MOTIVO: Suprimento gerado a partir de  testes automatizados
    [Tags]    Testes_Funcionais    LB-44  Regressivos_BIL   
    Dado que realizei um novo cadastro de suprimento
    Quando salvo o arquivo de suprimento
    Então valido se a impressão saiu corretamente 2   ${Caminho_arquivos}   suprimento.pdf    suprimento.pdf - WPS Office    ${Caminho_Screenshots}        suprimento    @{texto_bilhete}

Cenário 3: Realização de um lançamento de Sangria no caixa   
    ${nome_print}=    Set Variable     Realização de um lançamento de Sangria no caixa 
    @{texto_bilhete}=   Create List     COMPROVANTE DE SANGRIA    PDV: 1 - BIL 01    CODIGO MOVIMENTO    MOTIVO: Sangria gerado a partir de testes  automatizados
    [Tags]    Testes_Funcionais    LB-44  Regressivos_BIL   
    Dado que realizei um novo cadastro de Sangria
    Quando salvo o arquivo de Sangria
    Então valido se a impressão saiu corretamente 2   ${Caminho_arquivos}   Sangria.pdf    Sangria.pdf - WPS Office    ${Caminho_Screenshots}        Sangria        @{texto_bilhete}

Cenário 4: Verificação do histórico de operações no caixa  
    ${nome_print}=    Set Variable     Verificação do histórico de operações no caixa  
    [Tags]    Testes_Funcionais    LB-44  Regressivos_BIL   
    @{tempo}=    Dado que realizei um novo cadastro de Sangria E Suprimento
    Quando vou consultar o histórico de operações do caixa    ${Caminho_arquivos}
    Então o sistema deve exibir corretamente todos os registros    ${Caminho_arquivos}   Relatorio_de_Caixa.pdf    Relatorio_de_Caixa.pdf - WPS Office    ${Caminho_Screenshots}        Relatório de Caixa        @{tempo}
    
Cenário 5: Geração do relatório de fechamento de caixa por turno   
    ${nome_print}=    Set Variable     Verificação do histórico de operações no caixa  
    [Tags]    Testes_Funcionais    LB-44  Regressivos_BIL   
    @{tempo}=    Dado que realizei um novo cadastro de Sangria E Suprimento
    Quando vou consultar o histórico de operações do caixa por turno    ${Caminho_arquivos}
    Então o sistema deve exibir corretamente todos os registros    ${Caminho_arquivos}   Relatório_de_Caixa_por_Turno.pdf    Relatório_de_Caixa_por_Turno.pdf - WPS Office    ${Caminho_Screenshots}        Relatório de Caixa por Turno        @{tempo}
    
