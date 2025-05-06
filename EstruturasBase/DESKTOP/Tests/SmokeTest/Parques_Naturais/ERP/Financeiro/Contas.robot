*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_fin


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Financeiro/Contas/    

*** Keywords ***

Contas
    Cadastros
    repetidor de teclas    right    5
    Sleep      1s

*** Test Cases ***

Movimentação de Contas
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}            ERRO Movimentação de Contas
    Contas
    RPA.Windows.Click         Movimentação de Contas
    RPA.Windows.Get Text      Movimento de Contas (1)
    BaseDesktop.Screenshot    Movimento de Contas (1)    ${Caminho_Screenshots}Movimentação de Contas
    Fechar janela

Transferências entre Contas
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}            ERRO Transferências entre Contas
    Contas
    RPA.Windows.Click         Transferências entre Contas
    RPA.Windows.Get Text      Transferências (1)
    BaseDesktop.Screenshot    Transferências (1)    ${Caminho_Screenshots}Transferências entre Contas
    RPA.Windows.Click         Fechar

Transferências entre Estabelecimentos
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}            ERRO Transferências entre Estabelecimentos
    Contas
    RPA.Windows.Click         Transferências entre Estabelecimentos
    RPA.Windows.Get Text      Transferência Entre Estabelecimentos (1)
    BaseDesktop.Screenshot    Transferência Entre Estabelecimentos (1)    ${Caminho_Screenshots}Transferências entre Contas
    Fechar janela

Conciliação de Cheques Emitidos
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}            ERRO Conciliação de Cheques Emitidos
    Contas
    RPA.Windows.Click         Conciliação de Cheques Emitidos
    RPA.Windows.Get Text      Conciliação de Cheques Emitidos
    BaseDesktop.Screenshot    Conciliação de Cheques Emitidos    ${Caminho_Screenshots}Conciliação de Cheques Emitidos
    Fechar janela

Conciliação de Cheques de Terceiros
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}            ERRO Conciliação de Cheques de Terceiros
    Contas
    RPA.Windows.Click         Conciliação de Cheques de Terceiros
    RPA.Windows.Get Text      Conciliação de Cheques de Terceiros (1)
    BaseDesktop.Screenshot    Conciliação de Cheques de Terceiros (1)    ${Caminho_Screenshots}Conciliação de Cheques de Terceiros
    Fechar janela

Conciliação de Contas
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}            ERRO Conciliação de Contas
    Contas
    RPA.Windows.Click         Conciliação de Contas
    RPA.Windows.Get Text      Conciliação de Contas
    BaseDesktop.Screenshot    Conciliação de Contas    ${Caminho_Screenshots}Conciliação de Contas
    Fechar janela

Estorna Conciliação
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}            ERRO Estorna Conciliação
    Contas
    RPA.Windows.Click         Estorna Conciliação
    RPA.Windows.Get Text      Estorna Conciliação de Lançamentos Bancários (1)
    BaseDesktop.Screenshot    Estorna Conciliação de Lançamentos Bancários (1)    ${Caminho_Screenshots}Estorna Conciliação
    Fechar janela

Estorno de Conciliação Cheques Terceiros
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}            ERRO Estorno de Conciliação Cheques Terceiros
    Contas
    RPA.Windows.Click         Estorno de Conciliação Cheques Terceiros
    RPA.Windows.Get Text      Estorno de Conciliação de Cheques de Terceiros (1)
    BaseDesktop.Screenshot    Estorno de Conciliação de Cheques de Terceiros (1)    ${Caminho_Screenshots}Estorno de Conciliação Cheques Terceiros
    Fechar janela

Conciliação de Transações Eletrônicas > Conciliação de Transações Eletrônicas Simplificadas
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Conciliação de Transações Eletrônicas/            ERRO Conciliação de Transações Eletrônicas Simplificadas
    Contas
    RPA.Windows.Click         Conciliação de Transações Eletrônicas
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Conciliação de Transações de Cartões Simplificado (1)
    BaseDesktop.Screenshot    Conciliação de Transações de Cartões Simplificado (1)    ${Caminho_Screenshots}Conciliação de Transações Eletrônicas/Conciliação de Transações Eletrônicas Simplificadas
    Fechar janela

Conciliação de Transações Eletrônicas > Conciliação Arquivo PIX CNAB 750
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Conciliação de Transações Eletrônicas/            ERRO Conciliação Arquivo PIX CNAB 750
    Contas
    RPA.Windows.Click         Conciliação de Transações Eletrônicas
    RPA.Desktop.Press Keys    o
    RPA.Windows.Get Text      Conciliação Arquivo PIX CNAB 750 (1)
    BaseDesktop.Screenshot    Conciliação Arquivo PIX CNAB 750 (1)    ${Caminho_Screenshots}Conciliação de Transações Eletrônicas/Conciliação Arquivo PIX CNAB 750
    Fechar janela

