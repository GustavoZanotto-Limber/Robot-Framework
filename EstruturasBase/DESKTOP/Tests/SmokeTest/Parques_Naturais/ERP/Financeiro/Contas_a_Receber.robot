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
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}Lançamentos/                             ERRO Lançamento - Simplificado
    Contas a Receber
    RPA.Windows.Click         Lançamentos
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Provisões do Contas a Receber (1)
    BaseDesktop.Screenshot                Provisões do Contas a Receber (1)    ${Caminho_Screenshots}Lançamentos/Lançamento - Simplificado
    Fechar janela

Lançamentos > Lançamento - Múltiplas Parcelas
    [Teardown]                Caso aconteça erro                                         ${Caminho_Screenshots}Lançamentos/                                   ERRO Lançamento - Múltiplas Parcelas
    Contas a Receber
    RPA.Windows.Click         Lançamentos
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Lançamento do Contas a Receber - Múltiplas Parcelas (1)
    BaseDesktop.Screenshot                Lançamento do Contas a Receber - Múltiplas Parcelas (1)    ${Caminho_Screenshots}Lançamentos/Lançamento - Múltiplas Parcelas
    Fechar janela

Lançamentos > Lançamento - Com Baixa Automática
    [Teardown]                Caso aconteça erro                                      ${Caminho_Screenshots}Lançamentos/                                     ERRO Lançamento - Com Baixa Automática
    Contas a Receber
    RPA.Windows.Click         Lançamentos
    RPA.Desktop.Press Keys    n
    RPA.Windows.Get Text      Provisões do Contas a Receber - Com Baixa Automática
    BaseDesktop.Screenshot                Provisões do Contas a Receber - Com Baixa Automática    ${Caminho_Screenshots}Lançamentos/Lançamento - Com Baixa Automática
    Fechar janela

Baixas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}          ERRO Baixas
    Contas a Receber
    RPA.Windows.Click       Baixas
    RPA.Windows.Get Text    Baixas do Contas a Receber (1)
    BaseDesktop.Screenshot              Baixas do Contas a Receber (1)    ${Caminho_Screenshots}Baixas
    Fechar janela

Estornar Baixas
    [Teardown]              Caso aconteça erro                           ${Caminho_Screenshots}                   ERRO Extornar Baixas
    Contas a Receber
    RPA.Windows.Click       Estornar Baixas
    RPA.Windows.Get Text    Estorno de Baixas do Contas a Receber (1)
    BaseDesktop.Screenshot              Estorno de Baixas do Contas a Receber (1)    ${Caminho_Screenshots}Extornar Baixas
    Fechar janela

Cobrança de Dívida
    [Teardown]              Caso aconteça erro         ${Caminho_Screenshots}                      ERRO Cobrança de Dívida
    Contas a Receber
    RPA.Windows.Click       Cobrança de Dívida
    RPA.Windows.Get Text    Cobrança de Dívidas (1)
    BaseDesktop.Screenshot              Cobrança de Dívidas (1)    ${Caminho_Screenshots}Cobrança de Dívida
    Fechar janela           

Renegociações
    [Teardown]              Caso aconteça erro                      ${Caminho_Screenshots}                 ERRO Renegociações
    Contas a Receber
    RPA.Windows.Click       Renegociações
    RPA.Windows.Get Text    Renegociação do Contas a Receber (1)
    BaseDesktop.Screenshot              Renegociação do Contas a Receber (1)    ${Caminho_Screenshots}Renegociações
    Fechar janela

Renegociações de Multiplos Clientes
    [Teardown]              Caso aconteça erro                                         ${Caminho_Screenshots}                                       ERRO Renegociações de Multiplos Clientes
    Contas a Receber
    RPA.Windows.Click       Renegociações de Multiplos Clientes
    RPA.Windows.Get Text    Renegociação do Contas a Receber Multiplos Clientes (1)
    BaseDesktop.Screenshot              Renegociação do Contas a Receber Multiplos Clientes (1)    ${Caminho_Screenshots}Renegociações de Multiplos Clientes
    Fechar janela

