*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_fin


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Financeiro/Contas a Receber/    

*** Keywords ***

Contas a Receber
    Cadastros
    repetidor de teclas    right    3
    Sleep                  1s


*** Test Cases ***

Lançamentos > Lançamento - Simplificado
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}Lançamentos/                              Lançamento - Simplificado
    Contas a Receber
    RPA.Windows.Click         Lançamentos
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Provisões do Contas a Receber (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Provisões do Contas a Receber (1)    ${Caminho_Screenshots}Lançamentos/Lançamento - Simplificado
    Fechar janela
    RPA.Windows.Click         Sim

Lançamentos > Lançamento - Múltiplas Parcelas
    [Teardown]                Caso aconteça erro                                         ${Caminho_Screenshots}Lançamentos/                                    Lançamento - Múltiplas Parcelas
    Contas a Receber
    RPA.Windows.Click         Lançamentos
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Lançamento do Contas a Receber - Múltiplas Parcelas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Lançamento do Contas a Receber - Múltiplas Parcelas (1)    ${Caminho_Screenshots}Lançamentos/Lançamento - Múltiplas Parcelas
    Fechar janela
    RPA.Windows.Click         Sim

Lançamentos > Lançamento - Com Baixa Automática
    [Teardown]                Caso aconteça erro                                      ${Caminho_Screenshots}Lançamentos/                                      Lançamento - Com Baixa Automática
    Contas a Receber
    RPA.Windows.Click         Lançamentos
    RPA.Desktop.Press Keys    n
    RPA.Windows.Get Text      Provisões do Contas a Receber - Com Baixa Automática
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Provisões do Contas a Receber - Com Baixa Automática    ${Caminho_Screenshots}Lançamentos/Lançamento - Com Baixa Automática
    Fechar janela

Baixas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}           Baixas
    Contas a Receber
    RPA.Windows.Click       Baixas
    RPA.Windows.Get Text    Baixas do Contas a Receber (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Baixas do Contas a Receber (1)    ${Caminho_Screenshots}Baixas
    RPA.Windows.Click       OK
    Fechar janela

Estornar Baixas
    [Teardown]              Caso aconteça erro                           ${Caminho_Screenshots}                    Extornar Baixas
    Contas a Receber
    RPA.Windows.Click       Estornar Baixas
    RPA.Windows.Get Text    Estorno de Baixas do Contas a Receber (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Estorno de Baixas do Contas a Receber (1)    ${Caminho_Screenshots}Extornar Baixas
    RPA.Windows.Click       Sim
    RPA.Windows.Click       OK
    Fechar janela

Cobrança de Dívida
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            Cobrança de Dívida
    Contas a Receber
    RPA.Windows.Click       Cobrança de Dívida
    RPA.Windows.Get Text    Cobrança de Dívidas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Cobrança de Dívidas (1)    ${Caminho_Screenshots}Cobrança de Dívida
    Fechar janela           

Renegociações
    [Teardown]              Caso aconteça erro                      ${Caminho_Screenshots}                  Renegociações
    Contas a Receber
    RPA.Windows.Click       Renegociações
    RPA.Windows.Get Text    Renegociação do Contas a Receber (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Renegociação do Contas a Receber (1)    ${Caminho_Screenshots}Renegociações
    RPA.Windows.Click       OK
    Fechar janela

Renegociações de Multiplos Clientes
    [Teardown]              Caso aconteça erro                                         ${Caminho_Screenshots}                                        Renegociações de Multiplos Clientes
    Contas a Receber
    RPA.Windows.Click       Renegociações de Multiplos Clientes
    RPA.Windows.Get Text    Renegociação do Contas a Receber Multiplos Clientes (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Renegociação do Contas a Receber Multiplos Clientes (1)    ${Caminho_Screenshots}Renegociações de Multiplos Clientes
    RPA.Windows.Click       Sim
    RPA.Windows.Click       OK
    Fechar janela

Estornar Renegociações
    [Teardown]              Caso aconteça erro                                  ${Caminho_Screenshots}                           Extornar Renegociações
    Contas a Receber
    RPA.Windows.Click       Estornar Renegociações
    RPA.Windows.Get Text    Estorno de Renegociações do Contas a Receber (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Estorno de Renegociações do Contas a Receber (1)    ${Caminho_Screenshots}Extornar Renegociações
    RPA.Windows.Click       Sim
    RPA.Windows.Click       OK
    Fechar janela

Alterar Vencimento/Portador
    [Teardown]              Caso aconteça erro                                          ${Caminho_Screenshots}                                Alterar Vencimento_Portador
    Contas a Receber
    RPA.Windows.Click       Alterar Vencimento/Portador
    RPA.Windows.Get Text    Alteração de Vencimento/Portador do Contas a Receber (1)
    RPA.Windows.Click       Executar
    BaseDesktop.Screenshot  Alteração de Vencimento/Portador do Contas a Receber (1)    ${Caminho_Screenshots}Alterar Vencimento_Portador
    RPA.Windows.Click       Sim
    RPA.Windows.Click       OK
    Fechar janela

Transferência entre Clientes
    [Teardown]              Caso aconteça erro                            ${Caminho_Screenshots}                                 Transferência entre Clientes
    Contas a Receber
    RPA.Windows.Click       Transferência entre Clientes
    RPA.Windows.Get Text    Transferência de Contas entre Clientes (1)
    RPA.Windows.Click       Transferir
    BaseDesktop.Screenshot  Transferência de Contas entre Clientes (1)    ${Caminho_Screenshots}Transferência entre Clientes
    RPA.Windows.Click       OK
    Fechar janela

Alterar Contas a Receber
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                                  Alterar Contas a Receber
    Contas a Receber
    RPA.Windows.Click       Alterar Contas a Receber
    RPA.Windows.Get Text    Alterar Contas a Receber (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Alterar Contas a Receber (1)    ${Caminho_Screenshots}Alterar Contas a Receber
    RPA.Windows.Click       OK
    Fechar janela

Estorno Alteração de Contas a Receber
    [Teardown]              Caso aconteça erro                           ${Caminho_Screenshots}                                     Estorno Alteraração de Contas a Receber
    Contas a Receber
    RPA.Windows.Click       Estorno Alteração de Contas a Receber
    RPA.Windows.Get Text    Estorno de alterações de contas a receber
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Estorno de alterações de contas a receber    ${Caminho_Screenshots}Estorno Alterar Contas a Receber
    RPA.Windows.Click       OK
    Fechar janela

Adiantamentos > Adiantamento de Clientes
    [Teardown]                Caso aconteça erro               ${Caminho_Screenshots}Adiantamentos/                             Adiantamento de Clientes
    Contas a Receber
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Adiantamentos de Clientes (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Adiantamentos de Clientes (1)    ${Caminho_Screenshots}Adiantamentos/Adiantamento de Clientes
    Fechar com Sim

Adiantamentos > Extrato dos Adiantamentos/Cliente
    [Teardown]                Caso aconteça erro                      ${Caminho_Screenshots}Adiantamentos/                                       Extrato dos Adiantamentos_Clientes
    Contas a Receber
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Extrato de Adiantamentos/Cliente (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Extrato de Adiantamentos/Cliente (1)    ${Caminho_Screenshots}Adiantamentos/Extrato dos Adiantamentos_Clientes
    RPA.Windows.Click         Confirmar
    Fechar janela

Adiantamentos > Saldo de Adiantamentos Clientes
    [Teardown]                Caso aconteça erro                ${Caminho_Screenshots}Adiantamentos/                                    Saldo de Adiantamentos Clientes
    Contas a Receber
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Saldo de Adiantamentos Cliente
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Saldo de Adiantamentos Cliente    ${Caminho_Screenshots}Adiantamentos/Saldo de Adiantamentos Clientes
    RPA.Windows.Click         Confirmar
    Fechar janela

Adiantamentos > Relatório de Lançamento
    [Teardown]                Caso aconteça erro                                           ${Caminho_Screenshots}Adiantamentos/                            Relatório de Lançamento
    Contas a Receber
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Relatório de Lançamentos de Adiantamentos de Clientes (1)
    RPA.Desktop.Press Keys    0   
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Relatório de Lançamentos de Adiantamentos de Clientes (1)    ${Caminho_Screenshots}Adiantamentos/Relatório de Lançamento
    RPA.Windows.Click         Confirmar
    Fechar janela

Adiantamentos > Adiantamento de Pedidos de Venda
    [Teardown]                Caso aconteça erro                      ${Caminho_Screenshots}Adiantamentos/                                     Adiantamento de Pedidos de Venda
    Contas a Receber
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    d
    RPA.Windows.Get Text      Adiantamento de Pedidos de Venda (1)
    RPA.Windows.Click         Adiantados/Faturados
    BaseDesktop.Screenshot    Adiantamento de Pedidos de Venda (1)    ${Caminho_Screenshots}Adiantamentos/Adiantamento de Pedidos de Venda
    Fechar janela

Adiantamentos > Antecipação de Pedido de Venda Parcial
    [Teardown]                Caso aconteça erro                     ${Caminho_Screenshots}Adiantamentos/                                            Antecipação de Pedido de Vendas Parcial
    Contas a Receber
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    n
    RPA.Windows.Get Text      Adiantamento de Pedido de Venda (1)
    RPA.Windows.Click         Adiantamentos
    BaseDesktop.Screenshot    Adiantamento de Pedido de Venda (1)    ${Caminho_Screenshots}Adiantamentos/Antecipação de Pedido de Vendas Parcial
    Fechar janela


Recibos Avulsos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                         Recibos Avulsos
    Contas a Receber
    RPA.Windows.Click       Recibos Avulsos
    RPA.Windows.Get Text    Emissão de Recibos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Emissão de Recibos (1)    ${Caminho_Screenshots}Recibos Avulsos
    Fechar com Sim

Recibos Avulsos - Múltiplas Contas
    [Teardown]              Caso aconteça erro                           ${Caminho_Screenshots}                                       Recibos Avulsos - Múltiplas Contas
    Contas a Receber
    RPA.Windows.Click       Recibos Avulsos - Múltiplas Contas
    RPA.Windows.Get Text    Emissão de Recibos - Múltiplas Contas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Emissão de Recibos - Múltiplas Contas (1)    ${Caminho_Screenshots}Recibos Avulsos - Múltiplas Contas
    Fechar com Sim

Consultas
    [Teardown]              Caso aconteça erro                  ${Caminho_Screenshots}              Consultas
    Contas a Receber
    RPA.Windows.Click       Consultas
    RPA.Windows.Get Text    Consulta do Contas a Receber (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta do Contas a Receber (1)    ${Caminho_Screenshots}Consultas
    RPA.Windows.Click       Sim
    RPA.Windows.Click       OK
    Fechar janela

Emissão de Documentos
    [Teardown]              Caso aconteça erro                          ${Caminho_Screenshots}                          Emissão de Documentos
    Contas a Receber
    RPA.Windows.Click       Emissão de Documentos
    RPA.Windows.Get Text    Emissão de Duplicatas/Boletos/Carnês (1)
    RPA.Windows.Click       Executar
    BaseDesktop.Screenshot  Emissão de Duplicatas/Boletos/Carnês (1)    ${Caminho_Screenshots}Emissão de Documentos
    RPA.Windows.Click       Sim
    RPA.Windows.Click       OK
    Fechar janela

Relatórios > Contas a Receber
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}Relatórios/                     Contas a Receber
    Contas a Receber
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Relatório de Contas a Receber (1)
    repetidor de teclas       tab    14
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Relatório de Contas a Receber (1)    ${Caminho_Screenshots}Relatórios/Contas a Receber
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatórios > Contas a Receber Prazo
    [Teardown]                Caso aconteça erro                           ${Caminho_Screenshots}Relatórios/                           Contas a Receber Prazo
    Contas a Receber
    RPA.Windows.Click         Relatórios 
    RPA.Desktop.Press Keys    o
    RPA.Windows.Get Text      Relatório de Contas a Receber a Prazo (1)
    repetidor de teclas       tab    3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Relatório de Contas a Receber a Prazo (1)    ${Caminho_Screenshots}Relatórios/Contas a Receber Prazo
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatórios > Recebimento do contas a receber
    [Teardown]                Caso aconteça erro                                   ${Caminho_Screenshots}Relatórios/                                    Recebimento do contas a receber
    Contas a Receber
    RPA.Windows.Click         Relatórios 
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Relatório de recebimentos do contas a receber (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Relatório de recebimentos do contas a receber (1)    ${Caminho_Screenshots}Relatórios/Recebimento do contas a receber
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatórios > Posição Financeira/Vendedor/Terceiro > Consulta
    [Teardown]                Caso aconteça erro                       ${Caminho_Screenshots}Relatórios/Posição Financeira_Vendedor_Terceiro/             Consulta
    Contas a Receber
    RPA.Windows.Click         Relatórios
    RPA.Windows.Click         Posição Financeira/Vendedor/Terceiro 
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Posição Financeira (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Posição Financeira (1)                   ${Caminho_Screenshots}Relatórios/Posição Financeira_Vendedor_Terceiro/Consulta
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatórios > Posição Financeira/Vendedor/Terceiro > Relatório
    [Teardown]                Caso aconteça erro                                   ${Caminho_Screenshots}Relatórios/Posição Financeira_Vendedor_Terceiro/              Relatório
    Contas a Receber
    RPA.Windows.Click         Relatórios
    RPA.Windows.Click         Posição Financeira/Vendedor/Terceiro 
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Posição Financeira por Representante/Terceiro (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Posição Financeira por Representante/Terceiro (1)    ${Caminho_Screenshots}Relatórios/Posição Financeira_Vendedor_Terceiro/Relatório
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatórios > Relatório de Cobrança
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Relatórios/                          Relatório de Cobrança
    Contas a Receber
    RPA.Windows.Click         Relatórios 
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Relatório de Cobrança (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Relatório de Cobrança (1)    ${Caminho_Screenshots}Relatórios/Relatório de Cobrança
    RPA.Windows.Click         Confirmar
    Fechar janela

Contratos de Terceiros > Emissão/Manutenção
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Contratos de Terceiros/                       Emissão_Manutenção
    Contas a Receber
    RPA.Windows.Click         Contratos de Terceiros       
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Contrato de Terceiros (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Contrato de Terceiros (1)    ${Caminho_Screenshots}Contratos de Terceiros/Emissão_Manutenção
    Fechar janela
    RPA.Windows.Click         Sim

Contratos de Terceiros > Assinatura
    [Teardown]                Caso aconteça erro                          ${Caminho_Screenshots}Contratos de Terceiros/               Assinatura
    Contas a Receber
    RPA.Windows.Click         Contratos de Terceiros                      
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Assinatura de Contratos de Terceiros (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Assinatura de Contratos de Terceiros (1)    ${Caminho_Screenshots}Contratos de Terceiros/Assinatura
    Fechar janela

Contratos de Terceiros > Cancelamento/Baixa
    [Teardown]                Caso aconteça erro                             ${Caminho_Screenshots}Contratos de Terceiros/                       Cancelamento_Baixa
    Contas a Receber
    RPA.Windows.Click         Contratos de Terceiros                         
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Cancelamento/Baixa de Contrato de Terceiros
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Cancelamento/Baixa de Contrato de Terceiros    ${Caminho_Screenshots}Contratos de Terceiros/Cancelamento_Baixa
    RPA.Windows.Click         Fechar
    Fechar janela

Contratos de Terceiros > Estorno de Cancelamento
    [Teardown]                Caso aconteça erro                         ${Caminho_Screenshots}Contratos de Terceiros/                            Estorno de Cancelamento
    Contas a Receber
    RPA.Windows.Click         Contratos de Terceiros                     
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Estorno de Cancelamento de Contrato (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot    Estorno de Cancelamento de Contrato (1)    ${Caminho_Screenshots}Contratos de Terceiros/Estorno de Cancelamento
    RPA.Windows.Click         Confirmar
    Fechar janela

Contratos de Terceiros > Consulta
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Contratos de Terceiros/                           Estorno de Cancelmento
    Contas a Receber
    RPA.Windows.Click         Contratos de Terceiros       
    RPA.Desktop.Press Keys    o
    RPA.Windows.Get Text      Consulta de Contratos (1)
    RPA.Windows.Click         Quitado
    BaseDesktop.Screenshot    Consulta de Contratos (1)    ${Caminho_Screenshots}Contratos de Terceiros/Estorno de Cancelmento
    Fechar janela

Contratos de Terceiros > Relatório
    [Teardown]                Caso aconteça erro            ${Caminho_Screenshots}Contratos de Terceiros/              Relatório
    Contas a Receber
    RPA.Windows.Click         Contratos de Terceiros        
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Relatório de Contratos (1)
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Relatório de Contratos (1)    ${Caminho_Screenshots}Contratos de Terceiros/Relatório
    RPA.Windows.Click         Confirmar
    Fechar janela

Contratos de Pestação de Serviços > Manutenção de Contratos
    [Teardown]                Caso aconteça erro                                     ${Caminho_Screenshots}Contratos de Pestação de Serviços /                            Manutenção de Contratos
    Contas a Receber
    RPA.Windows.Click         Contratos de Prestação de Serviços
    RPA.Desktop.Press Keys    m
    RPA.Windows.Get Text      Manutenção de Contrato de Prestação de Serviços (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Manutenção de Contrato de Prestação de Serviços (1)    ${Caminho_Screenshots}Contratos de Pestação de Serviços /Manutenção de Contratos
    Fechar janela
    RPA.Windows.Click         Sim

Contratos de Pestação de Serviços > Consulta / Emissão de NF
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}Contratos de Pestação de Serviços /                           Consulta_Emissão de NF
    Contas a Receber
    RPA.Windows.Click         Contratos de Prestação de Serviços    
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Consultar/Faturar (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consultar/Faturar (1)                ${Caminho_Screenshots}Contratos de Pestação de Serviços /Consulta_Emissão de NF
    RPA.Windows.Click         OK
    Fechar janela

Reajuste de Valores
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}                         Reajuste de Valores
    Contas a Receber
    RPA.Windows.Click         Reajuste de Valores   
    RPA.Windows.Get Text      Reajuste de Valores (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Reajuste de Valores (1)                ${Caminho_Screenshots}Reajuste de Valores
    RPA.Windows.Click         OK
    Fechar janela

Faturamento de Agências > Geração de Faturas
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}Faturamento de Agências/                           Geração de Faturas
    Contas a Receber
    RPA.Windows.Click         Faturamento de Agências    
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Faturamento de Agências (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Faturamento de Agências (1)                ${Caminho_Screenshots}Faturamento de Agências/Geração de Faturas
    Fechar janela

Faturamento de Agências > Estorno de Faturas
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}Faturamento de Agências/                           Estorno de Faturas
    Contas a Receber
    RPA.Windows.Click         Faturamento de Agências    
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Estorno de Faturas (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Estorno de Faturas (1)                ${Caminho_Screenshots}Faturamento de Agências/Estorno de Faturas
    Fechar janela

Faturamento de Agências > Troca de Agências
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}Faturamento de Agências/                           Troca de Agências
    Contas a Receber
    RPA.Windows.Click         Faturamento de Agências    
    RPA.Desktop.Press Keys    t
    RPA.Windows.Get Text      Troca de Agências (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Troca de Agências (1)                ${Caminho_Screenshots}Faturamento de Agências/Troca de Agências
    RPA.Windows.Click         OK
    Fechar janela

Faturamento de Agências > Lançamento de Vouchers Venda
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}Faturamento de Agências/                           Lançamento de Vouchers Venda
    Contas a Receber
    RPA.Windows.Click         Faturamento de Agências    
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Alteração de Vouchers Bilhete (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Alteração de Vouchers Bilhete (1)                ${Caminho_Screenshots}Faturamento de Agências/Lançamento de Vouchers Venda
    RPA.Windows.Click         OK
    Fechar janela



    