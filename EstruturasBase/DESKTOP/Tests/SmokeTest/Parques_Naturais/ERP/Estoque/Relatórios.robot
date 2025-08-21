*** Settings ***
Documentation    Smoke Test: Estoque
Resource         ../../../../../Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}



*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Estoque/Relatórios/    
${nome_print}
${nome_exe}=    cde_win_est
*** Keywords ***

Relatórios
    Cadastros
    Repetidor de Teclas     Right    4

*** Test Cases ***

Inventário de Estoque
    ${nome_print}=     Set Variable     Inventário de Estoque
    [Tags]    Estoque   Relatórios  SmokeTest    
    Relatórios
    RPA.Windows.Click       Inventário de Estoque
    RPA.Windows.Get Text    Inventário de Estoque (1)
    RPA.Windows.Click       Setor
    BaseDesktop.Screenshot  Inventário de Estoque (1)    ${Caminho_Screenshots}Inventário de Estoque
    Fechar janela

Relatório de Estoque Simplificado
    ${nome_print}=     Set Variable     Relatório de Estoque Simplificado
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Relatório de Estoque Simplificado
    RPA.Windows.Get Text    Relatório Simplificado de Estoque (1)
    RPA.Windows.Click       Nome Produto
    BaseDesktop.Screenshot  Relatório Simplificado de Estoque (1)    ${Caminho_Screenshots}Relatório de Estoque Simplificado
    Fechar janela