Estornar Renegociações
    [Teardown]              Caso aconteça erro                                  ${Caminho_Screenshots}                          ERRO Extornar Renegociações
    Contas a Receber
    RPA.Windows.Click       Estornar Renegociações
    RPA.Windows.Get Text    Estorno de Renegociações do Contas a Receber (1)
    BaseDesktop.Screenshot              Estorno de Renegociações do Contas a Receber (1)    ${Caminho_Screenshots}Extornar Renegociações
    Fechar janela

Alterar Vencimento/Portador
    [Teardown]              Caso aconteça erro                                          ${Caminho_Screenshots}                               ERRO Alterar Vencimento_Portador
    Contas a Receber
    RPA.Windows.Click       Alterar Vencimento/Portador
    RPA.Windows.Get Text    Alteração de Vencimento/Portador do Contas a Receber (1)
    BaseDesktop.Screenshot              Alteração de Vencimento/Portador do Contas a Receber (1)    ${Caminho_Screenshots}Alterar Vencimento_Portador
    Fechar janela

Transferência entre Clientes
    [Teardown]              Caso aconteça erro                            ${Caminho_Screenshots}                                ERRO Transferência entre Clientes
    Contas a Receber
    RPA.Windows.Click       Transferência entre Clientes
    RPA.Windows.Get Text    Transferência de Contas entre Clientes (1)
    BaseDesktop.Screenshot              Transferência de Contas entre Clientes (1)    ${Caminho_Screenshots}Transferência entre Clientes
    Fechar janela

Alterar Contas a Receber
    [Teardown]              Caso aconteça erro              ${Caminho_Screenshots}                            ERRO Alterar Contas a Receber
    Contas a Receber
    RPA.Windows.Click       Alterar Contas a Receber
    RPA.Windows.Get Text    Alterar Contas a Receber (1)
    BaseDesktop.Screenshot              Alterar Contas a Receber (1)    ${Caminho_Screenshots}Alterar Contas a Receber
    Fechar janela

Estorno Alteração de Contas a Receber
    [Teardown]              Caso aconteça erro                           ${Caminho_Screenshots}                                    ERRO Estorno Alteraração de Contas a Receber
    Contas a Receber
    RPA.Windows.Click       Estorno Alteração de Contas a Receber
    RPA.Windows.Get Text    Estorno de alterações de contas a receber
    BaseDesktop.Screenshot              Estorno de alterações de contas a receber    ${Caminho_Screenshots}Estorno Alterar Contas a Receber
    Fechar janela

Adiantamentos > Adiantamento de Clientes
    [Teardown]                Caso aconteça erro               ${Caminho_Screenshots}Adiantamentos/                            ERRO Adiantamento de Clientes
    Contas a Receber
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Adiantamentos de Clientes (1)
    BaseDesktop.Screenshot                Adiantamentos de Clientes (1)    ${Caminho_Screenshots}Adiantamentos/Adiantamento de Clientes
    Fechar janela

Adiantamentos > Extrato dos Adiantamentos/Cliente
    [Teardown]                Caso aconteça erro                      ${Caminho_Screenshots}Adiantamentos/                                      ERRO Extrato dos Adiantamentos_Clientes
    Contas a Receber
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Extrato de Adiantamentos/Cliente (1)
    BaseDesktop.Screenshot                Extrato de Adiantamentos/Cliente (1)    ${Caminho_Screenshots}Adiantamentos/Extrato dos Adiantamentos_Clientes
    Fechar janela

Adiantamentos > Saldo de Adiantamentos Clientes
    [Teardown]                Caso aconteça erro                ${Caminho_Screenshots}Adiantamentos/                                   ERRO Saldo de Adiantamentos Clientes
    Contas a Receber
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Saldo de Adiantamentos Cliente
    BaseDesktop.Screenshot                Saldo de Adiantamentos Cliente    ${Caminho_Screenshots}Adiantamentos/Saldo de Adiantamentos Clientes
    Fechar janela

Adiantamentos > Relatório de Lançamento
    [Teardown]                Caso aconteça erro                                           ${Caminho_Screenshots}Adiantamentos/                           ERRO Relatório de Lançamento
    Contas a Receber
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Relatório de Lançamentos de Adiantamentos de Clientes (1)
    BaseDesktop.Screenshot                Relatório de Lançamentos de Adiantamentos de Clientes (1)    ${Caminho_Screenshots}Adiantamentos/Relatório de Lançamento
    Fechar janela