Conciliação de Transações Eletrônicas > Conciliação de Transações PIX > API
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Conciliação de Transações Eletrônicas/Conciliação de Transações PIX/            ERRO API
    Contas
    RPA.Windows.Click         Conciliação de Transações Eletrônicas
    RPA.Desktop.Press Keys    n
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Conciliação de Transações Pix (1)
    BaseDesktop.Screenshot    Conciliação de Transações Pix (1)    ${Caminho_Screenshots}Conciliação de Transações Eletrônicas/Conciliação de Transações PIX/API
    Fechar janela

Conciliação de Transações Eletrônicas > Configuração de Arquivo de Importação
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Conciliação de Transações Eletrônicas/       ERRO Configuração de Arquivo de Importação
    Contas
    RPA.Windows.Click         Conciliação de Transações Eletrônicas
    RPA.Desktop.Press Keys    f
    RPA.Windows.Get Text      Configuração de Arquivo de Importação (1)
    BaseDesktop.Screenshot    Configuração de Arquivo de Importação (1)    ${Caminho_Screenshots}Conciliação de Transações Eletrônicas/Configuração de Arquivo de Importação
    Fechar janela

Apropriação de Custos (Centro de Custos)
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}            ERRO Apropriação de Custos (Centro de Custos)
    Contas
    RPA.Windows.Click         Apropriação de Custos (Centro de Custos)
    RPA.Windows.Get Text      Apropriação de Custos (1)
    BaseDesktop.Screenshot    Apropriação de Custos (1)    ${Caminho_Screenshots}Apropriação de Custos (Centro de Custos)
    Fechar janela

Apropriação de Consumo de Adiantamentos
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}            ERRO Apropriação de Consumo de Adiantamentos
    Contas
    RPA.Windows.Click         Apropriação de Consumo de Adiantamentos
    RPA.Windows.Get Text      Apropriação de consumo de adiantamento (1)
    BaseDesktop.Screenshot    Apropriação de consumo de adiantamento (1)    ${Caminho_Screenshots}Apropriação de Consumo de Adiantamentos
    Fechar janela

Encontro de Contas > Encontro de Contas
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Encontro de Contas/            ERRO Encontro de Contas
    Contas
    RPA.Windows.Click         Encontro de Contas
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Encontro de Contas (1)
    BaseDesktop.Screenshot    Encontro de Contas (1)    ${Caminho_Screenshots}Encontro de Contas/Encontro de Contas
    Fechar janela

Encontro de Contas > Estorno de Encontro de Contas
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Encontro de Contas/            ERRO Estorno de Encontro de Contas
    Contas
    RPA.Windows.Click         Encontro de Contas
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Estorno de Encontro de Contas (1)
    BaseDesktop.Screenshot    Estorno de Encontro de Contas (1)    ${Caminho_Screenshots}Encontro de Contas/Estorno de Encontro de Contas
    Fechar janela

