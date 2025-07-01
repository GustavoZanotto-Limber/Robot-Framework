*** Settings ***
Documentation    Smoke Test: Vendas
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteça erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Vendas/Relatórios/    
${nome_print}
${nome_exe}=    cde_win_ven
*** Keywords ***

Relatórios
    Cadastros
    Repetidor de Teclas     Right    5

*** Test Cases ***

Vendas/Prestação de Serviços > Lançamentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Vendas_Prestação de Serviços/                         Lançamentos
    Relatórios                 
    RPA.Desktop.Press Keys    Right  
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Lançamentos de Vendas/Prestação de Serviços (1)
    repetidor de teclas       tab        4
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Lançamentos de Vendas/Prestação de Serviços (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços/Lançamentos
    RPA.Windows.Click         Confirmar
    Fechar janela

Vendas/Prestação de Serviços > Sintético/Item
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Vendas_Prestação de Serviços/                         Sintético_Item
    Relatórios
    RPA.Desktop.Press Keys    Right  
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Vendas/Prestação de Serviços / Item (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Vendas/Prestação de Serviços / Item (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços/Sintético_Item
    RPA.Windows.Click         Confirmar
    Fechar janela

Vendas/Prestação de Serviços > Sintético/Cliente
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Vendas_Prestação de Serviços/                         Sintético_Cliente
    Relatórios
    RPA.Desktop.Press Keys    Right  
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Vendas/Prestação de Serviços por Cliente (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Vendas/Prestação de Serviços por Cliente (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços/Sintético_Cliente
    RPA.Windows.Click         Confirmar
    Fechar janela

Vendas/Prestação de Serviços > Sintético/Setor
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Vendas_Prestação de Serviços/                         Sintético_Setor
    Relatórios
    RPA.Desktop.Press Keys    Right  
    RPA.Desktop.Press Keys    N
    RPA.Windows.Get Text      Vendas/Prestação de Serviços / Setor (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Vendas/Prestação de Serviços / Setor (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços/Sintético_Setor
    RPA.Windows.Click         Confirmar
    Fechar janela

Vendas/Prestação de Serviços > Evolução Diária
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Vendas_Prestação de Serviços/                         Evolução Diária
    Relatórios
    RPA.Desktop.Press Keys    Right  
    RPA.Desktop.Press Keys    D
    RPA.Windows.Get Text      Vendas/Prestação de Serviços - Evolução Diária (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Vendas/Prestação de Serviços - Evolução Diária (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços/Evolução Diária
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Vendas/Prestação de Serviços > Evolução Mensal
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Vendas_Prestação de Serviços/                         Evolução Mensal
    Relatórios
    RPA.Desktop.Press Keys    Right  
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Vendas/Prestação de Serviços - Evolução Mensal (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Vendas/Prestação de Serviços - Evolução Mensal (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços/Evolução Mensal
    RPA.Windows.Click         Confirmar
    Fechar janela

Vendas/Prestação de Serviços > Evolução Anual
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Vendas_Prestação de Serviços/                         Evolução Anual
    Relatórios
    RPA.Desktop.Press Keys    Right  
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Vendas/Prestação de Serviços - Evolução Anual (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Vendas/Prestação de Serviços - Evolução Anual (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços/Evolução Anual
    RPA.Windows.Click         Confirmar
    Fechar janela

Vendas/Prestação de Serviços > Mapa Resumo
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Vendas_Prestação de Serviços/                         Mapa Resumo
    Relatórios
    RPA.Desktop.Press Keys    Right  
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Vendas/Prestação de Serviços - Mapa Resumo (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Vendas/Prestação de Serviços - Mapa Resumo (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços/Mapa Resumo
    RPA.Windows.Click         Confirmar
    Fechar janela

Vendas/Prestação de Serviços > Agrupado/Número
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Vendas_Prestação de Serviços/                         Agrupado_Número
    Relatórios
    RPA.Desktop.Press Keys    Right  
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Lançamentos de Vendas/Prestação de Serviços - Agrupado/Número (1)
    repetidor de teclas       tab      4
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Lançamentos de Vendas/Prestação de Serviços - Agrupado/Número (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços/Agrupado_Número
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Vendas/Prestação de Serviços > Movimento de Vendedores
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Vendas_Prestação de Serviços/                         Movimento de Vendedores
    Relatórios
    RPA.Desktop.Press Keys    Right  
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Movimentação de Vendedores (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Movimentação de Vendedores (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços/Movimento de Vendedores
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Vendas/Prestação de Serviços > Análise de Recebimento
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Vendas_Prestação de Serviços/                         Análise de Recebimento
    Relatórios
    RPA.Desktop.Press Keys    Right  
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Vendas/Prestação de Serviços - Análise de Recebimento (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Vendas/Prestação de Serviços - Análise de Recebimento (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços/Análise de Recebimento
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

Vendas/Prestação de Serviços > Sintético/Vendedor/Item
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Vendas_Prestação de Serviços/                         Sintético_Vendedor_Item
    Relatórios
    RPA.Desktop.Press Keys    Right  
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Vendas/Prestação de Serviços/Vendedor/Item (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Vendas/Prestação de Serviços/Vendedor/Item (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços/Sintético_Vendedor_Item
    RPA.Windows.Click         Confirmar
    Fechar janela

Vendas/Prestação de Serviços > PDV > Cancelamentos de itens de pré-venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Vendas_Prestação de Serviços/PDV/                         Cancelamentos de itens de pré-venda
    Relatórios
    RPA.Desktop.Press Keys    Right  
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Relatório de itens cancelamentos de pré-venda (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de itens cancelamentos de pré-venda (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços/PDV/Cancelamentos de itens de pré-venda
    RPA.Windows.Click         Confirmar
    Fechar janela

Vendas/Prestação de Serviços > Vendas/Aquisição de Serviços - CFOP
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Vendas_Prestação de Serviços/                         Vendas_Aquisição de Serviços - CFOP
    Relatórios
    RPA.Desktop.Press Keys    Right  
    RPA.Desktop.Press Keys    Q
    RPA.Windows.Get Text      Vendas/Aquisição de Serviços - CFOP (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Vendas/Aquisição de Serviços - CFOP (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços/Vendas_Aquisição de Serviços - CFOP
    RPA.Windows.Click         Confirmar
    Fechar janela

Vendas/Prestação de Serviços > Vendas com Conversão de Unidades
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Vendas_Prestação de Serviços/                         Vendas com Conversão de Unidades
    Relatórios
    RPA.Desktop.Press Keys    Right  
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Vendas com Conversão de Unidades (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Vendas com Conversão de Unidades (1)    ${Caminho_Screenshots}Vendas_Prestação de Serviços/Vendas com Conversão de Unidades
    RPA.Windows.Click         Confirmar
    Fechar janela

Análise de Rentabilidade
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Análise de Rentabilidade
    Relatórios
    RPA.Windows.Click         Análise de Rentabilidade  
    RPA.Windows.Get Text      Relatório de Rentabilidade (1)
    RPA.Desktop.Press Keys    Shift    Tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Rentabilidade (1)    ${Caminho_Screenshots}Análise de Rentabilidade
    RPA.Windows.Click         Confirmar
    Fechar janela

Lançamentos de Saídas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Lançamentos de Saídas
    Relatórios
    RPA.Windows.Click         Lançamentos de Saídas  
    RPA.Windows.Get Text      Lançamentos de Saídas (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Lançamentos de Saídas (1)    ${Caminho_Screenshots}Lançamentos de Saídas
    RPA.Windows.Click         Confirmar
    Fechar janela

Produtos / Fornecedor
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Produtos _ Fornecedor
    Relatórios
    RPA.Windows.Click         Produtos / Fornecedor  
    RPA.Windows.Get Text      Relatório Ultimo Fornecedor (1)
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório Ultimo Fornecedor (1)    ${Caminho_Screenshots}Produtos _ Fornecedor
    RPA.Windows.Click         Fechar
    Fechar janela

Notas Fiscais Emitidas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Notas Fiscais Emitidas
    Relatórios
    RPA.Windows.Click        Notas Fiscais Emitidas
    RPA.Windows.Get Text     Relatório de Notas Fiscais Emitidas (1)
    repetidor de teclas      tab      3
    RPA.Desktop.Press Keys   0
    RPA.Desktop.Press Keys   Enter
    BaseDesktop.Screenshot   Relatório de Notas Fiscais Emitidas (1)   ${Caminho_Screenshots}Notas Fiscais 
    RPA.Windows.Click        Confirmar
    Fechar janela

Notas Fiscais Inutilizadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Notas Fiscais Inutilizadas
    Relatórios
    RPA.Windows.Click         Notas Fiscais Inutilizadas  
    RPA.Windows.Get Text      Relatório de Notas Fiscais Inutilizadas (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Notas Fiscais Inutilizadas (1)    ${Caminho_Screenshots}Notas Fiscais Inutilizadas
    RPA.Windows.Click         Confirmar
    Fechar janela

Pedido de Venda > Pedidos de Venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedido de Venda/                       Pedidos de Venda
    Relatórios
    RPA.Windows.Click         Pedido de Venda
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Relatório de Pedidos de Venda (1)
    repetidor de teclas       tab      5
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Pedidos de Venda (1)    ${Caminho_Screenshots}Pedido de Venda/Pedidos de Venda
    RPA.Windows.Click         Confirmar
    Fechar janela

Pedido de Venda > Pedidos de Venda Agrupados por Setor
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedido de Venda/                       Pedidos de Venda Agrupados por Setor
    Relatórios
    RPA.Windows.Click         Pedido de Venda
    RPA.Desktop.Press Keys    E  
    RPA.Windows.Get Text      Relatório de Pedido de Venda Agrupado por Setor (1)
    repetidor de teclas       tab      1
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Pedido de Venda Agrupado por Setor (1)    ${Caminho_Screenshots}Pedido de Venda/Pedidos de Venda Agrupados por Setor
    RPA.Windows.Click         Confirmar
    Fechar janela

Pedido de Venda > Rentabilidade de Pedidos de Venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedido de Venda/                       Rentabilidade de Pedidos de Venda
    Relatórios
    RPA.Windows.Click         Pedido de Venda
    RPA.Desktop.Press Keys    R  
    RPA.Windows.Get Text      Relatório de Rentabilidade de Pedidos de Venda (1)
    repetidor de teclas       tab      4
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Rentabilidade de Pedidos de Venda (1)    ${Caminho_Screenshots}Pedido de Venda/Rentabilidade de Pedidos de 
    RPA.Windows.Click         Confirmar
    Fechar janela

Vendas em Condicional

    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Vendas em Condicional
    Relatórios
    RPA.Windows.Click         Vendas em Condicional  
    RPA.Windows.Get Text      Relatório de Condicionais (1)
    repetidor de teclas       tab      4
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Condicionais (1)    ${Caminho_Screenshots}Vendas em Condicional
    RPA.Windows.Click         Confirmar
    Fechar janela

Disponibilidade em Estoque (Condicionais)
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Disponibilidade em Estoque (Condicionais)
    Relatórios
    RPA.Windows.Click         Disponibilidade em Estoque (Condicionais)  
    RPA.Windows.Get Text      Disponibilidade de Estoque (Condicionais) (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Disponibilidade de Estoque (Condicionais) (1)    ${Caminho_Screenshots}Disponibilidade em Estoque (Condicionais)
    RPA.Windows.Click         Confirmar
    Fechar janela

Giro de Clientes
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Giro de Clientes
    Relatórios
    RPA.Windows.Click         Giro de Clientes  
    RPA.Windows.Get Text      Relatório Giro de Clientes (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório Giro de Clientes (1)    ${Caminho_Screenshots}Giro de Clientes
    RPA.Windows.Click         Confirmar
    Fechar janela

Giro de Produtos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Giro de Produtos
    Relatórios
    RPA.Windows.Click         Giro de Produtos  
    RPA.Windows.Get Text      Relatório Giro de Produtos (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório Giro de Produtos (1)    ${Caminho_Screenshots}Giro de Produtos
    RPA.Windows.Click         Confirmar
    Fechar janela

Resumo Retenção Monsanto
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Resumo Retenção Monsanto
    Relatórios
    RPA.Windows.Click         Resumo Retenção Monsanto  
    RPA.Windows.Get Text      Consulta Monsanto (1)
    RPA.Windows.Click         Executar
    BaseDesktop.Screenshot    Consulta Monsanto (1)    ${Caminho_Screenshots}Resumo Retenção Monsanto
    Fechar janela

Horas Trabalhadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Horas Trabalhadas
    Relatórios
    RPA.Windows.Click         Horas Trabalhadas
    RPA.Windows.Get Text      Relatório de Horas Trabalhadas (1)
    RPA.Desktop.Press Keys    Shift    Tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Horas Trabalhadas (1)    ${Caminho_Screenshots}Horas Trabalhadas
    RPA.Windows.Click         Confirmar
    Fechar janela

Resumo Geral por Forma de Pagamento
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Resumo Geral por Forma de Pagamento
    Relatórios
    RPA.Windows.Click         Resumo Geral por Forma de Pagamento  
    RPA.Windows.Get Text      Resumo Geral por Forma de Pagamento (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Resumo Geral por Forma de Pagamento (1)    ${Caminho_Screenshots}Resumo Geral por Forma de Pagamento
    RPA.Windows.Click         Confirmar
    Fechar janela

Resumo Geral de Movimentos/Saldos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Resumo Geral de Movimentos_Saldos
    Relatórios
    RPA.Windows.Click         Resumo Geral de Movimentos/Saldos  
    RPA.Windows.Get Text      Resumo Geral de Movimentos/Saldos (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Resumo Geral de Movimentos/Saldos (1)    ${Caminho_Screenshots}Resumo Geral de Movimentos_Saldos
    RPA.Windows.Click         Confirmar
    Fechar janela

Saldo Vendas Entrega Futura
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Saldo Vendas Entrega Futura
    Relatórios
    RPA.Windows.Click         Saldo Vendas Entrega Futura  
    RPA.Windows.Get Text      Saldo Vendas Entrega Futura (1)
    repetidor de teclas       tab      1
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Saldo Vendas Entrega Futura (1)    ${Caminho_Screenshots}Saldo Vendas Entrega Futura
    RPA.Windows.Click         Confirmar
    Fechar janela

Saídas/ Cidades (IAP)
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Saídas_ Cidades (IAP)
    Relatórios
    RPA.Windows.Click         Saídas/ Cidades (IAP)  
    RPA.Windows.Get Text      Saídas/Cidades (IAP)". (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Saídas/Cidades (IAP)". (1)   ${Caminho_Screenshots}Saídas_ Cidades (IAP)
    RPA.Windows.Click         Confirmar
    Fechar janela

Receituários Agrônomicos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Receituários Agrônomicos
    Relatórios
    RPA.Windows.Click         Receituários Agrônomicos  
    RPA.Windows.Get Text      Relatório de Receituários Agronômicos (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Receituários Agronômicos (1)    ${Caminho_Screenshots}Receituários Agrônomicos
    RPA.Windows.Click         Confirmar
    Fechar janela
    
Relatórios ADAPAR > Relatório de Sementes
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Relatórios ADAPAR/                        Relatório de Sementes
    Relatórios
    RPA.Windows.Click         Relatórios ADAPAR 
    RPA.Desktop.Press Keys    R 
    RPA.Windows.Get Text      Relatório ADAPAR - Sementes (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório ADAPAR - Sementes (1)    ${Caminho_Screenshots}Relatórios ADAPAR/Relatório de Sementes
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatórios ADAPAR > Relatório de Fertilizantes
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Relatórios ADAPAR/                        Relatório de Fertilizantes
    Relatórios
    RPA.Windows.Click         Relatórios ADAPAR 
    RPA.Desktop.Press Keys    E 
    RPA.Windows.Get Text      Relatório ADAPAR - Fertilizantes (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório ADAPAR - Fertilizantes (1)   ${Caminho_Screenshots}Relatórios ADAPAR/Relatório de Fertilizantes
    RPA.Windows.Click         Confirmar
    Fechar janela

Cadastro > Setores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/              Setores
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Relatório de Setores (1)
    RPA.Windows.Click       Ordem de Código
    BaseDesktop.Screenshot  Relatório de Setores (1)    ${Caminho_Screenshots}Cadastros/Setores
    Fechar janela

Cadastro > Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/              Terceiros
    Relatórios
    RPA.Windows.Click        Cadastros
    RPA.Desktop.Press Keys   T
    RPA.Windows.Get Text     Relatório de Clientes/Fornecedores (1)
    repetidor de teclas      tab      9
    RPA.Desktop.Press Keys   0
    RPA.Desktop.Press Keys   Enter
    BaseDesktop.Screenshot   Relatório de Clientes/Fornecedores (1)    ${Caminho_Screenshots}Cadastros/Terceiros
    RPA.Windows.Click        Confirmar
    Fechar janela

Cadastros > Produtos > Produtos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/Produtos/              Produtos
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
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/Produtos/              Tabela de Umidade
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  T       
    RPA.Windows.Get Text    Relatório de Tabelas de Umidade (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Tabelas de Umidade (1)    ${Caminho_Screenshots}Cadastros/Produtos/Tabela de Umidade
    Fechar janela

Cadastros > Produtos > Cores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/Produtos/              Cores
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  C        
    RPA.Windows.Get Text    Relatório de Cores (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Cores (1)    ${Caminho_Screenshots}Cadastros/Produtos/Cores
    Fechar janela

Cadastros > Produtos > Unidades
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/Produtos/              Unidades
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  U      
    RPA.Windows.Get Text    Relatório de Unidades (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Unidades (1)    ${Caminho_Screenshots}Cadastros/Produtos/Unidades
    Fechar janela

Cadastros > Produtos > Marcas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/Produtos/              Marcas
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  M   
    RPA.Windows.Get Text    Relatório de Marcas (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Marcas (1)    ${Caminho_Screenshots}Cadastros/Produtos/Marcas
    Fechar janela

Cadastros > Produtos > Estampas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/Produtos/              Estampas
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  E      
    RPA.Windows.Get Text    Relatório de Estampas (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Estampas (1)    ${Caminho_Screenshots}Cadastros/Produtos/Estampas
    Fechar janela

Cadastros > Produtos > Tamanhos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/Produtos/              Tamanhos
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  A      
    RPA.Windows.Get Text    Relatório de Tamanhos (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Tamanhos (1)    ${Caminho_Screenshots}Cadastros/Produtos/Tamanhos
    Fechar janela

Cadastros > Produtos > Ingredientes/Informações Nutricionais
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/Produtos/              Ingredientes_Informações Nutricionais
    Relatórios
    RPA.Windows.Click        Cadastros
    RPA.Windows.Click        Produtos
    RPA.Desktop.Press Keys   I      
    RPA.Windows.Get Text     Relatório de Ingredientes / Informações Nutricionais (1)
    repetidor de teclas      tab      2
    RPA.Desktop.Press Keys   0
    RPA.Desktop.Press Keys   Enter
    BaseDesktop.Screenshot   Relatório de Ingredientes / Informações Nutricionais (1)    ${Caminho_Screenshots}Cadastros/Produtos/Ingredientes_Informações Nutricionais
    RPA.Windows.Click        Confirmar
    Fechar janela

Cadastros > Tabela Tributária
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/              Tabela Tributária
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Relatório de Tabelas Tributárias (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Tabelas Tributárias (1)    ${Caminho_Screenshots}Cadastros/Tabela Tributária
    Fechar janela

Cadastros > CFOP
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/              CFOP
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Relatório de CFOP's (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de CFOP's (1)    ${Caminho_Screenshots}Cadastros/CFOP
    Fechar janela

Cadastros > Estabelecimento
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/              Estabelecimento
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Relatório de Estabelecimentos (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Estabelecimentos (1)    ${Caminho_Screenshots}Cadastros/Estabelecimento
    Fechar janela

Cadastros > Operações Fiscais
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/              Operações Fiscais
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Relatório de Operações Fiscais (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Operações Fiscais (1)    ${Caminho_Screenshots}Cadastros/Operações Fiscais
    Fechar janela

Cadastros > Aniversariantes
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/              Operações Aniversariantes
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  N
    RPA.Windows.Get Text    Relação de Aniversariantes (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relação de Aniversariantes (1)    ${Caminho_Screenshots}Cadastros/Operações Aniversariantes
    RPA.Windows.Click       Confirmar
    Fechar janela

Cadastros > Países
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Cadastros/           Países
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Relatório de Países (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Países (1)    ${Caminho_Screenshots}Cadastros/Países
    Fechar janela

Cadastros > Municípios
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Cadastros/           Municípios
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Relatório de Municípios (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Municípios (1)    ${Caminho_Screenshots}Cadastros/Municípios
    Fechar janela

Cadastros > Estados
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Cadastros/           Estados
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Relatório de Estados (1)
    RPA.Windows.Click       Ordem de País
    BaseDesktop.Screenshot  Relatório de Estados (1)    ${Caminho_Screenshots}Cadastros/Estados
    Fechar janela

Cadastros > Regiões
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Cadastros/          Regiões
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  G
    RPA.Windows.Get Text    Relatório de Regiões (1)
    RPA.Windows.Click       Ordem de Nome
    BaseDesktop.Screenshot  Relatório de Regiões (1)    ${Caminho_Screenshots}Cadastros/Regiões
    Fechar janela

ECF > Relatório Mapa Resumo
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}ECF/          Relatório Mapa Resumo
    Relatórios
    RPA.Windows.Click       ECF
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Relatório de Mapa Resumo (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Mapa Resumo (1)    ${Caminho_Screenshots}ECF/Relatório Mapa Resumo
    RPA.Windows.Click       Confirmar
    Fechar janela

Relatório de Previsão de Pensões X Realizado
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Relatório de Previsão de Pensões X Realizado
    Relatórios
    RPA.Windows.Click         Relatório de Previsão de Pensões X Realizado 
    RPA.Windows.Get Text      Relatório de Totais Pensão (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Totais Pensão (1)   ${Caminho_Screenshots}Relatório de Previsão de Pensões X Realizado
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         Fechar

Customizados > Relatório de Analise de Vendas por Setor
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Customizados/          Relatório de Analise de Vendas por Setor
    Relatórios
    RPA.Windows.Click       Customizados
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Relatório de análise de vendas - Comercial (1)
    RPA.Desktop.Press Keys  Shift    Tab
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de análise de vendas - Comercial (1)    ${Caminho_Screenshots}Customizados/Relatório de Analise de Vendas por Setor
    RPA.Windows.Click       Confirmar
    Fechar janela
    
Customizados > Relatório de Taxa de Serviço Restaurante
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Customizados/          Relatório de Taxa de Serviço Restaurante
    Relatórios
    RPA.Windows.Click       Customizados
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Relatório de Taxa de Serviço Restaurante (1)
    repetidor de teclas     tab      2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Taxa de Serviço Restaurante (1)    ${Caminho_Screenshots}Customizados/Relatório de Taxa de Serviço Restaurante
    RPA.Windows.Click       Confirmar
    Fechar janela

Customizados > Borderô de Entregas
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Customizados/          Borderô de Entregas
    Relatórios
    RPA.Windows.Click       Customizados
    RPA.Desktop.Press Keys  B
    RPA.Windows.Get Text    Borderô de Entregas (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Borderô de Entregas (1)    ${Caminho_Screenshots}Customizados/Borderô de Entregas
    RPA.Windows.Click       Confirmar
    Fechar janela

    
    
