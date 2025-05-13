*** Settings ***
Documentation    Smoke Test: Compras
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_compras


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Compras/Relatórios/    

*** Keywords ***

Relatórios
    Cadastros
    repetidor de teclas    Right    4

*** Test Cases ***

Compras/Aquisição de Serviços - Lançamentos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Compras_Aquisição de Serviços - Lançamentos
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - Lançamentos
    RPA.Windows.Get Text    Lançamentos de Compras/Aquisição de Serviços (1)
    RPA.Windows.Click       Data
    BaseDesktop.Screenshot  Lançamentos de Compras/Aquisição de Serviços (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Lançamentos
    Fechar janela

Compras/Aquisição de Serviços - Sintético/Item
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Compras_Aquisição de Serviços - Sintético_Item
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - Sintético/Item
    RPA.Windows.Get Text    Compras/Aquisição de Serviços / Item (1)
    RPA.Windows.Click       Produtos
    BaseDesktop.Screenshot  Compras/Aquisição de Serviços / Item (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Sintético_Item
    Fechar janela

Compras/Aquisição de Serviços - Sintético/Fornecedor
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Compras_Aquisição de Serviços - Sintético_Fornecedor
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - Sintético/Fornecedor
    RPA.Windows.Get Text    Compras/Aquisição de Serviços / Fornecedor (1)
    RPA.Windows.Click       Nome do Fornecedor
    BaseDesktop.Screenshot  Compras/Aquisição de Serviços / Fornecedor (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Sintético_Fornecedor
    Fechar janela

Compras/Aquisição de Serviços - Sintético/Forn/Item
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Compras_Aquisição de Serviços - Sintético_Forn_Item
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - Sintético/Forn/Item
    RPA.Windows.Get Text    Compras/Aquisição de Serviços / Fornecedor / Item (1)
    RPA.Windows.Click       Nome do Fornecedor
    BaseDesktop.Screenshot  Compras/Aquisição de Serviços / Fornecedor / Item (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Sintético_Forn_Item
    Fechar janela

Compras/Aquisição de Serviços - Sintético/Setor
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Compras_Aquisição de Serviços - Sintético_Setor
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - Sintético/Setor
    RPA.Windows.Get Text    Compras/Aquisição de Serviços por Setor (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Compras/Aquisição de Serviços por Setor (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Sintético_Setor
    RPA.Windows.Click       Confirmar
    Fechar janela

Compras/Aquisição de Serviços - Evolução Diária
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Compras_Aquisição de Serviços - Evolução Diária
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - Evolução Diária
    RPA.Windows.Get Text    Compras/Aquisição de Serviços - Evolução Diária (1)
    repetidor de teclas     Tab    4
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Compras/Aquisição de Serviços - Evolução Diária (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Evolução Diária
    RPA.Windows.Click       Confirmar
    Fechar janela

Compras/Aquisição de Serviços - Evolução Mensal
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Compras_Aquisição de Serviços - Evolução Mensal
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - Evolução Mensal
    RPA.Windows.Get Text    Compras/Aquisição de Serviços - Evolução Mensal (1)
    repetidor de teclas     Tab    3
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Compras/Aquisição de Serviços - Evolução Mensal (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Evolução Mensal
    RPA.Windows.Click       Confirmar
    Fechar janela

Compras/Aquisição de Serviços - Evolução Anual
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Compras_Aquisição de Serviços - Evolução Anual
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - Evolução Anual
    RPA.Windows.Get Text    Compras/Aquisição de Serviços - Evolução Anual (1)
    repetidor de teclas     Tab    5
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Compras/Aquisição de Serviços - Evolução Anual (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - Evolução Anual
    RPA.Windows.Click       Confirmar
    Fechar janela

Compras/Aquisição de Serviços - CFOP
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Compras_Aquisição de Serviços - CFOP
    Relatórios
    RPA.Windows.Click       Compras/Aquisição de Serviços - CFOP
    RPA.Windows.Get Text    Compras/Aquisição de Serviços - CFOP (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Compras/Aquisição de Serviços - CFOP (1)   ${Caminho_Screenshots}Compras_Aquisição de Serviços - CFOP
    RPA.Windows.Click       Confirmar
    Fechar janela

Lançamento de Entradas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Lançamento de Entradas
    Relatórios
    RPA.Windows.Click       Lançamento de Entradas
    RPA.Windows.Get Text    Relatório de Lançamentos de Entradas (1)
    RPA.Windows.Click       Fornecedor
    BaseDesktop.Screenshot  Relatório de Lançamentos de Entradas (1)   ${Caminho_Screenshots}Lançamento de Entradas
    Fechar janela

Produtos/Fornecedor
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Produtos_Fornecedor
    Relatórios
    RPA.Windows.Click       Produtos/Fornecedor
    RPA.Windows.Get Text    Relatório Ultimo Fornecedor (1)
    RPA.Desktop.Press Keys  Tab
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório Ultimo Fornecedor (1)   ${Caminho_Screenshots}Produtos_Fornecedor
    RPA.Windows.Click       Fechar
    Fechar janela

Fornecedor/Produtos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Fornecedor_Produtos
    Relatórios
    RPA.Windows.Click       Fornecedor/Produtos
    RPA.Windows.Get Text    Relatório de fornecedores por produto (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de fornecedores por produto (1)   ${Caminho_Screenshots}Fornecedor_Produtos
    RPA.Windows.Click       Confirmar
    Fechar janela

Notas Fiscais Emitidas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Notas Fiscais Emitidas
    Relatórios
    RPA.Windows.Click       Notas Fiscais Emitidas
    RPA.Windows.Get Text    Relatório de Notas Fiscais Emitidas (1)
    RPA.Windows.Click       Data
    BaseDesktop.Screenshot  Relatório de Notas Fiscais Emitidas (1)   ${Caminho_Screenshots}Notas Fiscais Emitidas
    Fechar janela

Pedidos de Compra
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Pedidos de Compra
    Relatórios
    RPA.Windows.Click       Pedidos de Compra
    RPA.Windows.Get Text    Relatório de Pedidos de Compra (1)
    RPA.Windows.Click       Data
    BaseDesktop.Screenshot  Relatório de Pedidos de Compra (1)   ${Caminho_Screenshots}Pedidos de Compra
    Fechar janela

Pedidos de Compra - Saldo Produtos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Pedidos de Compra - Saldo Produtos
    Relatórios
    RPA.Windows.Click       Pedidos de Compra - Saldo Produtos
    RPA.Windows.Get Text    Relatório de Pedidos de Compra - Saldo dos produtos (1)
    RPA.Windows.Click       Data
    BaseDesktop.Screenshot  Relatório de Pedidos de Compra - Saldo dos produtos (1)   ${Caminho_Screenshots}Pedidos de Compra - Saldo Produtos
    Fechar janela

Giro de Fornecedores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Giro de Fornecedores
    Relatórios
    RPA.Windows.Click       Giro de Fornecedores
    RPA.Windows.Get Text    Relatório Giro de Fornecedores (1)
    RPA.Windows.Click       Nome do Fornecedor
    BaseDesktop.Screenshot  Relatório Giro de Fornecedores (1)   ${Caminho_Screenshots}Giro de Fornecedores
    Fechar janela

Resumo Retenção Monsanto
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Resumo Retenção Monsanto
    Relatórios
    RPA.Windows.Click       Resumo Retenção Monsanto
    RPA.Windows.Get Text    Consulta Monsanto (1)
    RPA.Windows.Click       Executar
    BaseDesktop.Screenshot  Consulta Monsanto (1)   ${Caminho_Screenshots}Resumo Retenção Monsanto
    Fechar janela

Resumo Geral de Movimentos/Saldos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Resumo Geral de Movimentos_Saldos
    Relatórios
    RPA.Windows.Click       Resumo Geral de Movimentos/Saldos
    RPA.Windows.Get Text    Resumo Geral de Movimentos/Saldos (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Resumo Geral de Movimentos/Saldos (1)   ${Caminho_Screenshots}Resumo Geral de Movimentos_Saldos
    RPA.Windows.Click       Confirmar
    Fechar janela

Customizados > Projeção de Compras
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Customizados/            ERRO Projeção de Compras
    Relatórios
    RPA.Windows.Click       Customizados
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Projeção de Compras (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Projeção de Compras (1)   ${Caminho_Screenshots}Customizados/Projeção de Compras
    RPA.Windows.Click       Confirmar
    Fechar janela

Encerrar
    Encerrar tudo