Resumo Apuração Custo Médio
    ${nome_print}=     Set Variable     Resumo Apuração Custo Médio
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Resumo Apuração Custo Médio
    RPA.Windows.Get Text    Resumo da Apuração do Custo Médio (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Resumo da Apuração do Custo Médio (1)    ${Caminho_Screenshots}Resumo Apuração Custo Médio
    RPA.Windows.Click       Confirmar
    Fechar janela

Saldos de Lotes/Sintético
    ${nome_print}=     Set Variable     Saldos de Lotes_Sintético
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Saldos de Lotes/Sintético
    RPA.Windows.Get Text    Relatório de Saldo de Lotes/Sintético (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Relatório de Saldo de Lotes/Sintético (1)    ${Caminho_Screenshots}Saldos de Lotes_Sintético
    RPA.Windows.Click       Confirmar
    Fechar janela

Análise de Disponibilidade do Estoque
    ${nome_print}=     Set Variable     Análise de Disponibilidade do Estoque
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Análise da Disponibilidade do Estoque
    RPA.Windows.Get Text    Análise da Disponibilidade do Estoque (1)
    RPA.Desktop.Press Keys  Tab
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Análise da Disponibilidade do Estoque (1)    ${Caminho_Screenshots}Análise de Disponibilidade do Estoque
    RPA.Windows.Click       Confirmar
    Fechar janela

Movimentação de Depósitos/Compras
    ${nome_print}=     Set Variable     Movimentação de Depósitos_Compras
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Movimentação de Depósitos/Compras
    RPA.Windows.Get Text    Movimentação de Depósitos/Compras (1)
    RPA.Desktop.Press Keys  Tab
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Movimentação de Depósitos/Compras (1)    ${Caminho_Screenshots}Movimentação de Depósitos_Compras
    RPA.Windows.Click       OK
    Fechar janela
    RPA.Windows.Click       OK

Rentabilidade de Estoque
    ${nome_print}=     Set Variable     Rentabilidade de Estoque
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Rentabilidade de Estoque
    RPA.Windows.Get Text    Relatório de Rentabilidade de Estoque (1)
    RPA.Desktop.Press Keys  Shift    Tab
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Relatório de Rentabilidade de Estoque (1)    ${Caminho_Screenshots}Rentabilidade de Estoque
    RPA.Windows.Click       Confirmar
    RPA.Windows.Click       OK
    Fechar janela

Movimentação de produtos - Operacional
    ${nome_print}=     Set Variable     Movimentação de produtos - Operacional
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Movimentação de produtos (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Movimentação de produtos (1)    ${Caminho_Screenshots}Movimentação de produtos - Operacional
    RPA.Windows.Click       Confirmar
    RPA.Windows.Click       OK
    Fechar janela

Movimentação de Produtos - Lançamentos
    ${nome_print}=     Set Variable     Movimentação de Produtos - Lançamentos
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Movimentação de Produtos - Lançamentos
    RPA.Windows.Get Text    Movimentação de Produtos - Lançamentos (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Movimentação de Produtos - Lançamentos (1)    ${Caminho_Screenshots}Movimentação de Produtos - Lançamentos
    RPA.Windows.Click       Confirmar
    Fechar janela

Requisições de Compra/Transferência
    ${nome_print}=     Set Variable     Requisições de Compra_Transferência
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Requisições de Compra/Transferência
    RPA.Windows.Get Text    Relatório de Requições/Status (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Relatório de Requições/Status (1)    ${Caminho_Screenshots}Requisições de Compra_Transferência
    RPA.Windows.Click       OK
    Fechar janela
    RPA.Windows.Click       OK

Valor do Estoque Atual
    ${nome_print}=     Set Variable     Valor do Estoque Atual
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Valor do Estoque Atual
    RPA.Windows.Get Text    Relatório de Valor do Estoque Atual (1)
    RPA.Desktop.Press Keys  Shift    Tab
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Relatório de Valor do Estoque Atual (1)    ${Caminho_Screenshots}Valor do Estoque Atual
    RPA.Windows.Click       Confirmar
    Fechar janela

Análise de Estoque
    ${nome_print}=     Set Variable     Análise de Estoque
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Análise de Estoque
    RPA.Windows.Get Text    Análise de Estoque (1)
    BaseDesktop.Screenshot  Análise de Estoque (1)    ${Caminho_Screenshots}Análise de Estoque
    Fechar janela

Resumo Geral de Movimentos/Saldos
    ${nome_print}=     Set Variable     Resumo Geral de Movimentos_Saldos
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Resumo Geral de Movimentos/Saldos
    RPA.Windows.Get Text    Resumo Geral de Movimentos/Saldos (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Resumo Geral de Movimentos/Saldos (1)    ${Caminho_Screenshots}Resumo Geral de Movimentos_Saldos
    RPA.Windows.Click       Confirmar
    Fechar janela

Cadastros > Setores
    ${nome_print}=     Set Variable     Setores
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Relatório de Setores (1)
    RPA.Windows.Click       Ordem de Código
    BaseDesktop.Screenshot  Relatório de Setores (1)    ${Caminho_Screenshots}Cadastros/Setores
    Fechar janela

Cadastros > Produtos > Produtos
    ${nome_print}=     Set Variable     Produtos
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  P        
    RPA.Windows.Get Text    Produtos Cadastrados (1)
    repetidor de teclas     tab    6
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Produtos Cadastrados (1)    ${Caminho_Screenshots}Cadastros/Produtos/Produtos
    RPA.Windows.Click       Confirmar
    Fechar janela

Cadastros > Produtos > Tabela de Umidade
    ${nome_print}=     Set Variable     Tabela de Umidade
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  T       
    RPA.Windows.Get Text    Relatório de Tabelas de Umidade (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Tabelas de Umidade (1)    ${Caminho_Screenshots}Cadastros/Produtos/Tabela de Umidade
    Fechar janela

Cadastros > Produtos > Cores
    ${nome_print}=     Set Variable     Cores
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  C        
    RPA.Windows.Get Text    Relatório de Cores (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Cores (1)    ${Caminho_Screenshots}Cadastros/Produtos/Cores
    Fechar janela

Cadastros > Produtos > Unidades
    ${nome_print}=     Set Variable     Unidades
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  U      
    RPA.Windows.Get Text    Relatório de Unidades (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Unidades (1)    ${Caminho_Screenshots}Cadastros/Produtos/Unidades
    Fechar janela

Cadastros > Produtos > Marcas
    ${nome_print}=     Set Variable     Marcas
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  M   
    RPA.Windows.Get Text    Relatório de Marcas (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Marcas (1)    ${Caminho_Screenshots}Cadastros/Produtos/Marcas
    Fechar janela

Cadastros > Produtos > Estampas
    ${nome_print}=     Set Variable     Estampas
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  E      
    RPA.Windows.Get Text    Relatório de Estampas (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Estampas (1)    ${Caminho_Screenshots}Cadastros/Produtos/Estampas
    Fechar janela

Cadastros > Produtos > Tamanhos
    ${nome_print}=     Set Variable     Tamanhos
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  A      
    RPA.Windows.Get Text    Relatório de Tamanhos (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Tamanhos (1)    ${Caminho_Screenshots}Cadastros/Produtos/Tamanhos
    Fechar janela

Cadastros > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Relatório de Tabelas Tributárias (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Tabelas Tributárias (1)    ${Caminho_Screenshots}Cadastros/Tabela Tributária
    Fechar janela

Cadastros > CFOP
    ${nome_print}=     Set Variable     CFOP
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Relatório de CFOP's (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de CFOP's (1)    ${Caminho_Screenshots}Cadastros/CFOP
    Fechar janela

Cadastros > Estabelecimento
    ${nome_print}=     Set Variable     Estabelecimento
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Relatório de Estabelecimentos (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Estabelecimentos (1)    ${Caminho_Screenshots}Cadastros/Estabelecimento
    Fechar janela

Cadastros > Países
    ${nome_print}=     Set Variable     Países
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Relatório de Países (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Países (1)    ${Caminho_Screenshots}Cadastros/Países
    Fechar janela

Cadastros > Estados
    ${nome_print}=     Set Variable     Estados
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Relatório de Estados (1)
    RPA.Windows.Click       Ordem de País
    BaseDesktop.Screenshot  Relatório de Estados (1)    ${Caminho_Screenshots}Cadastros/Estados
    Fechar janela

Cadastros > Municípios
    ${nome_print}=     Set Variable     Municípios
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Relatório de Municípios (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Municípios (1)    ${Caminho_Screenshots}Cadastros/Municípios
    Fechar janela

Cadastros > Regiões
    ${nome_print}=     Set Variable     Regiões
    [Tags]    Estoque   Relatórios  SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Relatório de Regiões (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Regiões (1)    ${Caminho_Screenshots}Cadastros/Regiões
    Fechar janela

Customizados > Relatório Simplificado de Estoque 2
    ${nome_print}=     Set Variable     Relatório Simplificado de Estoque 2
    [Tags]    Estoque   Relatórios  SmokeTest    
    Relatórios
    RPA.Windows.Click         Customizados
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Relatório de Estoque Simplificado 2 (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot    Relatório de Estoque Simplificado 2 (1)    ${Caminho_Screenshots}Customizados/Relatório Simplificado de Estoque 2
    RPA.Windows.Click       Confirmar
    Fechar janela

Customizados > Relatório Simplificado / Depósito
    ${nome_print}=     Set Variable     Relatório Simplificado _ Depósito
    [Tags]    Estoque   Relatórios  SmokeTest    
    Relatórios
    RPA.Windows.Click         Customizados
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Relatório de Estoque por Depósito (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot    Relatório de Estoque por Depósito (1)    ${Caminho_Screenshots}Customizados/Relatório Simplificado _ Depósito
    RPA.Windows.Click       Confirmar
    Fechar janela