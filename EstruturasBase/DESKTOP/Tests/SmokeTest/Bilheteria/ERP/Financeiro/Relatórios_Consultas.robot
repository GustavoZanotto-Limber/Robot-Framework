*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         ../../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}


*** Variables ***
${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Financeiro/Relatórios_Consultas/
${nome_print}
${nome_exe}=    cde_win_fin

*** Keywords ***

Relatórios/Consultas
    Cadastros
    repetidor de teclas    right    8
    Sleep                  1s

*** Test Cases ***

Informe de Rendimentos
    ${nome_print}=     Set Variable     Informe de Rendimentos
    [Tags]     Financeiro    Relatórios Consultas   SmokeTest
    Relatórios/Consultas
    RPA.Windows.Click         Informe de Rendimentos
    RPA.Windows.Get Text      Informativo de Rendimentos (1)
    RPA.Windows.Click         Listar Notas Fiscais
    BaseKeywordsDesktop.Screenshot    Informativo de Rendimentos (1)    ${Caminho_Screenshots}Informe de Rendimentos
    Fechar janela

Relatório de Receitas e Despesas
    ${nome_print}=     Set Variable     Relatório de Receitas e Despesas
    [Tags]     Financeiro    Relatórios Consultas   SmokeTest
    Relatórios/Consultas
    RPA.Windows.Click         Relatório de Receitas e Despesas
    RPA.Windows.Get Text      Relatório de Receitas e Despesas (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Receitas e Despesas (1)    ${Caminho_Screenshots}Relatório de Receitas e Despesas
    RPA.Windows.Click         Confirmar
    Fechar janela

Consulta de Receitas e Despesas
    ${nome_print}=     Set Variable     Consulta de Receitas e Despesas
    [Tags]     Financeiro    Relatórios Consultas   SmokeTest
    Relatórios/Consultas
    RPA.Windows.Click         Consulta de Receitas e Despesas
    RPA.Windows.Get Text      Consulta de Receitas e Despesas (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Consulta de Receitas e Despesas (1)    ${Caminho_Screenshots}Consulta de Receitas e Despesas
    RPA.Windows.Click         Confirmar
    Fechar janela

Saldo de Pedidos de Venda
    ${nome_print}=     Set Variable     Saldo de Pedidos de Venda
    [Tags]     Financeiro    Relatórios Consultas   SmokeTest
    Relatórios/Consultas
    RPA.Windows.Click         Saldo de Pedidos de Venda
    RPA.Windows.Get Text      Relatório de Saldos de Pedidos de Venda (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Saldos de Pedidos de Venda (1)    ${Caminho_Screenshots}Saldo de Pedidos de Venda
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

Posição Financeira > Configuração
    ${nome_print}=     Set Variable     Configuração
    [Tags]     Financeiro    Relatórios Consultas   SmokeTest
    Relatórios/Consultas
    RPA.Windows.Click         Posição Financeira
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configuração para Relatório de Posição Financeira (1)
    RPA.Desktop.Press Keys    0
    repetidor de teclas       tab     2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Configuração para Relatório de Posição Financeira (1)    ${Caminho_Screenshots}Posição Financeira/Configuração
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Posição Financeira > Relatório
    ${nome_print}=     Set Variable     Relatório
    [Tags]     Financeiro    Relatórios Consultas   SmokeTest
    Relatórios/Consultas
    RPA.Windows.Click         Posição Financeira
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Relatório de Posição Financeira (1)
    BaseKeywordsDesktop.Screenshot    Relatório de Posição Financeira (1)    ${Caminho_Screenshots}Posição Financeira/Relatório
    Fechar janela

Relatório Crédito Interno
    ${nome_print}=     Set Variable     Relatório Crédito Interno
    [Tags]     Financeiro    Relatórios Consultas   SmokeTest
    Relatórios/Consultas
    RPA.Windows.Click         Relatório Crédito Interno
    RPA.Windows.Get Text      Relatório de Crédito Interno (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Crédito Interno (1)    ${Caminho_Screenshots}Relatório Crédito Interno
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Consultas Personalizadas
    ${nome_print}=     Set Variable     Consultas Personalizadas
    [Tags]     Financeiro    Relatórios Consultas   SmokeTest
    Relatórios/Consultas
    RPA.Windows.Click         Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1)
    RPA.Windows.Click         Cadastrar Nova Consulta
    BaseKeywordsDesktop.Screenshot    Consultas Personalizadas (1)    ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click         Fechar
    Fechar janela

Rateio de Centro de Custo
    ${nome_print}=     Set Variable     Rateio de Centro de Custo
    [Tags]     Financeiro    Relatórios Consultas   SmokeTest
    Relatórios/Consultas
    RPA.Windows.Click         Rateio de Centro de Custo
    RPA.Windows.Get Text      Consulta de Rateio de Centro de Custos (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Consulta de Rateio de Centro de Custos (1)    ${Caminho_Screenshots}Rateio de Centro de Custo
    RPA.Windows.Click         Confirmar
    Fechar janela

Centro de Custos
    ${nome_print}=     Set Variable     Centro de Custos
    [Tags]     Financeiro    Relatórios Consultas   SmokeTest
    Relatórios/Consultas
    RPA.Windows.Click         Centro de Custos
    RPA.Windows.Get Text      Centro de Custos (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Centro de Custos (1)    ${Caminho_Screenshots}Centro de Custos
    RPA.Windows.Click         OK
    Fechar janela

Consumo de Adiantamento
    ${nome_print}=     Set Variable     Consumo de Adiantamento
    [Tags]     Financeiro    Relatórios Consultas   SmokeTest
    Relatórios/Consultas
    RPA.Windows.Click         Consumo de Adiantamento
    RPA.Windows.Get Text      Consulta de Consumo de Adiantamentos (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta de Consumo de Adiantamentos (1)    ${Caminho_Screenshots}Consumo de Adiantamento
    Fechar janela

Análise de Terceiro
    ${nome_print}=     Set Variable     Análise de Terceiro
    [Tags]     Financeiro    Relatórios Consultas   SmokeTest
    Relatórios/Consultas
    RPA.Windows.Click         Análise de Terceiro
    Sleep                     1s
    RPA.Windows.Get Text      Consulta de Terceiros
    BaseKeywordsDesktop.Screenshot    Consulta de Terceiros    ${Caminho_Screenshots}Análise de Terceiro
    RPA.Windows.Click         Confirmar
    RPA.Windows.Get Text      Análise de Terceiros (1)
    BaseKeywordsDesktop.Screenshot    Análise de Terceiros (1)    ${Caminho_Screenshots}Análise de Terceiro
    RPA.Windows.Click         Carregar
    RPA.Windows.Click         Fechar