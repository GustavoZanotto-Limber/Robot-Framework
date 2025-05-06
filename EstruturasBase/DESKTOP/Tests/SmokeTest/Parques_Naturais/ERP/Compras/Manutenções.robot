*** Settings ***
Documentation    Smoke Test: Compras
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_compras


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Compras/Manutenções/    

*** Keywords ***

Manutenções
    Cadastros
    repetidor de teclas    Right    1

*** Test Cases ***

Entradas/Compras > Incluir/Alterar
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Entradas_Compras/             ERRO Incluir_Alterar
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Entradas/Compras - Incluir/Alterar (1)
    BaseDesktop.Screenshot  Entradas/Compras - Incluir/Alterar (1)   ${Caminho_Screenshots}Entradas_Compras/Incluir_Alterar 
    Fechar janela

Entradas/Compras > Consultar
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Entradas_Compras/             ERRO Consultar
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Entradas/Compras - Consultar (1)
    BaseDesktop.Screenshot  Entradas/Compras - Consultar (1)    ${Caminho_Screenshots}Entradas_Compras/Consultar
    Fechar janela

Entradas/Compras > Excluir Entradas/Compras
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Entradas_Compras/             ERRO CoExcluir Entradas/Comprasnsultar
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Excluir Entradas/Compras (1)
    BaseDesktop.Screenshot  Excluir Entradas/Compras (1)    ${Caminho_Screenshots}Entradas_Compras/Excluir Entradas/Compras
    Fechar janela

Entradas/Compras > Manutenção de Devolução de Venda
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Entradas_Compras/             ERRO Manutenção de Devolução de Venda
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Manutenção de Devoluções de Venda (1)
    BaseDesktop.Screenshot  Manutenção de Devoluções de Venda (1)    ${Caminho_Screenshots}Entradas_Compras/Manutenção de Devolução de Venda
    Fechar janela

Entradas/Compras > Transferências realizadas pendentes de Entrada
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Entradas_Compras/             ERRO Transferências realizadas pendentes de Entrada
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Transferências realizadas pendentes de Entrada (1)
    BaseDesktop.Screenshot  Transferências realizadas pendentes de Entrada (1)    ${Caminho_Screenshots}Entradas_Compras/Transferências realizadas pendentes de Entrada
    Fechar janela

Entradas/Compras > Entradas pendentes de conferência de Mercadoria
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Entradas_Compras/             ERRO Entradas pendentes de conferência de Mercadoria
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  N
    RPA.Windows.Get Text    Entradas pendentes de conferência (1)
    BaseDesktop.Screenshot  Entradas pendentes de conferência (1)    ${Caminho_Screenshots}Entradas_Compras/Entradas pendentes de conferência de Mercadoria
    Fechar janela

Entradas/Compras > Conferência de Mercadoria de Entrada
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Entradas_Compras/             ERRO Conferência de Mercadoria de Entrada
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Conferências de Entrega (1)
    BaseDesktop.Screenshot  Conferências de Entrega (1)    ${Caminho_Screenshots}Entradas_Compras/Conferência de Mercadoria de Entrada
    Fechar janela

Entradas/Compras > Alteração em Massa de Operação

    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Entradas_Compras/             ERRO Alteração em Massa de Operação
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Lançamentos de Entrada
    BaseDesktop.Screenshot  Lançamentos de Entrada    ${Caminho_Screenshots}Entradas_Compras/Alteração em Massa de Operação
    RPA.Windows.Click       Fechar

Entradas/Compras > Lançamento de Outros Custos de Entrada
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Entradas_Compras/             ERRO Lançamento de Outros Custos de Entrada
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Lançamento de outros custos de entrada (1)
    BaseDesktop.Screenshot  Lançamento de outros custos de entrada (1)    ${Caminho_Screenshots}Entradas_Compras/Lançamento de Outros Custos de Entrada
    Fechar janela

Requisição de Compra > Manutenção
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Requisição de Compra/             ERRO Manutenção
    Manutenções
    RPA.Windows.Click       Requisição de Compra
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Requisição de Compras (1)
    BaseDesktop.Screenshot  Requisição de Compras (1)    ${Caminho_Screenshots}Requisição de Compra/Manutenção
    Fechar janela

Requisição de Compra > Consultar
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Requisição de Compra/             ERRO Consultar
    Manutenções
    RPA.Windows.Click       Requisição de Compra
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Consulta de Requisição de Compra (1)
    BaseDesktop.Screenshot  Consulta de Requisição de Compra (1)    ${Caminho_Screenshots}Requisição de Compra/Consultar
    Fechar janela

Requisição de Compra > Aprovação/Rejeição de Requisição
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Requisição de Compra/             ERRO Aprovação_Rejeição de Requisição
    Manutenções
    RPA.Windows.Click       Requisição de Compra
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Aprovação/Rejeição de Requisição de Compra (1)
    BaseDesktop.Screenshot  Aprovação/Rejeição de Requisição de Compra (1)    ${Caminho_Screenshots}Requisição de Compra/Aprovação_Rejeição de Requisição
    Fechar janela

