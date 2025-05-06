*** Settings ***
Documentation    Smoke Test: Estoque
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot

Suite Setup      Iniciar sessao  cde_win_est

Library    RPA.Browser.Selenium

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Estoque/Relatórios/    

*** Keywords ***

Relatórios 
    Cadastros
    repetidor de teclas     right     4

*** Test Cases ***

Inventário de Estoque
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Inventário de Estoque
    Relatórios
    RPA.Windows.Click       Inventário de Estoque
    RPA.Windows.Get Text    Inventário de Estoque (1)
    BaseDesktop.Screenshot  Inventário de Estoque (1)    ${Caminho_Screenshots}Inventário de Estoque
    Fechar janela

Relatório de Estoque Simplificado
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Relatório de Estoque Simplificado
    Relatórios
    RPA.Windows.Click       Relatório de Estoque Simplificado
    RPA.Windows.Get Text    Relatório Simplificado de Estoque (1)
    BaseDesktop.Screenshot  Relatório Simplificado de Estoque (1)    ${Caminho_Screenshots}Relatório de Estoque Simplificado
    Fechar janela

Resumo Apuração Custo Médio
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Resumo Apuração Custo Médio
    Relatórios
    RPA.Windows.Click       Resumo Apuração Custo Médio
    RPA.Windows.Get Text    Resumo da Apuração do Custo Médio (1)
    BaseDesktop.Screenshot  Resumo da Apuração do Custo Médio (1)    ${Caminho_Screenshots}Resumo Apuração Custo Médio
    Fechar janela

Saldos de Lotes/Sintético
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Saldos de Lotes_Sintético
    Relatórios
    RPA.Windows.Click       Saldos de Lotes/Sintético
    RPA.Windows.Get Text    Relatório de Saldo de Lotes/Sintético (1)
    BaseDesktop.Screenshot  Relatório de Saldo de Lotes/Sintético (1)    ${Caminho_Screenshots}Saldos de Lotes_Sintético
    Fechar janela

Análise de Disponibilidade do Estoque
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Análise de Disponibilidade do Estoque
    Relatórios
    RPA.Windows.Click       Análise da Disponibilidade do Estoque
    RPA.Windows.Get Text    Análise da Disponibilidade do Estoque (1)
    BaseDesktop.Screenshot  Análise da Disponibilidade do Estoque (1)    ${Caminho_Screenshots}Análise de Disponibilidade do Estoque
    Fechar janela

Movimentação de Depósitos/Compras
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Movimentação de Depósitos_Compras
    Relatórios
    RPA.Windows.Click       Movimentação de Depósitos/Compras
    RPA.Windows.Get Text    Movimentação de Depósitos/Compras (1)
    BaseDesktop.Screenshot  Movimentação de Depósitos/Compras (1)    ${Caminho_Screenshots}Movimentação de Depósitos_Compras
    Fechar janela

Rentabilidade de Estoque
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Rentabilidade de Estoque
    Relatórios
    RPA.Windows.Click       Rentabilidade de Estoque
    RPA.Windows.Get Text    Relatório de Rentabilidade de Estoque (1)
    BaseDesktop.Screenshot  Relatório de Rentabilidade de Estoque (1)    ${Caminho_Screenshots}Rentabilidade de Estoque
    Fechar janela

Movimentação de produtos - Operacional
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Movimentação de produtos - Operacional
    Relatórios
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Movimentação de produtos (1)
    BaseDesktop.Screenshot  Movimentação de produtos (1)    ${Caminho_Screenshots}Movimentação de produtos - Operacional
    Fechar janela

Movimentação de Produtos - Lançamentos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Movimentação de Produtos - Lançamentos
    Relatórios
    RPA.Windows.Click       Movimentação de Produtos - Lançamentos
    RPA.Windows.Get Text    Movimentação de Produtos - Lançamentos (1)
    BaseDesktop.Screenshot  Movimentação de Produtos - Lançamentos (1)    ${Caminho_Screenshots}Movimentação de Produtos - Lançamentos
    Fechar janela

Requisições de Compra/Transferência
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Requisições de Compra_Transferência
    Relatórios
    RPA.Windows.Click       Requisições de Compra/Transferência
    RPA.Windows.Get Text    Relatório de Requições/Status (1)
    BaseDesktop.Screenshot  Relatório de Requições/Status (1)    ${Caminho_Screenshots}Requisições de Compra_Transferência
    Fechar janela

Valor do Estoque Atual
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Valor do Estoque Atual
    Relatórios
    RPA.Windows.Click       Valor do Estoque Atual
    RPA.Windows.Get Text    Relatório de Valor do Estoque Atual (1)
    BaseDesktop.Screenshot  Relatório de Valor do Estoque Atual (1)    ${Caminho_Screenshots}Valor do Estoque Atual
    Fechar janela

Análise de Estoque
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Análise de Estoque
    Relatórios
    RPA.Windows.Click       Análise de Estoque
    RPA.Windows.Get Text    Análise de Estoque (1)
    BaseDesktop.Screenshot  Análise de Estoque (1)    ${Caminho_Screenshots}Análise de Estoque
    Fechar janela

Resumo Geral de Movimentos/Saldos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Resumo Geral de Movimentos_Saldos
    Relatórios
    RPA.Windows.Click       Resumo Geral de Movimentos/Saldos
    RPA.Windows.Get Text    Resumo Geral de Movimentos/Saldos (1)
    BaseDesktop.Screenshot  Resumo Geral de Movimentos/Saldos (1)    ${Caminho_Screenshots}Resumo Geral de Movimentos_Saldos
    Fechar janela

