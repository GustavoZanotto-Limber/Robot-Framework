*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         ../../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Financeiro/Contas/    
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
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest    
    Contas
    RPA.Windows.Click         Movimentação de Contas
    RPA.Windows.Get Text      Movimento de Contas (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Movimento de Contas (1)    ${Caminho_Screenshots}Movimentação de Contas
    Fechar com Sim

Transferências entre Contas
    ${nome_print}=     Set Variable     Transferências entre Contas
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Transferências entre Contas
    RPA.Windows.Get Text      Transferências (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Transferências (1)    ${Caminho_Screenshots}Transferências entre Contas
    RPA.Windows.Click         Fechar
    RPA.Windows.Click         Sim

Transferências entre Estabelecimentos
    ${nome_print}=     Set Variable     Transferências entre Estabelecimentos
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Transferências entre Estabelecimentos
    RPA.Windows.Get Text      Transferência Entre Estabelecimentos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Transferência Entre Estabelecimentos (1)    ${Caminho_Screenshots}Transferências entre Contas
    Fechar com Sim

Conciliação de Cheques Emitidos
    ${nome_print}=     Set Variable     Conciliação de Cheques Emitidos
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Conciliação de Cheques Emitidos
    RPA.Windows.Get Text      Conciliação de Cheques Emitidos
    RPA.Windows.Click         Conciliar
    BaseKeywordsDesktop.Screenshot    Conciliação de Cheques Emitidos    ${Caminho_Screenshots}Conciliação de Cheques Emitidos
    RPA.Windows.Click         OK
    Fechar janela

Conciliação de Cheques de Terceiros
    ${nome_print}=     Set Variable     Conciliação de Cheques de Terceiros
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Conciliação de Cheques de Terceiros
    RPA.Windows.Get Text      Conciliação de Cheques de Terceiros (1)
    RPA.Windows.Click         Conciliar
    BaseKeywordsDesktop.Screenshot    Conciliação de Cheques de Terceiros (1)    ${Caminho_Screenshots}Conciliação de Cheques de Terceiros
    RPA.Windows.Click         OK
    Fechar janela

Conciliação de Contas
    ${nome_print}=     Set Variable     Conciliação de Contas
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Conciliação de Contas
    RPA.Windows.Get Text      Conciliação de Contas
    RPA.Windows.Click         Conciliar
    BaseKeywordsDesktop.Screenshot    Conciliação de Contas    ${Caminho_Screenshots}Conciliação de Contas
    RPA.Windows.Click         OK
    Fechar janela

Estorna Conciliação
    ${nome_print}=     Set Variable     Estorna Conciliação
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Estorna Conciliação
    RPA.Windows.Get Text      Estorna Conciliação de Lançamentos Bancários (1)
    RPA.Windows.Click         Executar
    BaseKeywordsDesktop.Screenshot    Estorna Conciliação de Lançamentos Bancários (1)    ${Caminho_Screenshots}Estorna Conciliação
    RPA.Windows.Click         OK
    Fechar janela

Estorno de Conciliação Cheques Terceiros
    ${nome_print}=     Set Variable     Estorno de Conciliação Cheques Terceiros
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Estorno de Conciliação Cheques Terceiros
    RPA.Windows.Get Text      Estorno de Conciliação de Cheques de Terceiros (1)
    RPA.Windows.Click         Executar
    BaseKeywordsDesktop.Screenshot    Estorno de Conciliação de Cheques de Terceiros (1)    ${Caminho_Screenshots}Estorno de Conciliação Cheques Terceiros
    RPA.Windows.Click         OK
    Fechar janela

Conciliação de Transações Eletrônicas > Conciliação de Transações Eletrônicas Simplificadas
    ${nome_print}=     Set Variable     Conciliação de Transações Eletrônicas Simplificadas
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Conciliação de Transações Eletrônicas
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Conciliação de Transações de Cartões Simplificado (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Conciliação de Transações de Cartões Simplificado (1)    ${Caminho_Screenshots}Conciliação de Transações Eletrônicas/Conciliação de Transações Eletrônicas Simplificadas
    RPA.Windows.Click         OK
    Fechar janela

Conciliação de Transações Eletrônicas > Conciliação Arquivo PIX CNAB 750
    ${nome_print}=     Set Variable     Conciliação Arquivo PIX CNAB 750
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Conciliação de Transações Eletrônicas
    RPA.Desktop.Press Keys    o
    RPA.Windows.Get Text      Conciliação Arquivo PIX CNAB 750 (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Conciliação Arquivo PIX CNAB 750 (1)    ${Caminho_Screenshots}Conciliação de Transações Eletrônicas/Conciliação Arquivo PIX CNAB 750
    RPA.Windows.Click         OK
    Fechar janela

Conciliação de Transações Eletrônicas > Conciliação de Transações PIX > API
    ${nome_print}=     Set Variable     API
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Conciliação de Transações Eletrônicas
    RPA.Desktop.Press Keys    n
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Conciliação de Transações Pix (1)
    RPA.Windows.Click         Consultar Transações
    BaseKeywordsDesktop.Screenshot    Conciliação de Transações Pix (1)    ${Caminho_Screenshots}Conciliação de Transações Eletrônicas/Conciliação de Transações PIX/API
    RPA.Windows.Click         OK
    Fechar janela

Conciliação de Transações Eletrônicas > Configuração de Arquivo de Importação
    ${nome_print}=     Set Variable     Configuração de Arquivo de Importação
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Conciliação de Transações Eletrônicas
    RPA.Desktop.Press Keys    f
    RPA.Windows.Get Text      Configuração de Arquivo de Importação (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Configuração de Arquivo de Importação (1)    ${Caminho_Screenshots}Conciliação de Transações Eletrônicas/Configuração de Arquivo de Importação
    Fechar com Sim

Apropriação de Custos (Centro de Custos)
    ${nome_print}=     Set Variable     Apropriação de Custos (Centro de Custos)
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Apropriação de Custos (Centro de Custos)
    RPA.Windows.Get Text      Apropriação de Custos (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Apropriação de Custos (1)    ${Caminho_Screenshots}Apropriação de Custos (Centro de Custos)
    RPA.Windows.Click         OK
    Fechar janela

Apropriação de Consumo de Adiantamentos
    ${nome_print}=     Set Variable     Apropriação de Consumo de Adiantamentos
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Apropriação de Consumo de Adiantamentos
    RPA.Windows.Get Text      Apropriação de consumo de adiantamento (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Apropriação de consumo de adiantamento (1)    ${Caminho_Screenshots}Apropriação de Consumo de Adiantamentos
    Fechar janela

Encontro de Contas > Encontro de Contas
    ${nome_print}=     Set Variable     Encontro de Contas
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Encontro de Contas
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Encontro de Contas (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Encontro de Contas (1)    ${Caminho_Screenshots}Encontro de Contas/Encontro de Contas
    RPA.Windows.Click         OK
    Fechar janela

Encontro de Contas > Estorno de Encontro de Contas
    ${nome_print}=     Set Variable     Estorno de Encontro de Contas
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Encontro de Contas
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Estorno de Encontro de Contas (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Estorno de Encontro de Contas (1)    ${Caminho_Screenshots}Encontro de Contas/Estorno de Encontro de Contas
    RPA.Windows.Click         OK
    Fechar janela

Geração de Receitas Mapa Resumo > Geração de Receitas Mapa Resumo
    ${nome_print}=     Set Variable     Geração de Receitas Mapa Resumo
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Geração de receitas pela redução Z (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Geração de receitas pela redução Z (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Geração de Receitas Mapa Resumo
    RPA.Windows.Click         OK
    Fechar janela

Geração de Receitas Mapa Resumo > Configuração para geração de receitas
    ${nome_print}=     Set Variable     Configuração para geração de receitas
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configuração para geração de receitas (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Configuração para geração de receitas (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Configuração para geração de receitas
    Fechar com Sim

Geração de Receitas Mapa Resumo > Deduções Adicionais de ISS > Tipos de Deduções
    ${nome_print}=     Set Variable     Tipos de Deduções
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    d
    RPA.Desktop.Press Keys    t
    RPA.Windows.Get Text      Cadastro de Tipos de Deduções (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Tipos de Deduções (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Deduções Adicionais de ISS/Tipos de Deduções
    Fechar com Sim

Geração de Receitas Mapa Resumo > Deduções Adicionais de ISS > Lançamento de Deduções
    ${nome_print}=     Set Variable     Lançamento de Deduções
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    d
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Lançamento de Dedução de ISS (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Lançamento de Dedução de ISS (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Deduções Adicionais de ISS/Lançamento de Deduções
    Fechar com Sim

Geração de Receitas Mapa Resumo > Deduções Adicionais de ISS > Consulta de Lançamentos
    ${nome_print}=     Set Variable     Consulta de Lançamentos
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    d
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Consulta de Lançamentos de Deduções (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta de Lançamentos de Deduções (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Deduções Adicionais de ISS/Consulta de Lançamentos
    Fechar janela

Geração de Receitas Mapa Resumo > Vinculo Cliente em Venda
    ${nome_print}=     Set Variable     Vinculo Cliente em Venda
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    v
    RPA.Windows.Get Text      Vínculo de Cliente em Venda (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Vínculo de Cliente em Venda (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Vinculo Cliente em Venda
    RPA.Windows.Click         Cancelar
    Fechar janela

Geração de Receitas Mapa Resumo > Emissão de NFS-e/CT-e sobre Reduções
    ${nome_print}=     Set Variable     Emissão de NFS-e_CT-e sobre Reduções
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Gerar NFS-e/CT-e sobre Serviços (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Gerar NFS-e/CT-e sobre Serviços (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Emissão de NFS-e_CT-e sobre Reduções
    RPA.Windows.Click         OK
    Fechar janela

Geração de Receitas Mapa Resumo > Mapa Resumo da ECF
    ${nome_print}=     Set Variable     Mapa Resumo da ECF
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    m
    RPA.Windows.Get Text      Mapa Resumo da ECF (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Mapa Resumo da ECF (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Mapa Resumo da ECF
    Fechar com Sim

Geração de Receitas Mapa Resumo > Fechamento de Caixas
    ${nome_print}=     Set Variable     Fechamento de Caixas
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    f
    RPA.Windows.Get Text      Fechamento de Caixas (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Fechamento de Caixas (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Fechamento de Caixas
    Fechar janela

Geração de Receitas Mapa Resumo > Configuração de Centros de Custos por PDV
    ${nome_print}=     Set Variable     Configuração de Centros de Custos por PDV
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest      
    Contas
    RPA.Windows.Click         Geração de Receitas Mapa Resumo
    RPA.Desktop.Press Keys    o
    RPA.Windows.Get Text      Configuração de Centro de Custos por PDV (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Configuração de Centro de Custos por PDV (1)    ${Caminho_Screenshots}Geração de Receitas Mapa Resumo/Configuração de Centros de Custos por PDV
    RPA.Windows.Click         Confirmar
    Fechar janela

Zeramento de Cartões Crédito Interno
    ${nome_print}=     Set Variable     Zeramento de Cartões Crédito Interno
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Zeramento de Cartões Crédito Interno
    RPA.Windows.Get Text      Zeramento de Saldo de Cartões Crédito Interno Pré Pago (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Zeramento de Saldo de Cartões Crédito Interno Pré Pago (1)    ${Caminho_Screenshots}Zeramento de Cartões Crédito Interno
    RPA.Windows.Click         OK
    Fechar janela

Bloqueia Lançamentos
    ${nome_print}=     Set Variable     Bloqueia Lançamentos
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Bloqueia Lançamentos
    RPA.Windows.Get Text      Bloqueia Lançamentos (1)
    repetidor de teclas       tab    2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Bloqueia Lançamentos (1)    ${Caminho_Screenshots}Bloqueia Lançamentos
    RPA.Windows.Click         Confirmar
    Fechar janela

Consultas > Razão de Contas
    ${nome_print}=     Set Variable     Razão de Contas
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Razão de Contas (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Razão de Contas (1)    ${Caminho_Screenshots}Consultas/Razão de Contas
    RPA.Windows.Click         OK
    Fechar janela

Consultas > Balancete
    ${nome_print}=     Set Variable     Balancete
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    b
    RPA.Windows.Get Text      Balancete (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Balancete (1)    ${Caminho_Screenshots}Consultas/Balancete
    RPA.Windows.Click         OK
    Fechar janela

Consultas > Diário
    ${nome_print}=     Set Variable     Diário
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    d
    RPA.Windows.Get Text      Lançamentos Diários (1)
    RPA.Windows.Click         Executar
    BaseKeywordsDesktop.Screenshot    Lançamentos Diários (1)    ${Caminho_Screenshots}Consultas/Diário
    RPA.Windows.Click         OK
    Fechar janela

Consultas > Pesquisa de Lançamentos
    ${nome_print}=     Set Variable     Pesquisa de Lançamentos
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    p
    RPA.Windows.Get Text      Manutenção de Lançamentos contábeis (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Manutenção de Lançamentos contábeis (1)    ${Caminho_Screenshots}Consultas/Pesquisa de Lançamentos
    RPA.Windows.Click         OK
    Fechar janela

Consultas > Livro Caixa
    ${nome_print}=     Set Variable     Livro Caixa
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Consultas
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Consulta Livro Caixa (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta Livro Caixa (1)    ${Caminho_Screenshots}Consultas/Livro Caixa
    RPA.Windows.Click         OK
    Fechar janela

Relatórios > Razão Gerencial
    ${nome_print}=     Set Variable     Razão Gerencial
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Razão Gerencial (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Razão Gerencial (1)    ${Caminho_Screenshots}Relatórios/Razão Gerencial
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatórios > Balancete
    ${nome_print}=     Set Variable     Balancete
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    b
    RPA.Windows.Get Text      Balancete (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Balancete (1)    ${Caminho_Screenshots}Relatórios/Balancete
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatórios > Livro caixa
    ${nome_print}=     Set Variable     Livro caixa
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Extrato de Conta (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Extrato de Conta (1)    ${Caminho_Screenshots}Relatórios/Livro caixa
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatórios > Movimentação de Caixa
    ${nome_print}=     Set Variable     Movimentação de Caixa
    [Tags]   SmokeERP    Financeiro    Contas   SmokeTest
    Contas
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    m
    RPA.Windows.Get Text      Relatório de Movimentação de Caixa (1)
    repetidor de teclas       tab    4
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Movimentação de Caixa (1)    ${Caminho_Screenshots}Relatórios/Movimentação de Caixa
    RPA.Windows.Click         Confirmar
    Fechar janela



    