Geração de Receitas Mapa Resumo > Geração de Receitas Mapa Resumo
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/            ERRO Geração de Receitas Mapa Resumo
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Geração de receitas pela redução Z (1)
    BaseDesktop.Screenshot    Geração de receitas pela redução Z (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Geração de Receitas Mapa Resumo
    Fechar janela

Geração de Receitas Mapa Resumo > Configuração para geração de receitas
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/            ERRO Configuração para geração de receitas
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configuração para geração de receitas (1)
    BaseDesktop.Screenshot    Configuração para geração de receitas (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Configuração para geração de receitas
    Fechar janela

Geração de Receitas Mapa Resumo > Deduções Adicionais de ISS > Tipos de Deduções
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Deduções Adicionais de ISS/           ERRO Tipos de Deduções
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    d
    RPA.Desktop.Press Keys    t
    RPA.Windows.Get Text      Cadastro de Tipos de Deduções (1)
    BaseDesktop.Screenshot    Cadastro de Tipos de Deduções (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Deduções Adicionais de ISS/Tipos de Deduções
    Fechar janela

Geração de Receitas Mapa Resumo > Deduções Adicionais de ISS > Lançamento de Deduções
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Deduções Adicionais de ISS/            ERRO Lançamento de Deduções
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    d
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Lançamento de Dedução de ISS (1)
    BaseDesktop.Screenshot    Lançamento de Dedução de ISS (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Deduções Adicionais de ISS/Lançamento de Deduções
    Fechar janela

Geração de Receitas Mapa Resumo > Deduções Adicionais de ISS > Consulta de Lançamentos
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Deduções Adicionais de ISS/            ERRO Consulta de Lançamentos
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    d
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Consulta de Lançamentos de Deduções (1)
    BaseDesktop.Screenshot    Consulta de Lançamentos de Deduções (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Deduções Adicionais de ISS/Consulta de Lançamentos
    Fechar janela

Geração de Receitas Mapa Resumo > Vinculo Cliente em Venda
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/         ERRO Vinculo Cliente em Venda
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    v
    RPA.Windows.Get Text      Vínculo de Cliente em Venda (1)
    BaseDesktop.Screenshot    Vínculo de Cliente em Venda (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Vinculo Cliente em Venda
    Fechar janela

Geração de Receitas Mapa Resumo > Emissão de NFS-e/CT-e sobre Reduções
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/         ERRO Emissão de NFS-e_CT-e sobre Reduções
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Gerar NFS-e/CT-e sobre Serviços (1)
    BaseDesktop.Screenshot    Gerar NFS-e/CT-e sobre Serviços (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Emissão de NFS-e_CT-e sobre Reduções
    Fechar janela

Geração de Receitas Mapa Resumo > Mapa Resumo da ECF
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/         ERRO Mapa Resumo da ECF
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    m
    RPA.Windows.Get Text      Mapa Resumo da ECF (1)
    BaseDesktop.Screenshot    Mapa Resumo da ECF (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Mapa Resumo da ECF
    Fechar janela

Geração de Receitas Mapa Resumo > Fechamento de Caixas
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/         ERRO Fechamento de Caixas
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    f
    RPA.Windows.Get Text      Fechamento de Caixas (1)
    BaseDesktop.Screenshot    Fechamento de Caixas (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Fechamento de Caixas
    Fechar janela


Zeramento de Cartões Crédito Interno
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}            ERRO Zeramento de Cartões Crédito Interno
    Contas
    RPA.Windows.Click         Zeramento de Cartões Crédito Interno
    RPA.Windows.Get Text      Zeramento de Saldo de Cartões Crédito Interno Pré Pago (1)
    BaseDesktop.Screenshot    Zeramento de Saldo de Cartões Crédito Interno Pré Pago (1)    ${Caminho_Screenshots}Zeramento de Cartões Crédito Interno
    Fechar janela

Bloqueia Lançamentos
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}            ERRO Bloqueia Lançamentos
    Contas
    RPA.Windows.Click         Bloqueia Lançamentos
    RPA.Windows.Get Text      Bloqueia Lançamentos (1)
    BaseDesktop.Screenshot    Bloqueia Lançamentos (1)    ${Caminho_Screenshots}Bloqueia Lançamentos
    Fechar janela

Consultas > Razão de Contas
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Consultas/         ERRO Razão de Contas
    Contas
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Razão de Contas (1)
    BaseDesktop.Screenshot    Razão de Contas (1)    ${Caminho_Screenshots}Consultas/Razão de Contas
    Fechar janela

Consultas > Balancete
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Consultas/         ERRO Balancete
    Contas
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    b
    RPA.Windows.Get Text      Balancete (1)
    BaseDesktop.Screenshot    Balancete (1)    ${Caminho_Screenshots}Consultas/Balancete
    Fechar janela

Consultas > Diário
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Consultas/         ERRO Diário
    Contas
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    d
    RPA.Windows.Get Text      Lançamentos Diários (1)
    BaseDesktop.Screenshot    Lançamentos Diários (1)    ${Caminho_Screenshots}Consultas/Diário
    Fechar janela

Consultas > Pesquisa de Lançamentos
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Consultas/         ERRO Pesquisa de Lançamentos
    Contas
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    p
    RPA.Windows.Get Text      Manutenção de Lançamentos contábeis (1)
    BaseDesktop.Screenshot    Manutenção de Lançamentos contábeis (1)    ${Caminho_Screenshots}Consultas/Pesquisa de Lançamentos
    Fechar janela

Consultas > Livro Caixa
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Consultas/         ERRO Livro Caixa
    Contas
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Consulta Livro Caixa (1)
    BaseDesktop.Screenshot    Consulta Livro Caixa (1)    ${Caminho_Screenshots}Consultas/Livro Caixa
    Fechar janela

Relatórios > Razão Gerencial
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Relatórios/         ERRO Razão Gerencial
    Contas
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Razão Gerencial (1)
    BaseDesktop.Screenshot    Razão Gerencial (1)    ${Caminho_Screenshots}Relatórios/Razão Gerencial
    Fechar janela

Relatórios > Balancete
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Relatórios/         ERRO Balancete
    Contas
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    b
    RPA.Windows.Get Text      Balancete (1)
    BaseDesktop.Screenshot    Balancete (1)    ${Caminho_Screenshots}Relatórios/Balancete
    Fechar janela

Relatórios > Livro caixa
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Relatórios/         ERRO Livro caixa
    Contas
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Extrato de Conta (1)
    BaseDesktop.Screenshot    Extrato de Conta (1)    ${Caminho_Screenshots}Relatórios/Livro caixa
    Fechar janela

Relatórios > Movimentação de Caixa
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Relatórios/         ERRO Movimentação de Caixa
    Contas
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    m
    RPA.Windows.Get Text      Relatório de Movimentação de Caixa (1)
    BaseDesktop.Screenshot    Relatório de Movimentação de Caixa (1)    ${Caminho_Screenshots}Relatórios/Movimentação de Caixa
    Fechar janela

Encerrar
    Encerrar tudo