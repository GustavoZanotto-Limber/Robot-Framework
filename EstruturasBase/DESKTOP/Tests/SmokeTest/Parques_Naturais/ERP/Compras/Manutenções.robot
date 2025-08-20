*** Settings ***
Documentation    Smoke Test: Compras
Resource         ../../../../../Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_compras
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Compras/Manutenções/    
${nome_print}
${nome_exe}=    cde_win_compras

*** Keywords ***

Manutenções
    Cadastros
    repetidor de teclas    Right    1

*** Test Cases ***

Entradas/Compras > Incluir/Alterar
    ${nome_print}=     Set Variable     Incluir_Alterar
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  I
    Sleep                   2s
    RPA.Windows.Get Text    Entradas/Compras - Incluir/Alterar (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Entradas/Compras - Incluir/Alterar (1)   ${Caminho_Screenshots}Entradas_Compras/Incluir_Alterar 
    Fechar com Sim

Entradas/Compras > Consultar
    ${nome_print}=     Set Variable     Consultar
    [Tags]     Compras    Manutenções   SmokeTest    
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Entradas/Compras - Consultar (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    Sleep                   1
    RPA.Windows.Click       Confirmar
    BaseDesktop.Screenshot  Entradas/Compras - Consultar (1)    ${Caminho_Screenshots}Entradas_Compras/Consultar
    Fechar Janela

Entradas/Compras > Excluir Entradas/Compras
    ${nome_print}=     Set Variable     Excluir Entradas_Compras
    [Tags]     Compras    Manutenções   SmokeTest    
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Excluir Entradas/Compras (1)
    RPA.Windows.Click       Log de Mensagens
    BaseDesktop.Screenshot  Excluir Entradas/Compras (1)    ${Caminho_Screenshots}Entradas_Compras/Excluir Entradas/Compras
    Fechar janela

Entradas/Compras > Manutenção de Devolução de Venda
    ${nome_print}=     Set Variable     Manutenção de Devolução de Venda
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Manutenção de Devoluções de Venda (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Manutenção de Devoluções de Venda (1)    ${Caminho_Screenshots}Entradas_Compras/Manutenção de Devolução de Venda
    RPA.Windows.Click       OK
    Fechar janela

Entradas/Compras > Transferências realizadas pendentes de Entrada
    ${nome_print}=     Set Variable     Transferências realizadas pendentes de Entrada
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Transferências realizadas pendentes de Entrada (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Transferências realizadas pendentes de Entrada (1)    ${Caminho_Screenshots}Entradas_Compras/Transferências realizadas pendentes de Entrada
    Fechar janela

Entradas/Compras > Entradas pendentes de conferência de Mercadoria
    ${nome_print}=     Set Variable     Entradas pendentes de conferência de Mercadoria
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  N
    RPA.Windows.Get Text    Entradas pendentes de conferência (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Entradas pendentes de conferência (1)    ${Caminho_Screenshots}Entradas_Compras/Entradas pendentes de conferência de Mercadoria
    Fechar janela

Entradas/Compras > Conferência de Mercadoria de Entrada
    ${nome_print}=     Set Variable     Conferência de Mercadoria de Entrada
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Conferências de Entrega (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Conferências de Entrega (1)    ${Caminho_Screenshots}Entradas_Compras/Conferência de Mercadoria de Entrada
    Fechar janela

Entradas/Compras > Alteração em Massa de Operação
    ${nome_print}=     Set Variable     Alteração em Massa de Operação
    [Tags]     Compras    Manutenções   SmokeTest    
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Lançamentos de Entrada
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Lançamentos de Entrada    ${Caminho_Screenshots}Entradas_Compras/Alteração em Massa de Operação
    RPA.Windows.Click       Fechar

Entradas/Compras > Lançamento de Outros Custos de Entrada
    ${nome_print}=     Set Variable     Lançamento de Outros Custos de Entrada
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Lançamento de outros custos de entrada (1)
    RPA.Windows.Click       Custo unitário por item
    BaseDesktop.Screenshot  Lançamento de outros custos de entrada (1)    ${Caminho_Screenshots}Entradas_Compras/Lançamento de Outros Custos de Entrada
    Fechar janela

Requisição de Compra > Manutenção
    ${nome_print}=     Set Variable     Manutenção
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Requisição de Compra
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Requisição de Compras (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Requisição de Compras (1)    ${Caminho_Screenshots}Requisição de Compra/Manutenção
    Fechar com Sim

Requisição de Compra > Consultar
    ${nome_print}=     Set Variable     Consultar
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Requisição de Compra
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Consulta de Requisição de Compra (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Requisição de Compra (1)    ${Caminho_Screenshots}Requisição de Compra/Consultar
    Fechar janela

Requisição de Compra > Aprovação/Rejeição de Requisição
    ${nome_print}=     Set Variable     Aprovação_Rejeição de Requisição
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Requisição de Compra
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Aprovação/Rejeição de Requisição de Compra (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Aprovação/Rejeição de Requisição de Compra (1)    ${Caminho_Screenshots}Requisição de Compra/Aprovação_Rejeição de Requisição
    Fechar janela

Requisição de Compra > Acompanhamento de Requisição
    ${nome_print}=     Set Variable     Acompanhamento de Requisição
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Requisição de Compra
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Acompanhamento de requisições (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Acompanhamento de requisições (1)    ${Caminho_Screenshots}Requisição de Compra/Acompanhamento de Requisição
    Fechar janela

Requisição de Compra > Config. Usuário Requisição
    ${nome_print}=     Set Variable     Config. Usuário Requisição
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Requisição de Compra
    RPA.Desktop.Press Keys  N
    RPA.Windows.Get Text    Configuração Usuário Requisição (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Configuração Usuário Requisição (1)    ${Caminho_Screenshots}Requisição de Compra/Config. Usuário Requisição
    Fechar janela

Cotação > Cadastro de Cotação
    ${nome_print}=     Set Variable     Cadastro de Cotação
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Cotação
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Cotação (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Cadastro de Cotação (1)    ${Caminho_Screenshots}Cotação/Cadastro de Cotação
    RPA.Windows.Click       Fechar
    Fechar janela

Cotação > Fechamento/Manutenção de Preços
    ${nome_print}=     Set Variable     Fechamento_Manutenção de Preços
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Cotação
    RPA.Desktop.Press Keys  F
    RPA.Windows.Get Text    Fechamento de cotação (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Fechamento de cotação (1)    ${Caminho_Screenshots}Cotação/Fechamento_Manutenção de Preços
    RPA.Windows.Click       Fechar
    Fechar janela

Pedidos de Compra > Pedidos de Compra
    ${nome_print}=     Set Variable     Pedidos de Compra
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Pedidos de Compra
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Pedidos de Compra (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Pedidos de Compra (1)    ${Caminho_Screenshots}Pedidos de Compra/Pedidos de Compra
    Fechar com Sim

Pedidos de Compra > Aprovação/Rejeição
    ${nome_print}=     Set Variable     Aprovação_Rejeição
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Pedidos de Compra
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Aprovação/Rejeição de Pedidos de Compra (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Aprovação/Rejeição de Pedidos de Compra (1)    ${Caminho_Screenshots}Pedidos de Compra/Aprovação_Rejeição
    Fechar janela

Pedidos de Compra > Zeramento de Pedido
    ${nome_print}=     Set Variable     Zeramento de Pedido
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Pedidos de Compra
    RPA.Desktop.Press Keys  Z
    RPA.Windows.Get Text    Zeramento de Pedido de Compra (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Zeramento de Pedido de Compra (1)    ${Caminho_Screenshots}Pedidos de Compra/Zeramento de Pedido
    RPA.Windows.Click       OK
    Sleep                   2s
    RPA.Windows.Click       Fechar
    Fechar janela

Pedidos de Compra > Modelo de Impressão
    ${nome_print}=     Set Variable     Modelo de Impressão
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Pedidos de Compra
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Configuração de Layout Personalizado (1)
    repetidor de teclas     Tab    5
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configuração de Layout Personalizado (1)    ${Caminho_Screenshots}Pedidos de Compra/Modelo de Impressão
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Consulta de Notas Fiscais Emitidas
    ${nome_print}=     Set Variable     Consulta de Notas Fiscais Emitidas
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Consulta de Notas Fiscais Emitidas
    RPA.Windows.Get Text    Consulta de Notas Fiscais Emitidas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Notas Fiscais Emitidas (1)    ${Caminho_Screenshots}Consulta de Notas Fiscais Emitidas
    RPA.Windows.Click       Sim
    Fechar janela

NF-e > Emissão de Notas Fiscais Eletrônicas
    ${nome_print}=     Set Variable     Emissão de Notas Fiscais Eletrônicas
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       NF-e
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Emissão de Notas Fiscais Eletrônicas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Emissão de Notas Fiscais Eletrônicas (1)    ${Caminho_Screenshots}NF-e/Emissão de Notas Fiscais Eletrônicas
    Fechar janela

NF-e > Monitorar NFE's
    ${nome_print}=     Set Variable     Monitorar NFE's
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       NF-e
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Monitor de NF-e/NFC-e (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Monitor de NF-e/NFC-e (1)    ${Caminho_Screenshots}NF-e/Monitorar NFE's
    Fechar janela

NF-e > Inutilizar Númeração
    ${nome_print}=     Set Variable     Inutilizar Númeração
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       NF-e
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Nota Fiscal Eletrônica - Inutilização de Numeração (1)
    RPA.Windows.Click       Enviar
    BaseDesktop.Screenshot  Nota Fiscal Eletrônica - Inutilização de Numeração (1)    ${Caminho_Screenshots}NF-e/Inutilizar Númeração
    RPA.Windows.Click       Fechar

NF-e > Carta de Correção Eletrônica
    ${nome_print}=     Set Variable     Carta de Correção Eletrônica
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       NF-e
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Carta de Correção Eletrônica (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Carta de Correção Eletrônica (1)    ${Caminho_Screenshots}NF-e/Carta de Correção Eletrônica
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar

NF-e > Monitor de Manifesto do Destinatário
    ${nome_print}=     Set Variable     Monitor de Manifesto do Destinatário
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       NF-e
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Monitor Manifestação do Destinatário (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Monitor Manifestação do Destinatário (1)    ${Caminho_Screenshots}NF-e/Monitor de Manifesto do Destinatário
    Fechar janela

Documentos emitidos contra o estabelecimento p/ entrada
    ${nome_print}=     Set Variable     Documentos emitidos contra o estabelecimento p_ entrada
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Documentos emitidos contra o estabelecimento p/ entrada 
    RPA.Windows.Get Text    Documentos emitidos contra o estabelecimento p/ entrada (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Documentos emitidos contra o estabelecimento p/ entrada (1)    ${Caminho_Screenshots}Documentos emitidos contra o estabelecimento p_ entrada
    Fechar janela

Documentos emitidos contra o estabelecimento para CT-e
    ${nome_print}=     Set Variable     Documentos emitidos contra o estabelecimento para CT-e
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Documentos emitidos contra o estabelecimento para CT-e
    RPA.Windows.Get Text    Documentos emitidos contra o estabelecimento para CT-e (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Documentos emitidos contra o estabelecimento para CT-e (1)    ${Caminho_Screenshots}Documentos emitidos contra o estabelecimento para CT-e
    Fechar janela

Importação em massa de CT-e
    ${nome_print}=     Set Variable     Importação em massa de CT-e
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Importação em massa de CT-e
    RPA.Windows.Get Text    Importação em massa da CT-e (1)
    RPA.Windows.Click       Atualizar
    BaseDesktop.Screenshot  Importação em massa da CT-e (1)    ${Caminho_Screenshots}Importação em massa de CT-e
    RPA.Windows.Click       OK
    Fechar janela

Formação de Preços de Venda
    ${nome_print}=     Set Variable     Formação de Preços de Venda
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Formação de Preços de Venda
    RPA.Windows.Get Text    Formação de Preços de Venda (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Formação de Preços de Venda (1)    ${Caminho_Screenshots}Formação de Preços de Venda
    RPA.Windows.Click       OK
    Fechar janela

Tabela de Preços Condicional
    ${nome_print}=     Set Variable     Tabela de Preços Condicional
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Tabela de Preços Condicional
    RPA.Windows.Get Text    Tabela de Preço Condicional (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Tabela de Preço Condicional (1)    ${Caminho_Screenshots}Tabela de Preços Condicional
    Fechar janela

Transferência entre Terceiros (NF) > Transferência entre Terceiros
    ${nome_print}=     Set Variable     Transferência entre Terceiros
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Transferência entre Terceiros (NF)
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Transferências entre Terceiros (NF) (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Transferências entre Terceiros (NF) (1)    ${Caminho_Screenshots}Transferência entre Terceiros (NF)/Transferência entre Terceiro
    RPA.Windows.Click       Confirmar
    Fechar Janela

Transferência entre Terceiros (NF) > Transferências Pendentes
    ${nome_print}=     Set Variable     Transferências Pendentes
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Transferência entre Terceiros (NF)
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Transferências entre Terceiros (NF) - Pendentes (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Transferências entre Terceiros (NF) - Pendentes (1)    ${Caminho_Screenshots}Transferência entre Terceiros (NF)/Transferências Pendentes
    RPA.Windows.Click       OK
    Fechar janela

Processos Personalizados
    ${nome_print}=     Set Variable     Processos Personalizados
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Processos Personalizados
    RPA.Windows.Get Text    Processos Personalizados (1)
    RPA.Windows.Click       Cadastrar Novo Processo
    BaseDesktop.Screenshot  Processos Personalizados (1)    ${Caminho_Screenshots}Processos Personalizados
    RPA.Windows.Click       Fechar
    Fechar janela

Conferência Valores IPI Entrada
    ${nome_print}=     Set Variable     Conferência Valores IPI Entrada
    [Tags]     Compras    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click       Conferência Valores IPI Entrada
    RPA.Windows.Get Text    Conferência Valores IPI Entrada (1)
    RPA.Windows.Click       Carregar Notas
    BaseDesktop.Screenshot  Conferência Valores IPI Entrada (1)    ${Caminho_Screenshots}Conferência Valores IPI Entrada
    Fechar janela