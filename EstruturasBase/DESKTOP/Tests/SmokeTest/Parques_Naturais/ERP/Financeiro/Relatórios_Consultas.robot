*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_fin

*** Variables ***
${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Financeiro/Relatórios_Consultas/


*** Keywords ***

Relatórios/Consultas
    Cadastros
    repetidor de teclas    right    7
    Sleep                  1s

*** Test Cases ***

Informe de Rendimentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Informe de Rendimentos
    Relatórios/Consultas
    RPA.Windows.Click         Informe de Rendimentos
    RPA.Windows.Get Text      Informativo de Rendimentos (1)
    BaseDesktop.Screenshot    Informativo de Rendimentos (1)    ${Caminho_Screenshots}Informe de Rendimentos
    Fechar janela

Relatório de Receitas e Despesas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Relatório de Receitas e Despesas
    Relatórios/Consultas
    RPA.Windows.Click         Relatório de Receitas e Despesas
    RPA.Windows.Get Text      Relatório de Receitas e Despesas (1)
    BaseDesktop.Screenshot    Relatório de Receitas e Despesas (1)    ${Caminho_Screenshots}Relatório de Receitas e Despesas
    Fechar janela

Consulta de Receitas e Despesas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Consulta de Receitas e Despesas
    Relatórios/Consultas
    RPA.Windows.Click         Consulta de Receitas e Despesas
    RPA.Windows.Get Text      Consulta de Receitas e Despesas (1)
    BaseDesktop.Screenshot    Consulta de Receitas e Despesas (1)    ${Caminho_Screenshots}Consulta de Receitas e Despesas
    Fechar janela

Saldo de Pedidos de Venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Saldo de Pedidos de Venda
    Relatórios/Consultas
    RPA.Windows.Click         Saldo de Pedidos de Venda
    RPA.Windows.Get Text      Relatório de Saldos de Pedidos de Venda (1)
    BaseDesktop.Screenshot    Relatório de Saldos de Pedidos de Venda (1)    ${Caminho_Screenshots}Saldo de Pedidos de Venda
    Fechar janela

Posição Financeira > Configuração
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Posição Financeira/                        ERRO Configuração
    Relatórios/Consultas
    RPA.Windows.Click         Posição Financeira
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configuração para Relatório de Posição Financeira (1)
    BaseDesktop.Screenshot    Configuração para Relatório de Posição Financeira (1)    ${Caminho_Screenshots}Posição Financeira/Configuração
    Fechar janela

Posição Financeira > Relatório
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Posição Financeira/                        ERRO Relatório
    Relatórios/Consultas
    RPA.Windows.Click         Posição Financeira
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Relatório de Posição Financeira (1)
    BaseDesktop.Screenshot    Relatório de Posição Financeira (1)    ${Caminho_Screenshots}Posição Financeira/Relatório
    Fechar janela

Relatório Crédito Interno
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                ERRO Relatório Crédito Interno
    Relatórios/Consultas
    RPA.Windows.Click         Relatório Crédito Interno
    RPA.Windows.Get Text      Relatório de Crédito Interno (1)
    BaseDesktop.Screenshot    Relatório de Crédito Interno (1)    ${Caminho_Screenshots}Relatório Crédito Interno
    Fechar janela

Consultas Personalizadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                ERRO Consultas Personalizadas
    Relatórios/Consultas
    RPA.Windows.Click         Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1)
    BaseDesktop.Screenshot    Consultas Personalizadas (1)    ${Caminho_Screenshots}Consultas Personalizadas
    Fechar janela

Rateio de Centro de Custo
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                ERRO Rateio de Centro de Custo
    Relatórios/Consultas
    RPA.Windows.Click         Rateio de Centro de Custo
    RPA.Windows.Get Text      Consulta de Rateio de Centro de Custos (1)
    BaseDesktop.Screenshot    Consulta de Rateio de Centro de Custos (1)    ${Caminho_Screenshots}Rateio de Centro de Custo
    Fechar janela

Centro de Custos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                ERRO Centro de Custos
    Relatórios/Consultas
    RPA.Windows.Click         Centro de Custos
    RPA.Windows.Get Text      Centro de Custos (1)
    BaseDesktop.Screenshot    Centro de Custos (1)    ${Caminho_Screenshots}Centro de Custos
    Fechar janela

Consumo de Adiantamento
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                ERRO Consumo de Adiantamento
    Relatórios/Consultas
    RPA.Windows.Click         Consumo de Adiantamento
    RPA.Windows.Get Text      Consulta de Consumo de Adiantamentos (1)
    BaseDesktop.Screenshot    Consulta de Consumo de Adiantamentos (1)    ${Caminho_Screenshots}Consumo de Adiantamento
    Fechar janela

Análise de Terceiro
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                ERRO Análise de Terceiro
    Relatórios/Consultas
    RPA.Windows.Click         Análise de Terceiro
    RPA.Windows.Get Text      Consulta de Terceiros
    BaseDesktop.Screenshot    Consulta de Terceiros    ${Caminho_Screenshots}Análise de Terceiro
    RPA.Windows.Click         Fechar
    RPA.Windows.Get Text      Análise de Terceiros (1)
    BaseDesktop.Screenshot    Análise de Terceiros (1)    ${Caminho_Screenshots}Análise de Terceiro
    RPA.Windows.Click         Fechar

Encerrar
    Encerrar tudo
    