Requisição de Compra > Acompanhamento de Requisição
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Requisição de Compra/             ERRO Acompanhamento de Requisição
    Manutenções
    RPA.Windows.Click       Requisição de Compra
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Acompanhamento de requisições (1)
    BaseDesktop.Screenshot  Acompanhamento de requisições (1)    ${Caminho_Screenshots}Requisição de Compra/Acompanhamento de Requisição
    Fechar janela

Requisição de Compra > Config. Usuário Requisição
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Requisição de Compra/             ERRO Config. Usuário Requisição
    Manutenções
    RPA.Windows.Click       Requisição de Compra
    RPA.Desktop.Press Keys  N
    RPA.Windows.Get Text    Configuração Usuário Requisição (1)
    BaseDesktop.Screenshot  Configuração Usuário Requisição (1)    ${Caminho_Screenshots}Requisição de Compra/Config. Usuário Requisição
    Fechar janela

Cotação > Cadastro de Cotação
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cotação/             ERRO Cadastro de Cotação
    Manutenções
    RPA.Windows.Click       Cotação
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Cotação (1)
    BaseDesktop.Screenshot  Cadastro de Cotação (1)    ${Caminho_Screenshots}Cotação/Cadastro de Cotação
    Fechar janela

Cotação > Fechamento/Manutenção de Preços
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cotação/             ERRO Fechamento_Manutenção de Preços
    Manutenções
    RPA.Windows.Click       Cotação
    RPA.Desktop.Press Keys  F
    RPA.Windows.Get Text    Fechamento de cotação (1)
    BaseDesktop.Screenshot  Fechamento de cotação (1)    ${Caminho_Screenshots}Cotação/Fechamento_Manutenção de Preços
    Fechar janela

Pedidos de Compra > Pedidos de Compra
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Pedidos de Compra/             ERRO Pedidos de Compra
    Manutenções
    RPA.Windows.Click       Pedidos de Compra
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Pedidos de Compra (1)
    BaseDesktop.Screenshot  Pedidos de Compra (1)    ${Caminho_Screenshots}Pedidos de Compra/Pedidos de Compra
    Fechar janela

Pedidos de Compra > Aprovação/Rejeição
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Pedidos de Compra/             ERRO Aprovação_Rejeição
    Manutenções
    RPA.Windows.Click       Pedidos de Compra
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Aprovação/Rejeição de Pedidos de Compra (1)
    BaseDesktop.Screenshot  Aprovação/Rejeição de Pedidos de Compra (1)    ${Caminho_Screenshots}Pedidos de Compra/Aprovação_Rejeição
    Fechar janela

Pedidos de Compra > Zeramento de Pedido
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Pedidos de Compra/             ERRO Zeramento de Pedido
    Manutenções
    RPA.Windows.Click       Pedidos de Compra
    RPA.Desktop.Press Keys  Z
    RPA.Windows.Get Text    Zeramento de Pedido de Compra (1)
    BaseDesktop.Screenshot  Zeramento de Pedido de Compra (1)    ${Caminho_Screenshots}Pedidos de Compra/Zeramento de Pedido
    Fechar janela

Pedidos de Compra > Modelo de Impressão
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Pedidos de Compra/             ERRO Modelo de Impressão
    Manutenções
    RPA.Windows.Click       Pedidos de Compra
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Configuração de Layout Personalizado (1)
    BaseDesktop.Screenshot  Configuração de Layout Personalizado (1)    ${Caminho_Screenshots}Pedidos de Compra/Modelo de Impressão
    Fechar janela
    RPA.Windows.Click       Sim

Consulta de Notas Fiscais Emitidas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}         ERRO Consulta de Notas Fiscais Emitidas
    Manutenções
    RPA.Windows.Click       Consulta de Notas Fiscais Emitidas
    RPA.Windows.Get Text    Consulta de Notas Fiscais Emitidas (1)
    BaseDesktop.Screenshot  Consulta de Notas Fiscais Emitidas (1)    ${Caminho_Screenshots}Consulta de Notas Fiscais Emitidas
    Fechar janela

NF-e > Emissão de Notas Fiscais Eletrônicas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}NF-e/             ERRO Emissão de Notas Fiscais Eletrônicas
    Manutenções
    RPA.Windows.Click       NF-e
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Emissão de Notas Fiscais Eletrônicas (1)
    BaseDesktop.Screenshot  Emissão de Notas Fiscais Eletrônicas (1)    ${Caminho_Screenshots}NF-e/Emissão de Notas Fiscais Eletrônicas
    Fechar janela

NF-e > Monitorar NFE's
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}NF-e/             ERRO Monitorar NFE's
    Manutenções
    RPA.Windows.Click       NF-e
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Monitor de NF-e/NFC-e (1)
    BaseDesktop.Screenshot  Monitor de NF-e/NFC-e (1)    ${Caminho_Screenshots}NF-e/Monitorar NFE's
    Fechar janela

