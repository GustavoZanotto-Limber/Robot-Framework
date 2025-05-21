*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_fin


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Financeiro/Contas a Pagar/ 


*** Keywords ***

Contas a Pagar
    Cadastros
    repetidor de teclas    right    1


*** Test Cases ***

Lançamentos > Lançamento - Simplificado
    [Teardown]                Caso aconteça erro                 ${Caminho_Screenshots}Lançamentos/                              Lançamento - Simplificado
    Contas a Pagar
    RPA.Windows.Click         Lançamentos
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Provisões do Contas a Pagar (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Provisões do Contas a Pagar (1)    ${Caminho_Screenshots}Lançamentos/Lançamento - Simplificado
    Fechar janela
    RPA.Windows.Click       Sim

Lançamentos > Lançamento - Múltiplas Parcelas
    [Teardown]                Caso aconteça erro                                       ${Caminho_Screenshots}Lançamentos/                                    Lançamento - Múltiplas Parcelas
    Contas a Pagar
    RPA.Windows.Click         Lançamentos
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Lançamento do Contas a Pagar - Múltiplas Parcelas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Lançamento do Contas a Pagar - Múltiplas Parcelas (1)    ${Caminho_Screenshots}Lançamentos/Lançamento - Múltiplas Parcelas
    Fechar janela
    RPA.Windows.Click       Sim

Lançamentos > Lançamento - Com Baixa Automática
    [Teardown]                Caso aconteça erro                                    ${Caminho_Screenshots}Lançamentos/                                      Lançamento - Com Baixa Automática
    Contas a Pagar
    RPA.Windows.Click         Lançamentos
    RPA.Desktop.Press Keys    n
    RPA.Windows.Get Text      Provisões do Contas a Pagar - Com Baixa Automática
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Provisões do Contas a Pagar - Com Baixa Automática  ${Caminho_Screenshots}Lançamentos/Lançamento - Com Baixa Automática
    Fechar janela

Financiamento
    [Teardown]              Caso aconteça erro                           ${Caminho_Screenshots}                  Financiamento
    Contas a Pagar
    RPA.Windows.Click       Financiamento
    RPA.Windows.Get Text    Cronograma de Liberação e Amortização (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cronograma de Liberação e Amortização (1)    ${Caminho_Screenshots}Financiamento
    Fechar janela
    RPA.Windows.Click       Sim

Baixas
    [Teardown]              Caso aconteça erro              ${Caminho_Screenshots}           Baixas
    Contas a Pagar
    RPA.Windows.Click       Baixas
    RPA.Windows.Get Text    Baixas do Contas a Pagar (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Baixas do Contas a Pagar (1)    ${Caminho_Screenshots}Baixas
    RPA.Windows.Click       OK
    Fechar janela

Estornar Baixas
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                    Extornar Baixas
    Contas a Pagar
    RPA.Windows.Click       Estornar Baixas
    RPA.Windows.Get Text    Estorno de Baixas do Contas a Pagar (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Estorno de Baixas do Contas a Pagar (1)    ${Caminho_Screenshots}Extornar Baixas
    RPA.Windows.Click       Sim
    RPA.Windows.Click       OK
    Fechar janela

Renegociações
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}                  Renegociações
    Contas a Pagar
    RPA.Windows.Click       Renegociações
    RPA.Windows.Get Text    Renegociação do Contas a Pagar (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Renegociação do Contas a Pagar (1)    ${Caminho_Screenshots}Renegociações
    RPA.Windows.Click       OK
    Fechar janela

Estornar Renegociações
    [Teardown]              Caso aconteça erro                                ${Caminho_Screenshots}                           Extornar Renegociações
    Contas a Pagar
    RPA.Windows.Click       Estornar Renegociações
    RPA.Windows.Get Text    Estorno de Renegociações do Contas a Pagar (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Estorno de Renegociações do Contas a Pagar (1)    ${Caminho_Screenshots}Extornar Renegociações
    RPA.Windows.Click       Sim
    RPA.Windows.Click       OK
    Fechar janela

Alterar Vencimento/Portador
    [Teardown]              Caso aconteça erro                                        ${Caminho_Screenshots}                                Alterar Vencimento_Portador
    Contas a Pagar
    RPA.Windows.Click       Alterar Vencimento/Portador
    RPA.Windows.Get Text    Alteração de Vencimento/Portador do Contas a Pagar (1)
    RPA.Windows.Click       Executar
    BaseDesktop.Screenshot  Alteração de Vencimento/Portador do Contas a Pagar (1)    ${Caminho_Screenshots}Alterar Vencimento_Portador
    RPA.Windows.Click       Sim
    RPA.Windows.Click       OK
    Fechar janela

Adiantamentos > Adiantamento a Fornecedores
    [Teardown]                Caso aconteça erro                  ${Caminho_Screenshots}Adiantamentos/                                Adiantamento a Fornecedores
    Contas a Pagar
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Adiantamentos a Fornecedores (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Adiantamentos a Fornecedores (1)    ${Caminho_Screenshots}Adiantamentos/Adiantamento a Fornecedores
    Fechar janela
    RPA.Windows.Click       Sim

Adiantamentos > Extrato dos Adiantamentos/Fornecedor
    [Teardown]                Caso aconteça erro                                ${Caminho_Screenshots}Adiantamentos/                                         Extrato dos Adiantamentos_Fornecedor
    Contas a Pagar
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Extrato de Adiantamentos/Credor/Fornecedor (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Extrato de Adiantamentos/Credor/Fornecedor (1)    ${Caminho_Screenshots}Adiantamentos/Extrato dos Adiantamentos_Fornecedor
    RPA.Windows.Click         Confirmar
    Fechar janela

Adiantamentos > Saldo de Adiantamentos Fornecedores
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}Adiantamentos/                                        Saldo de Adiantamentos Fornecedores
    Contas a Pagar
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Saldo de Adiantamentos Fornecedor
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Saldo de Adiantamentos Fornecedor    ${Caminho_Screenshots}Adiantamentos/Saldo de Adiantamentos Fornecedores
    RPA.Windows.Click         Confirmar
    Fechar janela

Adiantamentos > Adiantamento a Funcionários
    [Teardown]                Caso aconteça erro                  ${Caminho_Screenshots}Adiantamentos/                                Adiantamento a Funcionários
    Contas a Pagar
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    d
    RPA.Windows.Get Text      Adiantamentos a Funcionários (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Adiantamentos a Funcionários (1)    ${Caminho_Screenshots}Adiantamentos/Adiantamento a Funcionários
    Fechar janela
    RPA.Windows.Click         Sim

Adiantamentos > Extrato dos Adiantamentos/Funcionário
    [Teardown]                Caso aconteça erro                           ${Caminho_Screenshots}Adiantamentos/                                          Extrato dos Adiantamentos_Funcionário
    Contas a Pagar
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    x
    RPA.Windows.Get Text      Extrato de Adiantamentos/Funcionários (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Extrato de Adiantamentos/Funcionários (1)    ${Caminho_Screenshots}Adiantamentos/Extrato dos Adiantamentos_Funcionário
    RPA.Windows.Click         Confirmar
    Fechar janela

Adiantamentos > Saldo de Adiantamentos Funcionários
    [Teardown]                Caso aconteça erro                    ${Caminho_Screenshots}Adiantamentos/                                        Saldo de Adiantamentos Funcionários
    Contas a Pagar
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Saldo de Adiantamentos Funcionário
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Saldo de Adiantamentos Funcionário    ${Caminho_Screenshots}Adiantamentos/Saldo de Adiantamentos Funcionários
    RPA.Windows.Click         Confirmar
    Fechar janela

Adiantamentos > Relatório de Lançamento
    [Teardown]                Caso aconteça erro                                              ${Caminho_Screenshots}Adiantamentos/                            Relatório de Lançamento
    Contas a Pagar
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Relatório de Lançamentos de Adiantamentos a Fornecedores (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Relatório de Lançamentos de Adiantamentos a Fornecedores (1)    ${Caminho_Screenshots}Adiantamentos/Relatório de Lançamento
    RPA.Windows.Click       Confirmar   
    Fechar janela

Adiantamentos > Antecipação de Pedido de Compras
    [Teardown]                Caso aconteça erro                      ${Caminho_Screenshots}                                                   Antecipação de Pedido de Compras
    Contas a Pagar
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    n
    RPA.Windows.Get Text      Adiantamento de Pedido de Compra (1)
    RPA.Windows.Click         Adiantamentos
    BaseDesktop.Screenshot    Adiantamento de Pedido de Compra (1)    ${Caminho_Screenshots}Adiantamentos/Antecipação de Pedido de Compras
    Fechar janela

Empenhos
    [Teardown]              Caso aconteça erro          ${Caminho_Screenshots}             Empenhos
    Contas a Pagar
    RPA.Windows.Click       Empenhos
    RPA.Windows.Get Text    Cadastro de Empenhos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Empenhos (1)    ${Caminho_Screenshots}Empenhos
    Fechar janela
    RPA.Windows.Click       Sim

Recibos Avulsos
    [Teardown]              Caso aconteça erro                        ${Caminho_Screenshots}                    Recibos Avulsos
    Contas a Pagar
    RPA.Windows.Click       Recibos Avulsos
    RPA.Windows.Get Text    Emissão de Recibo - Contas a Pagar (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Emissão de Recibo - Contas a Pagar (1)    ${Caminho_Screenshots}Recibos Avulsos
    Fechar janela
    RPA.Windows.Click       Sim

Consultas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Consultas
    Contas a Pagar
    RPA.Windows.Click       Consultas
    RPA.Windows.Get Text    Consulta do Contas a Pagar (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta do Contas a Pagar (1)    ${Caminho_Screenshots}Consultas
    RPA.Windows.Click       Sim
    RPA.Windows.Click       OK
    Fechar janela

Relatórios > Contas a Pagar
    [Teardown]                Caso aconteça erro                 ${Caminho_Screenshots}Relatórios/                   Contas a Pagar
    Contas a Pagar
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Relatório de Contas a Pagar (1)
    repetidor de teclas       tab                 2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Relatório de Contas a Pagar (1)    ${Caminho_Screenshots}Relatórios/Contas a Pagar
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatórios > Contas a Pagar a Prazo Resumido
    [Teardown]                Caso aconteça erro                         ${Caminho_Screenshots}Relatórios/                                    Contas a Pagar a Prazo Resumido
    Contas a Pagar
    RPA.Windows.Click         Relatórios 
    RPA.Desktop.Press Keys    o
    RPA.Windows.Get Text      Relatório de Contas a Pagar a Prazo (1)
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Relatório de Contas a Pagar a Prazo (1)    ${Caminho_Screenshots}Relatórios/Contas a Pagar a Prazo Resumido
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

Relatórios > Pagamentos
    [Teardown]                Caso aconteça erro                           ${Caminho_Screenshots}Relatórios/               Pagamentos
    Contas a Pagar
    RPA.Windows.Click         Relatórios 
    RPA.Desktop.Press Keys    p
    RPA.Windows.Get Text      Relatório de Baixas do Contas a Pagar (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Relatório de Baixas do Contas a Pagar (1)    ${Caminho_Screenshots}Relatórios/Pagamentos
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatórios > Empenhos/Credor
    [Teardown]                Caso aconteça erro                  ${Caminho_Screenshots}Relatórios/                    Empenhos_Credor
    Contas a Pagar
    RPA.Windows.Click         Relatórios 
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Relatório de Empenhos/Credor (1)
    RPA.Desktop.Press Keys    Enter 
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Relatório de Empenhos/Credor (1)    ${Caminho_Screenshots}Relatórios/Empenhos_Credor
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Comissões de Venda > Manutenção de Pagamento de Comissões
    [Teardown]                Caso aconteça erro                          ${Caminho_Screenshots}Comissões de Venda/                                         Manutenção de Pagamento de Comissões
    Contas a Pagar
    RPA.Windows.Click         Comissões de Venda
    RPA.Desktop.Press Keys    m
    RPA.Windows.Get Text      Manutenção de Pagamento de Comissões (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Manutenção de Pagamento de Comissões (1)    ${Caminho_Screenshots}Comissões de Venda/Manutenção de Pagamento de Comissões
    RPA.Windows.Click         Confirmar
    Fechar janela

Comissões de Venda > Provisionamento de Pagamento
    [Teardown]                Caso aconteça erro                  ${Caminho_Screenshots}Comissões de Venda/                                 Provisionamento de Pagamento
    Contas a Pagar
    RPA.Windows.Click         Comissões de Venda
    RPA.Desktop.Press Keys    p
    RPA.Windows.Get Text      Provisionamento de Pagamento (1)  
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Provisionamento de Pagamento (1)    ${Caminho_Screenshots}Comissões de Venda/Provisionamento de Pagamento
    RPA.Windows.Click         OK
    Fechar janela

Comissões de Venda > Relatório de Comissões
    [Teardown]                Caso aconteça erro                      ${Caminho_Screenshots}Comissões de Venda/                           Relatório de Comissões
    Contas a Pagar
    RPA.Windows.Click         Comissões de Venda
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Relatório de Comissões de Vendas (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Relatório de Comissões de Vendas (1)   ${Caminho_Screenshots}Comissões de Venda/Relatório de Comissões
    RPA.Windows.Click         Confirmar
    Fechar janela

Comissões de Venda > Relatório de Comissões por Vendedor
    [Teardown]                Caso aconteça erro                         ${Caminho_Screenshots}Comissões de Venda/                                        Relatório de Comissõesvpor Vendedor
    Contas a Pagar 
    RPA.Windows.Click         Comissões de Venda
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Relatório de Comissões por Vendedor (1)
    repetidor de teclas       tab     2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Relatório de Comissões por Vendedor (1)    ${Caminho_Screenshots}Comissões de Venda/Relatório de Comissões por Vendedor
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click       OK
    Fechar janela

Comissões de Venda > Reprocessar Valores da Comissão
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Comissões de Venda/                                    Reprocessar Valores da Comissão
    Contas a Pagar 
    RPA.Windows.Click         Comissões de Venda
    RPA.Desktop.Press Keys    o
    RPA.Windows.Get Text      Reprocessar Comissões (1)
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Reprocessar Comissões (1)    ${Caminho_Screenshots}Comissões de Venda/Reprocessar Valores da Comissão
    RPA.Windows.Click         Confirmar
    Fechar janela

Comissões de Venda > Cadastro De Comissão por Faixa de Descontos
    [Teardown]                Caso aconteça erro                                 ${Caminho_Screenshots}Comissões de Venda/                                                Cadastro De Comissão por Faixa de Descontos
    Contas a Pagar 
    RPA.Windows.Click         Comissões de Venda
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Cadastro de Comissão por Faixa de Descontos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Comissão por Faixa de Descontos (1)    ${Caminho_Screenshots}Comissões de Venda/Cadastro De Comissão por Faixa de Descontos
    Fechar janela
    RPA.Windows.Click       Sim

Pagamentos Eletrônicos > Pagamentos a Fornecedores > Remessa
    [Teardown]                Caso aconteça erro                                 ${Caminho_Screenshots}Pagamentos Eletrônicos/Pagamentos a Fornecedores                                              Remessa
    Contas a Pagar 
    RPA.Windows.Click         Pagamentos Eletrônicos
    RPA.Windows.Click         Pagamentos a Fornecedores
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Remessa de Pagamento Eletrônico PagFor (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Remessa de Pagamento Eletrônico PagFor (1)    ${Caminho_Screenshots}Pagamentos Eletrônicos/Pagamentos a Fornecedores/Remessa
    RPA.Windows.Click         Confirmar
    Fechar janela

Pagamentos Eletrônicos > Pagamentos a Fornecedores > Retorno
    [Teardown]                Caso aconteça erro                                 ${Caminho_Screenshots}Pagamentos Eletrônicos/Pagamentos a Fornecedores                                              Retorno
    Contas a Pagar 
    RPA.Windows.Click         Pagamentos Eletrônicos
    RPA.Windows.Click         Pagamentos a Fornecedores
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Retorno de Pagamento Eletrônico (PagFor) (1)
    RPA.Windows.Click         Marcar Todos
    BaseDesktop.Screenshot    Retorno de Pagamento Eletrônico (PagFor) (1)    ${Caminho_Screenshots}Pagamentos Eletrônicos/Pagamentos a Fornecedores/Retorno
    RPA.Windows.Click         OK
    Fechar janela

Pagamentos Eletrônicos > Pagamentos a Funcionarios
    [Teardown]                Caso aconteça erro                                 ${Caminho_Screenshots}Pagamentos Eletrônicos/                                             Pagamentos a Funcionarios
    Contas a Pagar 
    RPA.Windows.Click         Pagamentos Eletrônicos
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Pagamento a Funcionários (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Pagamento a Funcionários (1)    ${Caminho_Screenshots}Pagamentos Eletrônicos/Pagamentos a Funcionarios
    RPA.Windows.Click         OK
    Fechar janela

Encerrar
    Encerrar tudo