Adiantamentos > Adiantamento de Pedidos de Venda
    [Teardown]                Caso aconteça erro                      ${Caminho_Screenshots}Adiantamentos/                                    ERRO Adiantamento de Pedidos de Venda
    Contas a Receber
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    d
    RPA.Windows.Get Text      Adiantamento de Pedidos de Venda (1)
    BaseDesktop.Screenshot                Adiantamento de Pedidos de Venda (1)    ${Caminho_Screenshots}Adiantamentos/Adiantamento de Pedidos de Venda
    Fechar janela

Adiantamentos > Antecipação de Pedido de Venda Parcial
    [Teardown]                Caso aconteça erro                     ${Caminho_Screenshots}Adiantamentos/                                           ERRO Antecipação de Pedido de Vendas Parcial
    Contas a Receber
    RPA.Windows.Click         Adiantamentos
    RPA.Desktop.Press Keys    n
    RPA.Windows.Get Text      Adiantamento de Pedido de Venda (1)
    BaseDesktop.Screenshot                Adiantamento de Pedido de Venda (1)    ${Caminho_Screenshots}Adiantamentos/Antecipação de Pedido de Vendas Parcial
    Fechar janela


Recibos Avulsos
    [Teardown]              Caso aconteça erro        ${Caminho_Screenshots}                   ERRO Recibos Avulsos
    Contas a Receber
    RPA.Windows.Click       Recibos Avulsos
    RPA.Windows.Get Text    Emissão de Recibos (1)
    BaseDesktop.Screenshot              Emissão de Recibos (1)    ${Caminho_Screenshots}Recibos Avulsos
    Fechar janela

Recibos Avulsos - Múltiplas Contas
    [Teardown]              Caso aconteça erro                           ${Caminho_Screenshots}                                      ERRO Recibos Avulsos - Múltiplas Contas
    Contas a Receber
    RPA.Windows.Click       Recibos Avulsos - Múltiplas Contas
    RPA.Windows.Get Text    Emissão de Recibos - Múltiplas Contas (1)
    BaseDesktop.Screenshot              Emissão de Recibos - Múltiplas Contas (1)    ${Caminho_Screenshots}Recibos Avulsos - Múltiplas Contas
    Fechar janela

Consultas
    [Teardown]              Caso aconteça erro                  ${Caminho_Screenshots}             ERRO Consultas
    Contas a Receber
    RPA.Windows.Click       Consultas
    RPA.Windows.Get Text    Consulta do Contas a Receber (1)
    BaseDesktop.Screenshot              Consulta do Contas a Receber (1)    ${Caminho_Screenshots}Consultas
    Fechar janela

Emissão de Documentos
    [Teardown]              Caso aconteça erro                          ${Caminho_Screenshots}                         ERRO Emissão de Documentos
    Contas a Receber
    RPA.Windows.Click       Emissão de Documentos
    RPA.Windows.Get Text    Emissão de Duplicatas/Boletos/Carnês (1)
    BaseDesktop.Screenshot              Emissão de Duplicatas/Boletos/Carnês (1)    ${Caminho_Screenshots}Emissão de Documentos
    Fechar janela

Relatórios > Contas a Receber
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}Relatórios/                    ERRO Contas a Receber
    Contas a Receber
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Relatório de Contas a Receber (1)
    BaseDesktop.Screenshot                Relatório de Contas a Receber (1)    ${Caminho_Screenshots}Relatórios/Contas a Receber
    Fechar janela

Relatórios > Contas a Receber Prazo
    [Teardown]                Caso aconteça erro                           ${Caminho_Screenshots}Relatórios/                          ERRO Contas a Receber Prazo
    Contas a Receber
    RPA.Windows.Click         Relatórios 
    RPA.Desktop.Press Keys    o
    RPA.Windows.Get Text      Relatório de Contas a Receber a Prazo (1)
    BaseDesktop.Screenshot                Relatório de Contas a Receber a Prazo (1)    ${Caminho_Screenshots}Relatórios/Contas a Receber Prazo
    Fechar janela

