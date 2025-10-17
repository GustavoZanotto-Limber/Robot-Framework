*** Settings ***
Documentation    Smoke Test: Vendedor
Resource         ../../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Vendedor/Relatórios/    
${nome_print}
${nome_exe}=    cde_win_VENDEDOR
*** Keywords ***

Relatórios
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas       right      3
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Análise da Disponibilidade do Estoque
    ${nome_print}=     Set Variable     Análise da Disponibilidade do Estoque
    [Tags]    Vendedor   Relatórios   SmokeTest    
    Relatórios                Análise da Disponibilidade do Estoque   
    RPA.Windows.Get Text      Análise da Disponibilidade do Estoque (1)
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Análise da Disponibilidade do Estoque (1)    ${Caminho_Screenshots}Análise da Disponibilidade do Estoque
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatório de Cobrança
    ${nome_print}=     Set Variable     Relatório de Cobrança
    [Tags]    Vendedor   Relatórios   SmokeTest        
    Relatórios                Relatório de Cobrança  
    RPA.Windows.Get Text      Relatório de Cobrança
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Relatório de Cobrança   ${Caminho_Screenshots}Relatório de Cobrança
    RPA.Windows.Click         Confirmar
    Fechar janela

Posição Financeira/Vendedor/Terceiro
    ${nome_print}=     Set Variable     Posição Financeira/Vendedor/Terceiro
    [Tags]    Vendedor   Relatórios   SmokeTest    
    Relatórios                Posição Financeira/Vendedor/Terceiro  
    RPA.Windows.Get Text      Posição Financeira por Representante/Terceiro
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Posição Financeira por Representante/Terceiro   ${Caminho_Screenshots}Posição Financeira/Vendedor/Terceiro
    RPA.Windows.Click         Confirmar
    Fechar janela