Cadastros > Setores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/             ERRO Setores
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Relatório de Setores (1)
    BaseDesktop.Screenshot  Relatório de Setores (1)    ${Caminho_Screenshots}Cadastros/Setores
    Fechar janela

Cadastros > Produtos > Produtos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/Produtos/             ERRO Produtos
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  P        
    RPA.Windows.Get Text    Produtos Cadastrados (1)
    BaseDesktop.Screenshot  Produtos Cadastrados (1)    ${Caminho_Screenshots}Cadastros/Produtos/Produtos
    Fechar janela

Cadastros > Produtos > Tabela de Umidade
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/Produtos/             ERRO Tabela de Umidade
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  T       
    RPA.Windows.Get Text    Relatório de Tabelas de Umidade (1)
    BaseDesktop.Screenshot  Relatório de Tabelas de Umidade (1)    ${Caminho_Screenshots}Cadastros/Produtos/Tabela de Umidade
    Fechar janela

Cadastros > Produtos > Cores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/Produtos/             ERRO Cores
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  C        
    RPA.Windows.Get Text    Relatório de Cores (1)
    BaseDesktop.Screenshot  Relatório de Cores (1)    ${Caminho_Screenshots}Cadastros/Produtos/Cores
    Fechar janela

Cadastros > Produtos > Unidades
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/Produtos/             ERRO Unidades
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  U      
    RPA.Windows.Get Text    Relatório de Unidades (1)
    BaseDesktop.Screenshot  Relatório de Unidades (1)    ${Caminho_Screenshots}Cadastros/Produtos/Unidades
    Fechar janela

Cadastros > Produtos > Marcas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/Produtos/             ERRO Marcas
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  M   
    RPA.Windows.Get Text    Relatório de Marcas (1)
    BaseDesktop.Screenshot  Relatório de Marcas (1)    ${Caminho_Screenshots}Cadastros/Produtos/Marcas
    Fechar janela

Cadastros > Produtos > Estampas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/Produtos/             ERRO Estampas
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  E      
    RPA.Windows.Get Text    Relatório de Estampas (1)
    BaseDesktop.Screenshot  Relatório de Estampas (1)    ${Caminho_Screenshots}Cadastros/Produtos/Estampas
    Fechar janela

Cadastros > Produtos > Tamanhos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/Produtos/             ERRO Tamanhos
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  A      
    RPA.Windows.Get Text    Relatório de Tamanhos (1)
    BaseDesktop.Screenshot  Relatório de Tamanhos (1)    ${Caminho_Screenshots}Cadastros/Produtos/Tamanhos
    Fechar janela

Cadastros > Tabela Tributária
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/             ERRO Tabela Tributária
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Relatório de Tabelas Tributárias (1)
    BaseDesktop.Screenshot  Relatório de Tabelas Tributárias (1)    ${Caminho_Screenshots}Cadastros/Tabela Tributária
    Fechar janela

Cadastros > CFOP
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/             ERRO CFOP
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Relatório de CFOP's (1)
    BaseDesktop.Screenshot  Relatório de CFOP's (1)    ${Caminho_Screenshots}Cadastros/CFOP
    Fechar janela

Cadastros > Estabelecimento
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/             ERRO Estabelecimento
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Relatório de Estabelecimentos (1)
    BaseDesktop.Screenshot  Relatório de Estabelecimentos (1)    ${Caminho_Screenshots}Cadastros/Estabelecimento
    Fechar janela

Cadastros > Países
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Cadastros/          ERRO Países
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Relatório de Países (1)
    BaseDesktop.Screenshot  Relatório de Países (1)    ${Caminho_Screenshots}Cadastros/Países
    Fechar janela

Cadastros > Estados
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Cadastros/          ERRO Estados
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Relatório de Estados (1)
    BaseDesktop.Screenshot  Relatório de Estados (1)    ${Caminho_Screenshots}Cadastros/Estados
    Fechar janela

Cadastros > Municípios
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Cadastros/          ERRO Municípios
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Relatório de Municípios (1)
    BaseDesktop.Screenshot  Relatório de Municípios (1)    ${Caminho_Screenshots}Cadastros/Municípios
    Fechar janela

Cadastros > Regiões
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Cadastros/         ERRO Regiões
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Relatório de Regiões (1)
    BaseDesktop.Screenshot  Relatório de Regiões (1)    ${Caminho_Screenshots}Cadastros/Regiões
    Fechar janela

Customizados > Relatório Simplificado de Estoque 2
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Customizados/         ERRO Relatório Simplificado de Estoque 2
    Relatórios
    RPA.Windows.Click         Customizados
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Relatório de Estoque Simplificado 2 (1)
    BaseDesktop.Screenshot    Relatório de Estoque Simplificado 2 (1)    ${Caminho_Screenshots}Customizados/Relatório Simplificado de Estoque 2
    Fechar janela

Customizados > Relatório Simplificado / Depósito
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Customizados/         ERRO Relatório Simplificado _ Depósito
    Relatórios
    RPA.Windows.Click         Customizados
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Relatório de Estoque por Depósito (1)
    BaseDesktop.Screenshot    Relatório de Estoque por Depósito (1)    ${Caminho_Screenshots}Customizados/Relatório Simplificado _ Depósito
    Fechar janela

Encerrar
    Encerrar tudo