NF-e > Inutilizar Númeração
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}NF-e/             ERRO Inutilizar Númeração
    Manutenções
    RPA.Windows.Click       NF-e
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Nota Fiscal Eletrônica - Inutilização de Numeração (1)
    BaseDesktop.Screenshot  Nota Fiscal Eletrônica - Inutilização de Numeração (1)    ${Caminho_Screenshots}NF-e/Inutilizar Númeração
    RPA.Windows.Click       Fechar

NF-e > Carta de Correção Eletrônica
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}NF-e/             ERRO Carta de Correção Eletrônica
    Manutenções
    RPA.Windows.Click       NF-e
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Carta de Correção Eletrônica (1)
    BaseDesktop.Screenshot  Carta de Correção Eletrônica (1)    ${Caminho_Screenshots}NF-e/Carta de Correção Eletrônica
    RPA.Windows.Click       Fechar

NF-e > Monitor de Manifesto do Destinatário
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}NF-e/             ERRO Monitor de Manifesto do Destinatário
    Manutenções
    RPA.Windows.Click       NF-e
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Monitor Manifestação do Destinatário (1)
    BaseDesktop.Screenshot  Monitor Manifestação do Destinatário (1)    ${Caminho_Screenshots}NF-e/Monitor de Manifesto do Destinatário
    Fechar janela

Documentos emitidos contra o estabelecimento p/ entrada
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Documentos emitidos contra o estabelecimento p_ entrada
    Manutenções
    RPA.Windows.Click       Documentos emitidos contra o estabelecimento p/ entrada 
    RPA.Windows.Get Text    Documentos emitidos contra o estabelecimento p/ entrada (1)
    BaseDesktop.Screenshot  Documentos emitidos contra o estabelecimento p/ entrada (1)    ${Caminho_Screenshots}Documentos emitidos contra o estabelecimento p_ entrada
    Fechar janela

Documentos emitidos contra o estabelecimento para CT-e
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Documentos emitidos contra o estabelecimento para CT-e
    Manutenções
    RPA.Windows.Click       Documentos emitidos contra o estabelecimento para CT-e
    RPA.Windows.Get Text    Documentos emitidos contra o estabelecimento para CT-e (1)
    BaseDesktop.Screenshot  Documentos emitidos contra o estabelecimento para CT-e (1)    ${Caminho_Screenshots}Documentos emitidos contra o estabelecimento para CT-e
    Fechar janela

Importação em massa de CT-e
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Importação em massa de CT-e
    Manutenções
    RPA.Windows.Click       Importação em massa de CT-e
    RPA.Windows.Get Text    Importação em massa da CT-e (1)
    BaseDesktop.Screenshot  Importação em massa da CT-e (1)    ${Caminho_Screenshots}Importação em massa de CT-e
    Fechar janela

Formação de Preços de Venda
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Formação de Preços de Venda
    Manutenções
    RPA.Windows.Click       Formação de Preços de Venda
    RPA.Windows.Get Text    Formação de Preços de Venda (1)
    BaseDesktop.Screenshot  Formação de Preços de Venda (1)    ${Caminho_Screenshots}Formação de Preços de Venda
    Fechar janela

Tabela de Preços Condicional
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Tabela de Preços Condicional
    Manutenções
    RPA.Windows.Click       Tabela de Preços Condicional
    RPA.Windows.Get Text    Tabela de Preço Condicional (1)
    BaseDesktop.Screenshot  Tabela de Preço Condicional (1)    ${Caminho_Screenshots}Tabela de Preços Condicional
    Fechar janela

Transferência entre Terceiros (NF) > Transferência entre Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Transferência entre Terceiros (NF)/             ERRO Transferência entre Terceiros
    Manutenções
    RPA.Windows.Click       Transferência entre Terceiros (NF)
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Transferências entre Terceiros (NF) (1)
    BaseDesktop.Screenshot  Transferências entre Terceiros (NF) (1)    ${Caminho_Screenshots}Transferência entre Terceiros (NF)/Transferência entre Terceiros
    Fechar janela

Transferência entre Terceiros (NF) > Transferências Pendentes
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Transferência entre Terceiros (NF)/             ERRO Transferências Pendentes
    Manutenções
    RPA.Windows.Click       Transferência entre Terceiros (NF)
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Transferências entre Terceiros (NF) - Pendentes (1)
    BaseDesktop.Screenshot  Transferências entre Terceiros (NF) - Pendentes (1)    ${Caminho_Screenshots}Transferência entre Terceiros (NF)/Transferências Pendentes
    Fechar janela

Processos Personalizados
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Processos Personalizados
    Manutenções
    RPA.Windows.Click       Processos Personalizados
    RPA.Windows.Get Text    Processos Personalizados (1)
    BaseDesktop.Screenshot  Processos Personalizados (1)    ${Caminho_Screenshots}Processos Personalizados
    Fechar janela

Conferência Valores IPI Entrada
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Conferência Valores IPI Entrada
    Manutenções
    RPA.Windows.Click       Conferência Valores IPI Entrada
    RPA.Windows.Get Text    Conferência Valores IPI Entrada (1)
    BaseDesktop.Screenshot  Conferência Valores IPI Entrada (1)    ${Caminho_Screenshots}Conferência Valores IPI Entrada
    Fechar janela

Encerrar
    Encerrar tudo