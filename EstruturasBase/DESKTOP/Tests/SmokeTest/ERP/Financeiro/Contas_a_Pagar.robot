*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Financeiro/Contas a Pagar/ 
${nome_print}
${nome_exe}=    cde_win_fin

*** Keywords ***

Contas a Pagar
    Cadastros
    repetidor de teclas    right    2


*** Test Cases ***

Lançamentos > Lançamento - Simplificado
    ${nome_print}=     Set Variable     Lançamento - Simplificado
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Lançamentos
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Provisões do Contas a Pagar (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Provisões do Contas a Pagar (1)    ${Caminho_Screenshots}Lançamentos/Lançamento - Simplificado
    Fechar com Sim

Lançamentos > Lançamento - Múltiplas Parcelas
    ${nome_print}=     Set Variable     Lançamento - Múltiplas Parcelas
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Lançamentos
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Lançamento do Contas a Pagar - Múltiplas Parcelas (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Lançamento do Contas a Pagar - Múltiplas Parcelas (1)    ${Caminho_Screenshots}Lançamentos/Lançamento - Múltiplas Parcelas
    Fechar com Sim

Lançamentos > Lançamento - Com Baixa Automática
    ${nome_print}=     Set Variable     Lançamento - Com Baixa Automática
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Lançamentos
    RPA.Desktop.Press Keys    n
    RPA.Windows.Get Text      Provisões do Contas a Pagar - Com Baixa Automática
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Provisões do Contas a Pagar - Com Baixa Automática  ${Caminho_Screenshots}Lançamentos/Lançamento - Com Baixa Automática
    Fechar janela

Financiamento
    ${nome_print}=     Set Variable     Financiamento
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click       Financiamento
    RPA.Windows.Get Text    Cronograma de Liberação e Amortização (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot  Cronograma de Liberação e Amortização (1)    ${Caminho_Screenshots}Financiamento
    Fechar com Sim

Baixas
    ${nome_print}=     Set Variable     Baixas
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click       Baixas
    RPA.Windows.Get Text    Baixas do Contas a Pagar (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Baixas do Contas a Pagar (1)    ${Caminho_Screenshots}Baixas
    RPA.Windows.Click       OK
    Fechar janela

Estornar Baixas
    ${nome_print}=     Set Variable     Estornar Baixas
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click       Estornar Baixas
    RPA.Windows.Get Text    Estorno de Baixas do Contas a Pagar (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Estorno de Baixas do Contas a Pagar (1)    ${Caminho_Screenshots}Extornar Baixas
    RPA.Windows.Click       Sim
    RPA.Windows.Click       OK
    Fechar janela

Renegociações
    ${nome_print}=     Set Variable     Renegociações
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click       Renegociações
    RPA.Windows.Get Text    Renegociação do Contas a Pagar (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Renegociação do Contas a Pagar (1)    ${Caminho_Screenshots}Renegociações
    RPA.Windows.Click       OK
    Fechar janela

Estornar Renegociações
    ${nome_print}=     Set Variable     Estornar Renegociações
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click       Estornar Renegociações
    RPA.Windows.Get Text    Estorno de Renegociações do Contas a Pagar (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Estorno de Renegociações do Contas a Pagar (1)    ${Caminho_Screenshots}Extornar Renegociações
    RPA.Windows.Click       Sim
    RPA.Windows.Click       OK
    Fechar janela

Alterar Vencimento_Portador
    ${nome_print}=     Set Variable     Alterar Vencimento_Portador
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click       Alterar Vencimento/Portador
    RPA.Windows.Get Text    Alteração de Vencimento/Portador do Contas a Pagar (1)
    RPA.Windows.Click       Executar
    BaseKeywordsDesktop.Screenshot  Alteração de Vencimento/Portador do Contas a Pagar (1)    ${Caminho_Screenshots}Alterar Vencimento_Portador
    RPA.Windows.Click       Sim
    RPA.Windows.Click       OK
    Fechar janela

Adiantamentos > Adiantamento a Fornecedores
    ${nome_print}=     Set Variable     Adiantamento a Fornecedores
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Adiantamentos a Fornecedores (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Adiantamentos a Fornecedores (1)    ${Caminho_Screenshots}Adiantamentos/Adiantamento a Fornecedores
    Fechar com Sim

Adiantamentos > Extrato dos Adiantamentos_Fornecedor
    ${nome_print}=     Set Variable     Extrato dos Adiantamentos_Fornecedor
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Extrato de Adiantamentos/Credor/Fornecedor (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Extrato de Adiantamentos/Credor/Fornecedor (1)    ${Caminho_Screenshots}Adiantamentos/Extrato dos Adiantamentos_Fornecedor
    RPA.Windows.Click         Confirmar
    Fechar janela

Adiantamentos > Saldo de Adiantamentos Fornecedores
    ${nome_print}=     Set Variable     Saldo de Adiantamentos Fornecedores
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Saldo de Adiantamentos Fornecedor
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Saldo de Adiantamentos Fornecedor    ${Caminho_Screenshots}Adiantamentos/Saldo de Adiantamentos Fornecedores
    RPA.Windows.Click         Confirmar
    Fechar janela

Adiantamento a Funcionários
    ${nome_print}=     Set Variable     Adiantamento a Funcionários
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    d
    RPA.Windows.Get Text      Adiantamentos a Funcionários (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Adiantamentos a Funcionários (1)    ${Caminho_Screenshots}Adiantamentos/Adiantamento a Funcionários
    Fechar janela
    RPA.Windows.Click         Sim

Extrato dos Adiantamentos_Funcionário
    ${nome_print}=     Set Variable     Extrato dos Adiantamentos_Funcionário
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    x
    RPA.Windows.Get Text      Extrato de Adiantamentos/Funcionários (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Extrato de Adiantamentos/Funcionários (1)    ${Caminho_Screenshots}Adiantamentos/Extrato dos Adiantamentos_Funcionário
    RPA.Windows.Click         Confirmar
    Fechar janela

Saldo de Adiantamentos Funcionários
    ${nome_print}=     Set Variable     Saldo de Adiantamentos Funcionários
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Saldo de Adiantamentos Funcionário
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Saldo de Adiantamentos Funcionário    ${Caminho_Screenshots}Adiantamentos/Saldo de Adiantamentos Funcionários
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatório de Lançamento
    ${nome_print}=     Set Variable     Relatório de Lançamento
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Relatório de Lançamentos de Adiantamentos a Fornecedores (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Lançamentos de Adiantamentos a Fornecedores (1)    ${Caminho_Screenshots}Adiantamentos/Relatório de Lançamento
    RPA.Windows.Click       Confirmar   
    Fechar janela

Antecipação de Pedido de Compras
    ${nome_print}=     Set Variable     Antecipação de Pedido de Compras
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    n
    RPA.Windows.Get Text      Adiantamento de Pedido de Compra (1)
    RPA.Windows.Click         Adiantamentos
    BaseKeywordsDesktop.Screenshot    Adiantamento de Pedido de Compra (1)    ${Caminho_Screenshots}Adiantamentos/Antecipação de Pedido de Compras
    Fechar janela

Empenhos
    ${nome_print}=     Set Variable     Empenhos
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click       Empenhos
    RPA.Windows.Get Text    Cadastro de Empenhos (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Empenhos (1)    ${Caminho_Screenshots}Empenhos
    Fechar com Sim

Recibos Avulsos
    ${nome_print}=     Set Variable     Recibos Avulsos
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click       Recibos Avulsos
    RPA.Windows.Get Text    Emissão de Recibo - Contas a Pagar (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Emissão de Recibo - Contas a Pagar (1)    ${Caminho_Screenshots}Recibos Avulsos
    Fechar com Sim

Consultas
    ${nome_print}=     Set Variable     Consultas
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click       Consultas
    RPA.Windows.Get Text    Consulta do Contas a Pagar (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta do Contas a Pagar (1)    ${Caminho_Screenshots}Consultas
    RPA.Windows.Click       Sim
    RPA.Windows.Click       OK
    Fechar janela

Contas a Pagar
    ${nome_print}=     Set Variable     Contas a Pagar
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Relatório de Contas a Pagar (1)
    repetidor de teclas       tab                 2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Contas a Pagar (1)    ${Caminho_Screenshots}Relatórios/Contas a Pagar
    RPA.Windows.Click         Confirmar
    Fechar janela

Contas a Pagar a Prazo Resumido
    ${nome_print}=     Set Variable     Contas a Pagar a Prazo Resumido
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Relatórios 
    RPA.Desktop.Press Keys    o
    RPA.Windows.Get Text      Relatório de Contas a Pagar a Prazo (1)
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Contas a Pagar a Prazo (1)    ${Caminho_Screenshots}Relatórios/Contas a Pagar a Prazo Resumido
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

Pagamentos
    ${nome_print}=     Set Variable     Pagamentos
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Relatórios 
    RPA.Desktop.Press Keys    p
    RPA.Windows.Get Text      Relatório de Baixas do Contas a Pagar (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Baixas do Contas a Pagar (1)    ${Caminho_Screenshots}Relatórios/Pagamentos
    RPA.Windows.Click         Confirmar
    Fechar janela

Empenhos_Credor
    ${nome_print}=     Set Variable     Empenhos_Credor
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Relatórios 
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Relatório de Empenhos/Credor (1)
    RPA.Desktop.Press Keys    Enter 
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Empenhos/Credor (1)    ${Caminho_Screenshots}Relatórios/Empenhos_Credor
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Manutenção de Pagamento de Comissões
    ${nome_print}=     Set Variable     Manutenção de Pagamento de Comissões
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Comissões de Venda
    RPA.Desktop.Press Keys    m
    RPA.Windows.Get Text      Manutenção de Pagamento de Comissões (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Manutenção de Pagamento de Comissões (1)    ${Caminho_Screenshots}Comissões de Venda/Manutenção de Pagamento de Comissões
    RPA.Windows.Click         Confirmar
    Fechar janela

Provisionamento de Pagamento
    ${nome_print}=     Set Variable     Provisionamento de Pagamento
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Comissões de Venda
    RPA.Desktop.Press Keys    p
    RPA.Windows.Get Text      Provisionamento de Pagamento (1)  
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Provisionamento de Pagamento (1)    ${Caminho_Screenshots}Comissões de Venda/Provisionamento de Pagamento
    RPA.Windows.Click         OK
    Fechar janela

Relatório de Comissões
    ${nome_print}=     Set Variable     Relatório de Comissões
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar
    RPA.Windows.Click         Comissões de Venda
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Relatório de Comissões de Vendas (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Comissões de Vendas (1)   ${Caminho_Screenshots}Comissões de Venda/Relatório de Comissões
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatório de Comissões por Vendedor
    ${nome_print}=     Set Variable     Relatório de Comissões por Vendedor
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar 
    RPA.Windows.Click         Comissões de Venda
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Relatório de Comissões por Vendedor (1)
    repetidor de teclas       tab     2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Comissões por Vendedor (1)    ${Caminho_Screenshots}Comissões de Venda/Relatório de Comissões por Vendedor
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click       OK
    Fechar janela

Reprocessar Valores da Comissão
    ${nome_print}=     Set Variable     Reprocessar Valores da Comissão
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar 
    RPA.Windows.Click         Comissões de Venda
    RPA.Desktop.Press Keys    o
    RPA.Windows.Get Text      Reprocessar Comissões (1)
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Reprocessar Comissões (1)    ${Caminho_Screenshots}Comissões de Venda/Reprocessar Valores da Comissão
    RPA.Windows.Click         Confirmar
    Fechar janela

Cadastro De Comissão por Faixa de Descontos
    ${nome_print}=     Set Variable     Cadastro De Comissão por Faixa de Descontos
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar 
    RPA.Windows.Click         Comissões de Venda
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Cadastro de Comissão por Faixa de Descontos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Comissão por Faixa de Descontos (1)    ${Caminho_Screenshots}Comissões de Venda/Cadastro De Comissão por Faixa de Descontos
    Fechar com Sim

Remessa
    ${nome_print}=     Set Variable     Remessa
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar 
    RPA.Windows.Click         Pagamentos Eletrônicos
    RPA.Windows.Click         Pagamentos a Fornecedores
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Remessa de Pagamento Eletrônico PagFor (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Remessa de Pagamento Eletrônico PagFor (1)    ${Caminho_Screenshots}Pagamentos Eletrônicos/Pagamentos a Fornecedores/Remessa
    RPA.Windows.Click         Confirmar
    Fechar janela

Retorno
    ${nome_print}=     Set Variable     Retorno
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar 
    RPA.Windows.Click         Pagamentos Eletrônicos
    RPA.Windows.Click         Pagamentos a Fornecedores
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Retorno de Pagamento Eletrônico (PagFor) (1)
    RPA.Windows.Click         Marcar Todos
    BaseKeywordsDesktop.Screenshot    Retorno de Pagamento Eletrônico (PagFor) (1)    ${Caminho_Screenshots}Pagamentos Eletrônicos/Pagamentos a Fornecedores/Retorno
    RPA.Windows.Click         OK
    Fechar janela

Pagamentos a Funcionarios
    ${nome_print}=     Set Variable     Pagamentos a Funcionarios
    [Tags]   SmokeERP    Financeiro    Contas a Pagar   SmokeTest
    Contas a Pagar 
    RPA.Windows.Click         Pagamentos Eletrônicos
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Pagamento a Funcionários (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Pagamento a Funcionários (1)    ${Caminho_Screenshots}Pagamentos Eletrônicos/Pagamentos a Funcionarios
    RPA.Windows.Click         OK
    Fechar janela