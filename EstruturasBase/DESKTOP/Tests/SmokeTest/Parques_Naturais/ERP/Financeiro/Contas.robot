*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteça erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Financeiro/Contas/    
${nome_print}
${nome_exe}=    cde_win_fin
*** Keywords ***

Contas
    Cadastros
    repetidor de teclas    right    6
    Sleep      1s

*** Test Cases ***

Movimentação de Contas
    ${nome_print}=     Set Variable     Movimentação de Contas
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Movimentação de Contas
    RPA.Windows.Get Text      Movimento de Contas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Movimento de Contas (1)    ${Caminho_Screenshots}Movimentação de Contas
    Fechar com Sim

Transferências entre Contas
    ${nome_print}=     Set Variable     Transferências entre Contas
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Transferências entre Contas
    RPA.Windows.Get Text      Transferências (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Transferências (1)    ${Caminho_Screenshots}Transferências entre Contas
    RPA.Windows.Click         Fechar
    RPA.Windows.Click         Sim

Transferências entre Estabelecimentos
    ${nome_print}=     Set Variable     Transferências entre Estabelecimentos
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Transferências entre Estabelecimentos
    RPA.Windows.Get Text      Transferência Entre Estabelecimentos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Transferência Entre Estabelecimentos (1)    ${Caminho_Screenshots}Transferências entre Contas
    Fechar com Sim

Conciliação de Cheques Emitidos
    ${nome_print}=     Set Variable     Conciliação de Cheques Emitidos
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Conciliação de Cheques Emitidos
    RPA.Windows.Get Text      Conciliação de Cheques Emitidos
    RPA.Windows.Click         Conciliar
    BaseDesktop.Screenshot    Conciliação de Cheques Emitidos    ${Caminho_Screenshots}Conciliação de Cheques Emitidos
    RPA.Windows.Click         OK
    Fechar janela

Conciliação de Cheques de Terceiros
    ${nome_print}=     Set Variable     Conciliação de Cheques de Terceiros
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Conciliação de Cheques de Terceiros
    RPA.Windows.Get Text      Conciliação de Cheques de Terceiros (1)
    RPA.Windows.Click         Conciliar
    BaseDesktop.Screenshot    Conciliação de Cheques de Terceiros (1)    ${Caminho_Screenshots}Conciliação de Cheques de Terceiros
    RPA.Windows.Click         OK
    Fechar janela

Conciliação de Contas
    ${nome_print}=     Set Variable     Conciliação de Contas
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Conciliação de Contas
    RPA.Windows.Get Text      Conciliação de Contas
    RPA.Windows.Click         Conciliar
    BaseDesktop.Screenshot    Conciliação de Contas    ${Caminho_Screenshots}Conciliação de Contas
    RPA.Windows.Click         OK
    Fechar janela

Estorna Conciliação
    ${nome_print}=     Set Variable     Estorna Conciliação
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Estorna Conciliação
    RPA.Windows.Get Text      Estorna Conciliação de Lançamentos Bancários (1)
    RPA.Windows.Click         Executar
    BaseDesktop.Screenshot    Estorna Conciliação de Lançamentos Bancários (1)    ${Caminho_Screenshots}Estorna Conciliação
    RPA.Windows.Click         OK
    Fechar janela

Estorno de Conciliação Cheques Terceiros
    ${nome_print}=     Set Variable     Estorno de Conciliação Cheques Terceiros
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Estorno de Conciliação Cheques Terceiros
    RPA.Windows.Get Text      Estorno de Conciliação de Cheques de Terceiros (1)
    RPA.Windows.Click         Executar
    BaseDesktop.Screenshot    Estorno de Conciliação de Cheques de Terceiros (1)    ${Caminho_Screenshots}Estorno de Conciliação Cheques Terceiros
    RPA.Windows.Click         OK
    Fechar janela

Conciliação de Transações Eletrônicas > Conciliação de Transações Eletrônicas Simplificadas
    ${nome_print}=     Set Variable     Conciliação de Transações Eletrônicas Simplificadas
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Conciliação de Transações Eletrônicas
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Conciliação de Transações de Cartões Simplificado (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Conciliação de Transações de Cartões Simplificado (1)    ${Caminho_Screenshots}Conciliação de Transações Eletrônicas/Conciliação de Transações Eletrônicas Simplificadas
    RPA.Windows.Click         OK
    Fechar janela

Conciliação de Transações Eletrônicas > Conciliação Arquivo PIX CNAB 750
    ${nome_print}=     Set Variable     Conciliação Arquivo PIX CNAB 750
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Conciliação de Transações Eletrônicas
    RPA.Desktop.Press Keys    o
    RPA.Windows.Get Text      Conciliação Arquivo PIX CNAB 750 (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Conciliação Arquivo PIX CNAB 750 (1)    ${Caminho_Screenshots}Conciliação de Transações Eletrônicas/Conciliação Arquivo PIX CNAB 750
    RPA.Windows.Click         OK
    Fechar janela

Conciliação de Transações Eletrônicas > Conciliação de Transações PIX > API
    ${nome_print}=     Set Variable     API
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Conciliação de Transações Eletrônicas
    RPA.Desktop.Press Keys    n
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Conciliação de Transações Pix (1)
    RPA.Windows.Click         Consultar Transações
    BaseDesktop.Screenshot    Conciliação de Transações Pix (1)    ${Caminho_Screenshots}Conciliação de Transações Eletrônicas/Conciliação de Transações PIX/API
    RPA.Windows.Click         OK
    Fechar janela

Conciliação de Transações Eletrônicas > Configuração de Arquivo de Importação
    ${nome_print}=     Set Variable     Configuração de Arquivo de Importação
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Conciliação de Transações Eletrônicas
    RPA.Desktop.Press Keys    f
    RPA.Windows.Get Text      Configuração de Arquivo de Importação (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Configuração de Arquivo de Importação (1)    ${Caminho_Screenshots}Conciliação de Transações Eletrônicas/Configuração de Arquivo de Importação
    Fechar com Sim

Apropriação de Custos (Centro de Custos)
    ${nome_print}=     Set Variable     Apropriação de Custos (Centro de Custos)
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Apropriação de Custos (Centro de Custos)
    RPA.Windows.Get Text      Apropriação de Custos (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Apropriação de Custos (1)    ${Caminho_Screenshots}Apropriação de Custos (Centro de Custos)
    RPA.Windows.Click         OK
    Fechar janela

Apropriação de Consumo de Adiantamentos
    ${nome_print}=     Set Variable     Apropriação de Consumo de Adiantamentos
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Apropriação de Consumo de Adiantamentos
    RPA.Windows.Get Text      Apropriação de consumo de adiantamento (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Apropriação de consumo de adiantamento (1)    ${Caminho_Screenshots}Apropriação de Consumo de Adiantamentos
    Fechar janela

Encontro de Contas > Encontro de Contas
    ${nome_print}=     Set Variable     Encontro de Contas
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Encontro de Contas
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Encontro de Contas (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Encontro de Contas (1)    ${Caminho_Screenshots}Encontro de Contas/Encontro de Contas
    RPA.Windows.Click         OK
    Fechar janela

Encontro de Contas > Estorno de Encontro de Contas
    ${nome_print}=     Set Variable     Estorno de Encontro de Contas
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Encontro de Contas
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Estorno de Encontro de Contas (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Estorno de Encontro de Contas (1)    ${Caminho_Screenshots}Encontro de Contas/Estorno de Encontro de Contas
    RPA.Windows.Click         OK
    Fechar janela

Geração de Receitas Mapa Resumo > Geração de Receitas Mapa Resumo
    ${nome_print}=     Set Variable     Geração de Receitas Mapa Resumo
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Geração de receitas pela redução Z (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Geração de receitas pela redução Z (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Geração de Receitas Mapa Resumo
    RPA.Windows.Click         OK
    Fechar janela

Geração de Receitas Mapa Resumo > Configuração para geração de receitas
    ${nome_print}=     Set Variable     Configuração para geração de receitas
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configuração para geração de receitas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Configuração para geração de receitas (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Configuração para geração de receitas
    Fechar com Sim

Geração de Receitas Mapa Resumo > Deduções Adicionais de ISS > Tipos de Deduções
    ${nome_print}=     Set Variable     Tipos de Deduções
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    d
    RPA.Desktop.Press Keys    t
    RPA.Windows.Get Text      Cadastro de Tipos de Deduções (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tipos de Deduções (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Deduções Adicionais de ISS/Tipos de Deduções
    Fechar com Sim

Geração de Receitas Mapa Resumo > Deduções Adicionais de ISS > Lançamento de Deduções
    ${nome_print}=     Set Variable     Lançamento de Deduções
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    d
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Lançamento de Dedução de ISS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Lançamento de Dedução de ISS (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Deduções Adicionais de ISS/Lançamento de Deduções
    Fechar com Sim

Geração de Receitas Mapa Resumo > Deduções Adicionais de ISS > Consulta de Lançamentos
    ${nome_print}=     Set Variable     Consulta de Lançamentos
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    d
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Consulta de Lançamentos de Deduções (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Lançamentos de Deduções (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Deduções Adicionais de ISS/Consulta de Lançamentos
    Fechar janela

Geração de Receitas Mapa Resumo > Vinculo Cliente em Venda
    ${nome_print}=     Set Variable     Vinculo Cliente em Venda
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    v
    RPA.Windows.Get Text      Vínculo de Cliente em Venda (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Vínculo de Cliente em Venda (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Vinculo Cliente em Venda
    RPA.Windows.Click         Cancelar
    Fechar janela

Geração de Receitas Mapa Resumo > Emissão de NFS-e/CT-e sobre Reduções
    ${nome_print}=     Set Variable     Emissão de NFS-e_CT-e sobre Reduções
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Gerar NFS-e/CT-e sobre Serviços (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Gerar NFS-e/CT-e sobre Serviços (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Emissão de NFS-e_CT-e sobre Reduções
    RPA.Windows.Click         OK
    Fechar janela

Geração de Receitas Mapa Resumo > Mapa Resumo da ECF
    ${nome_print}=     Set Variable     Mapa Resumo da ECF
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    m
    RPA.Windows.Get Text      Mapa Resumo da ECF (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Mapa Resumo da ECF (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Mapa Resumo da ECF
    Fechar com Sim

Geração de Receitas Mapa Resumo > Fechamento de Caixas
    ${nome_print}=     Set Variable     Fechamento de Caixas
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    f
    RPA.Windows.Get Text      Fechamento de Caixas (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Fechamento de Caixas (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Fechamento de Caixas
    Fechar janela

Zeramento de Cartões Crédito Interno
    ${nome_print}=     Set Variable     Zeramento de Cartões Crédito Interno
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Zeramento de Cartões Crédito Interno
    RPA.Windows.Get Text      Zeramento de Saldo de Cartões Crédito Interno Pré Pago (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Zeramento de Saldo de Cartões Crédito Interno Pré Pago (1)    ${Caminho_Screenshots}Zeramento de Cartões Crédito Interno
    RPA.Windows.Click         OK
    Fechar janela

Bloqueia Lançamentos
    ${nome_print}=     Set Variable     Bloqueia Lançamentos
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Bloqueia Lançamentos
    RPA.Windows.Get Text      Bloqueia Lançamentos (1)
    repetidor de teclas       tab    2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Bloqueia Lançamentos (1)    ${Caminho_Screenshots}Bloqueia Lançamentos
    RPA.Windows.Click         Confirmar
    Fechar janela

Consultas > Razão de Contas
    ${nome_print}=     Set Variable     Razão de Contas
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Razão de Contas (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Razão de Contas (1)    ${Caminho_Screenshots}Consultas/Razão de Contas
    RPA.Windows.Click         OK
    Fechar janela

Consultas > Balancete
    ${nome_print}=     Set Variable     Balancete
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    b
    RPA.Windows.Get Text      Balancete (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Balancete (1)    ${Caminho_Screenshots}Consultas/Balancete
    RPA.Windows.Click         OK
    Fechar janela

Consultas > Diário
    ${nome_print}=     Set Variable     Diário
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    d
    RPA.Windows.Get Text      Lançamentos Diários (1)
    RPA.Windows.Click         Executar
    BaseDesktop.Screenshot    Lançamentos Diários (1)    ${Caminho_Screenshots}Consultas/Diário
    RPA.Windows.Click         OK
    Fechar janela

Consultas > Pesquisa de Lançamentos
    ${nome_print}=     Set Variable     Pesquisa de Lançamentos
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    p
    RPA.Windows.Get Text      Manutenção de Lançamentos contábeis (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Manutenção de Lançamentos contábeis (1)    ${Caminho_Screenshots}Consultas/Pesquisa de Lançamentos
    RPA.Windows.Click         OK
    Fechar janela

Consultas > Livro Caixa
    ${nome_print}=     Set Variable     Livro Caixa
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Consulta Livro Caixa (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta Livro Caixa (1)    ${Caminho_Screenshots}Consultas/Livro Caixa
    RPA.Windows.Click         OK
    Fechar janela

Relatórios > Razão Gerencial
    ${nome_print}=     Set Variable     Razão Gerencial
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Razão Gerencial (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Razão Gerencial (1)    ${Caminho_Screenshots}Relatórios/Razão Gerencial
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatórios > Balancete
    ${nome_print}=     Set Variable     Balancete
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    b
    RPA.Windows.Get Text      Balancete (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Balancete (1)    ${Caminho_Screenshots}Relatórios/Balancete
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatórios > Livro caixa
    ${nome_print}=     Set Variable     Livro caixa
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Extrato de Conta (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Extrato de Conta (1)    ${Caminho_Screenshots}Relatórios/Livro caixa
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatórios > Movimentação de Caixa
    ${nome_print}=     Set Variable     Movimentação de Caixa
    [Tags]     Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    m
    RPA.Windows.Get Text      Relatório de Movimentação de Caixa (1)
    repetidor de teclas       tab    4
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Relatório de Movimentação de Caixa (1)    ${Caminho_Screenshots}Relatórios/Movimentação de Caixa
    RPA.Windows.Click         Confirmar
    Fechar janela



    