Relatórios > Recebimento do contas a receber
    [Teardown]                Caso aconteça erro                                   ${Caminho_Screenshots}Relatórios/                                   ERRO Recebimento do contas a receber
    Contas a Receber
    RPA.Windows.Click         Relatórios 
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Relatório de recebimentos do contas a receber (1)
    BaseDesktop.Screenshot                Relatório de recebimentos do contas a receber (1)    ${Caminho_Screenshots}Relatórios/Recebimento do contas a receber
    Fechar janela

Relatórios > Posição Financeira/Vendedor/Terceiro > Consulta
    [Teardown]                Caso aconteça erro                       ${Caminho_Screenshots}Relatórios/Posição Financeira_Vendedor_Terceiro/            ERRO Consulta
    Contas a Receber
    RPA.Windows.Click         Relatórios
    RPA.Windows.Click         Posição Financeira/Vendedor/Terceiro 
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Posição Financeira (1)
    BaseDesktop.Screenshot                Posição Financeira (1)                   ${Caminho_Screenshots}Relatórios/Posição Financeira_Vendedor_Terceiro/Consulta
    Fechar janela

Relatórios > Posição Financeira/Vendedor/Terceiro > Relatório
    [Teardown]                Caso aconteça erro                                   ${Caminho_Screenshots}Relatórios/Posição Financeira_Vendedor_Terceiro/             ERRO Relatório
    Contas a Receber
    RPA.Windows.Click         Relatórios
    RPA.Windows.Click         Posição Financeira/Vendedor/Terceiro 
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Posição Financeira por Representante/Terceiro (1)
    BaseDesktop.Screenshot                Posição Financeira por Representante/Terceiro (1)    ${Caminho_Screenshots}Relatórios/Posição Financeira_Vendedor_Terceiro/Relatório
    Fechar janela

Relatórios > Relatório de Cobrança
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Relatórios/                         ERRO Relatório de Cobrança
    Contas a Receber
    RPA.Windows.Click         Relatórios 
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Relatório de Cobrança (1)
    BaseDesktop.Screenshot                Relatório de Cobrança (1)    ${Caminho_Screenshots}Relatórios/Relatório de Cobrança
    Fechar janela

Contratos de Terceiros > Emissão/Manutenção
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Contratos de Terceiros/                      ERRO Emissão_Manutenção
    Contas a Receber
    RPA.Windows.Click         Contratos de Terceiros       
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Contrato de Terceiros (1)
    BaseDesktop.Screenshot                Contrato de Terceiros (1)    ${Caminho_Screenshots}Contratos de Terceiros/Emissão_Manutenção
    Fechar janela

Contratos de Terceiros > Assinatura
    [Teardown]                Caso aconteça erro                          ${Caminho_Screenshots}Contratos de Terceiros/              ERRO Assinatura
    Contas a Receber
    RPA.Windows.Click         Contratos de Terceiros                      
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Assinatura de Contratos de Terceiros (1)
    BaseDesktop.Screenshot                Assinatura de Contratos de Terceiros (1)    ${Caminho_Screenshots}Contratos de Terceiros/Assinatura
    Fechar janela

Contratos de Terceiros > Cancelamento/Baixa
    [Teardown]                Caso aconteça erro                             ${Caminho_Screenshots}Contratos de Terceiros/                      ERRO Cancelamento_Baixa
    Contas a Receber
    RPA.Windows.Click         Contratos de Terceiros                         
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Cancelamento/Baixa de Contrato de Terceiros
    BaseDesktop.Screenshot                Cancelamento/Baixa de Contrato de Terceiros    ${Caminho_Screenshots}Contratos de Terceiros/Cancelamento_Baixa
    Fechar janela

Contratos de Terceiros > Estorno de Cancelamento
    [Teardown]                Caso aconteça erro                         ${Caminho_Screenshots}Contratos de Terceiros/                           ERRO Estorno de Cancelamento
    Contas a Receber
    RPA.Windows.Click         Contratos de Terceiros                     
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Estorno de Cancelamento de Contrato (1)
    BaseDesktop.Screenshot                Estorno de Cancelamento de Contrato (1)    ${Caminho_Screenshots}Contratos de Terceiros/Estorno de Cancelamento
    Fechar janela

Contratos de Terceiros > Consulta
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Contratos de Terceiros/                          ERRO Estorno de Cancelmento
    Contas a Receber
    RPA.Windows.Click         Contratos de Terceiros       
    RPA.Desktop.Press Keys    o
    RPA.Windows.Get Text      Consulta de Contratos (1)
    BaseDesktop.Screenshot                Consulta de Contratos (1)    ${Caminho_Screenshots}Contratos de Terceiros/Estorno de Cancelmento
    Fechar janela

Contratos de Terceiros > Relatório
    [Teardown]                Caso aconteça erro            ${Caminho_Screenshots}Contratos de Terceiros/             ERRO Relatório
    Contas a Receber
    RPA.Windows.Click         Contratos de Terceiros        
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Relatório de Contratos (1)
    BaseDesktop.Screenshot                Relatório de Contratos (1)    ${Caminho_Screenshots}Contratos de Terceiros/Relatório
    Fechar janela

Contratos de Pestação de Serviços > Manutenção de Contratos
    [Teardown]                Caso aconteça erro                                     ${Caminho_Screenshots}Contratos de Pestação de Serviços /                           ERRO Manutenção de Contratos
    Contas a Receber
    RPA.Windows.Click         Contratos de Prestação de Serviços
    RPA.Desktop.Press Keys    m
    RPA.Windows.Get Text      Manutenção de Contrato de Prestação de Serviços (1)
    BaseDesktop.Screenshot                Manutenção de Contrato de Prestação de Serviços (1)    ${Caminho_Screenshots}Contratos de Pestação de Serviços /Manutenção de Contratos
    Fechar janela

Contratos de Pestação de Serviços > Consulta / Emissão de NF
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}Contratos de Pestação de Serviços /                          ERRO Consulta_Emissão de NF
    Contas a Receber
    RPA.Windows.Click         Contratos de Prestação de Serviços    
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Consultar/Faturar (1)
    BaseDesktop.Screenshot                Consultar/Faturar (1)                ${Caminho_Screenshots}Contratos de Pestação de Serviços /Consulta_Emissão de NF
    Fechar janela

Reajuste de Valores
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}                        ERRO Reajuste de Valores
    Contas a Receber
    RPA.Windows.Click         Reajuste de Valores   
    RPA.Windows.Get Text      Reajuste de Valores (1)
    BaseDesktop.Screenshot                Reajuste de Valores (1)                ${Caminho_Screenshots}Reajuste de Valores
    Fechar janela

Faturamento de Agências > Geração de Faturas
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}Faturamento de Agências/                          ERRO Geração de Faturas
    Contas a Receber
    RPA.Windows.Click         Faturamento de Agências    
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Faturamento de Agências (1)
    BaseDesktop.Screenshot                Faturamento de Agências (1)                ${Caminho_Screenshots}Faturamento de Agências/Geração de Faturas
    Fechar janela

Faturamento de Agências > Estorno de Faturas
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}Faturamento de Agências/                          ERRO Estorno de Faturas
    Contas a Receber
    RPA.Windows.Click         Faturamento de Agências    
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Estorno de Faturas (1)
    BaseDesktop.Screenshot                Estorno de Faturas (1)                ${Caminho_Screenshots}Faturamento de Agências/Estorno de Faturas
    Fechar janela

Faturamento de Agências > Troca de Agências
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}Faturamento de Agências/                          ERRO Troca de Agências
    Contas a Receber
    RPA.Windows.Click         Faturamento de Agências    
    RPA.Desktop.Press Keys    t
    RPA.Windows.Get Text      Troca de Agências (1)
    BaseDesktop.Screenshot                Troca de Agências (1)                ${Caminho_Screenshots}Faturamento de Agências/Troca de Agências
    Fechar janela

Faturamento de Agências > Lançamento de Vouchers Venda
    [Teardown]                Caso aconteça erro                   ${Caminho_Screenshots}Faturamento de Agências/                          ERRO Lançamento de Vouchers Venda
    Contas a Receber
    RPA.Windows.Click         Faturamento de Agências    
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Alteração de Vouchers Bilhete (1)
    BaseDesktop.Screenshot                Alteração de Vouchers Bilhete (1)                ${Caminho_Screenshots}Faturamento de Agências/Lançamento de Vouchers Venda
    Fechar janela


Encerrar
    Encerrar tudo