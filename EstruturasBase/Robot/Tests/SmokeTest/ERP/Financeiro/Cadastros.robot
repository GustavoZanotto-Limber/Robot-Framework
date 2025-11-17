*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}
*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/SmokeTest/Bilheteria/ERP/Financeiro/Cadastros/    
${nome_print}
${nome_exe}=    cde_win_fin
*** Keywords ***


*** Test Cases ***

Terceiros > Cadastro de Terceiros
    ${nome_print}=     Set Variable     Cadastro de Terceiros
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Terceiros
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Terceiros (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Terceiros (1)    ${Caminho_Screenshots}Terceiros/Cadastro de Terceiros
    RPA.Windows.Click         Cancelar (F3)
    Fechar com Sim

Terceiros > Contatos > Registros de Contatos
    ${nome_print}=     Set Variable     Registros de Contatos
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Windows.Click       Registros de Contatos
    RPA.Windows.Get Text    Registro de Contato (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Registro de Contato (1)    ${Caminho_Screenshots}Terceiros/Contatos/Registros de Contatos
    RPA.Windows.Click       Fechar
    RPA.Windows.Click       Sim

Terceiros > Contatos > Tipo de Histórico de Contatos
    ${nome_print}=     Set Variable     Tipo de Histórico de Contatos
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Windows.Click       Tipo de Histórico de Contatos
    RPA.Windows.Get Text    Cadastro de tipo de Histórico de Contatos (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de tipo de Histórico de Contatos (1)    ${Caminho_Screenshots}Terceiros/Contatos/Tipo de Histórico de Contatos
    Fechar com Sim

Terceiros > Contatos > Atividades de Contatos
    ${nome_print}=     Set Variable     Atividades de Contatos
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Windows.Click       Atividades de Contatos
    RPA.Windows.Get Text    Cadastro de Atividades de Contatos (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Atividades de Contatos (1)    ${Caminho_Screenshots}Terceiros/Contatos/Atividades de Contatos
    Fechar com Sim

Terceiros > Contatos > Consulta de contatos realizados
    ${nome_print}=     Set Variable     Consulta de contatos realizados
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Windows.Click       Consulta de contatos realizados
    RPA.Windows.Get Text    Consulta de Contatos Realizados (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta de Contatos Realizados (1)    ${Caminho_Screenshots}Terceiros/Contatos/Consulta de contatos realizados
    Fechar janela

Categorias de Terceiros
    ${nome_print}=     Set Variable     Categorias de Terceiros
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Categorias de Terceiros
    RPA.Windows.Get Text    Cadastro de Categorias de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Categorias de Terceiros (1)    ${Caminho_Screenshots}Categorias de Terceiros
    Fechar com Sim

Grupos de Terceiros
    ${nome_print}=     Set Variable     Grupos de Terceiros
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Grupos de Terceiros
    RPA.Windows.Get Text    Cadastro de Grupo de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Grupo de Terceiros (1)    ${Caminho_Screenshots}Grupos de Terceiros
    Fechar com Sim

Limite de Crédito
    ${nome_print}=     Set Variable     Limite de Crédito
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Limite de Crédito
    RPA.Windows.Get Text    Cadastro de Limite de Crédito (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot  Cadastro de Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito
    RPA.Windows.Click       Confirmar
    Fechar janela

Planos de Contas
    ${nome_print}=     Set Variable     Planos de Contas
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Plano de Contas
    RPA.Windows.Get Text    Cadastro do Plano de Contas (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro do Plano de Contas (1)    ${Caminho_Screenshots}Planos de Contas
    Fechar com Sim

Tipos de Documento
    ${nome_print}=     Set Variable     Tipos de Documento
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Tipos de Documento
    RPA.Windows.Get Text    Cadastro de Tipos de Documentos (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Tipos de Documentos (1)    ${Caminho_Screenshots}Tipos de Documentos
    Fechar com Sim

Tipo de Consórcio
    ${nome_print}=     Set Variable     Tipo de Consórcio
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click       Tipo de Consórcio
    RPA.Windows.Get Text    Tipo de Consórcio (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Tipo de Consórcio (1)    ${Caminho_Screenshots}Tipo de Consórcio
    Fechar com Sim

Tipo de Financiamento
    ${nome_print}=     Set Variable     Tipo de Financiamento
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Tipo de Financiamento
    RPA.Windows.Get Text    Cadastro de Tipo de Financiamento (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Tipo de Financiamento (1)    ${Caminho_Screenshots}Tipo de Financiamento
    Fechar com Sim

Portadores
    ${nome_print}=     Set Variable     Portadores
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Portadores
    RPA.Windows.Get Text    Cadastro de Portadores (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Portadores (1)    ${Caminho_Screenshots}Portadores
    Fechar com Sim

Carteiras de Cobranças
    ${nome_print}=     Set Variable     Carteiras de Cobranças
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Carteiras de Cobrança
    RPA.Windows.Get Text    Cadastro de Carteiras de Cobranças (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Carteiras de Cobranças (1)    ${Caminho_Screenshots}Carteiras de Cobranças
    Fechar com Sim

Tipos de Cobrança
    ${nome_print}=     Set Variable     Tipos de Cobrança
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Tipos de Cobrança
    RPA.Windows.Get Text    Cadastro de Tipos de Cobrança (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Tipos de Cobrança (1)    ${Caminho_Screenshots}Tipos de Cobrança
    Fechar com Sim

Bancos
    ${nome_print}=     Set Variable     Bancos
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Bancos
    RPA.Windows.Get Text    Cadastro de Bancos (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Bancos (1)    ${Caminho_Screenshots}Bancos
    Fechar com Sim

Formas de Pagamento
    ${nome_print}=     Set Variable     Formas de Pagamento
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Formas de Pagamento
    RPA.Windows.Get Text    Formas de Pagamento (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Formas de Pagamento (1)    ${Caminho_Screenshots}Formas de Pagamento
    Fechar com Sim

Formas de Pagamento (SISPAG)
    ${nome_print}=     Set Variable     Formas de Pagamento (SISPAG)
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Formas de Pagamento (SISPAG)
    RPA.Windows.Get Text    Cadastro de Formas de Pagamento (SISPAG) (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Formas de Pagamento (SISPAG) (1)    ${Caminho_Screenshots}Formas de Pagamento (SISPAG)
    Fechar com Sim

Bandeiras de Cartões
    ${nome_print}=     Set Variable     Bandeiras de Cartões
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Bandeiras de Cartões
    RPA.Windows.Get Text    Cadastro de Bandeiras Cartão (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Bandeiras Cartão (1)    ${Caminho_Screenshots}Bandeiras de Cartões
    Fechar com Sim

Autorizadoras de Cartões
    ${nome_print}=     Set Variable     Autorizadoras de Cartões
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Autorizadoras de Cartões
    RPA.Windows.Get Text    Cadastro de Autorizadoras de Cartão (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Autorizadoras de Cartão (1)    ${Caminho_Screenshots}Autorizadoras de Cartões
    Fechar com Sim

Centros de Custos
    ${nome_print}=     Set Variable     Centros de Custos
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Centros de Custos
    RPA.Windows.Get Text    Cadastro de Centros de Custos (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Centros de Custos (1)    ${Caminho_Screenshots}Centros de Custos
    Fechar com Sim

Históricos Contábeis
    ${nome_print}=     Set Variable     Históricos Contábeis
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Históricos Contábeis
    RPA.Windows.Get Text    Cadastro de Históricos Contábeis (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Históricos Contábeis (1)    ${Caminho_Screenshots}Históricos Contábeis
    Fechar com Sim

Indexadores
    ${nome_print}=     Set Variable     Indexadores
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Indexadores
    RPA.Windows.Get Text    Cadastro de Indexadores (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Indexadores (1)    ${Caminho_Screenshots}Indexadores
    Fechar com Sim

Índices Financeiros
    ${nome_print}=     Set Variable     Índices Financeiros
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Índices Financeiros
    RPA.Windows.Get Text    Cadastro de Índices Financeiros (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Índices Financeiros (1)    ${Caminho_Screenshots}Índices Financeiros
    Fechar com Sim

Limite de Crédito > Documentos
    ${nome_print}=     Set Variable     Documentos
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Desktop.Press Keys    l
    RPA.Windows.Click         Documentos
    RPA.Windows.Get Text      Documentos para Limite de Crédito (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Documentos para Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito/Documentos
    Fechar com Sim

Limite de Crédito > Tipos Aprovação
    ${nome_print}=     Set Variable     Tipos Aprovação
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Desktop.Press Keys    l
    RPA.Desktop.Press Keys    t
    RPA.Windows.Get Text      Cadastro de Tipos de Aprovação (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Tipos de Aprovação (1)    ${Caminho_Screenshots}Limite de Crédito/Tipos Aprovação
    Fechar com Sim

Limite de Crédito > Níveis de Aprovação
    ${nome_print}=     Set Variable     Níveis de Aprovação
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Desktop.Press Keys    l
    RPA.Desktop.Press Keys    n
    RPA.Windows.Get Text      Cadastro Estágios de aprovação para o Limite de Crédito (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro Estágios de aprovação para o Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito/Níveis de Aprovação
    Fechar com Sim

Limite de Crédito > Dados para Análise
    ${nome_print}=     Set Variable     Dados para Análise
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Desktop.Press Keys    l
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Cadastro de Dados para Limite de Crédito (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Dados para Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito/Dados para Análise
    Fechar com Sim

Limite de Crédito > Tipos de Cálculos/Fórmulas
    ${nome_print}=     Set Variable     Tipos de Cálculos_Fórmulas
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Desktop.Press Keys    l
    RPA.Desktop.Press Keys    i
    RPA.Windows.Get Text      Cadastro de Tipos de Cálculos para Limite de Crédito (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Tipos de Cálculos para Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito/Tipos de Cálculos_Fórmulas
    Fechar com Sim

Limite de Crédito > Estrutura Análise
    ${nome_print}=     Set Variable     Estrutura Análise
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Desktop.Press Keys    l
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Cadastro de Estrutura de Cálculos para o Limite de Crédito (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Estrutura de Cálculos para o Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito/Estrutura Análise
    Fechar com Sim

Limite de Crédito > Fórmulas/Cálculo Limite de crédito
    ${nome_print}=     Set Variable     Fórmulas_Cálculo Limite de crédito
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Desktop.Press Keys    l
    RPA.Desktop.Press Keys    f
    RPA.Windows.Get Text      Cadastro de Cálculos para o Limite de Crédito (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Cálculos para o Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito/Fórmulas_Cálculo Limite de crédito
    Fechar com Sim

Países
    ${nome_print}=     Set Variable     Países
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Países
    RPA.Windows.Get Text      Cadastro de Países (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Países (1)    ${Caminho_Screenshots}Países
    Fechar com Sim

Estados
    ${nome_print}=     Set Variable     Estados
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Estados
    RPA.Windows.Get Text      Cadastro de Estados (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Estados (1)    ${Caminho_Screenshots}Estados
    Fechar com Sim

Regiões
    ${nome_print}=     Set Variable     Regiões
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Regiões
    RPA.Windows.Get Text      Cadastro de Regiões (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Regiões (1)    ${Caminho_Screenshots}Regiões
    Fechar com Sim

Municípios
    ${nome_print}=     Set Variable     Municípios
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Municípios
    RPA.Windows.Get Text      Cadastro de Municípios (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
    Fechar com Sim

Localidades
    ${nome_print}=     Set Variable     Localidades
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Localidades
    RPA.Windows.Get Text      Cadastro de Localidades (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Localidades (1)    ${Caminho_Screenshots}Localidades
    Fechar com Sim

Eventos
    ${nome_print}=     Set Variable     Eventos
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Eventos
    RPA.Windows.Get Text      Cadastro de Eventos (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Eventos (1)    ${Caminho_Screenshots}Eventos
    Fechar com Sim

Relatórios > Terceiros
    ${nome_print}=     Set Variable     Terceiros
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    t
    RPA.Windows.Get Text      Relatório de Clientes/Fornecedores (1)
    RPA.Windows.Click         Nome
    BaseKeywordsDesktop.Screenshot    Relatório de Clientes/Fornecedores (1)    ${Caminho_Screenshots}Relatórios/Terceiros
    Fechar janela

Relatórios > Tipos de Documentos
    ${nome_print}=     Set Variable     Tipos de Documentos
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    i
    RPA.Windows.Get Text      Relatório de Tipos de Documentos (1)
    RPA.Windows.Click         Ordem de Nome
    BaseKeywordsDesktop.Screenshot    Relatório de Tipos de Documentos (1)    ${Caminho_Screenshots}Relatórios/Tipos de Documentos
    Fechar janela

Relatórios > Portadores
    ${nome_print}=     Set Variable     Portadores
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    p
    RPA.Windows.Get Text      Relatório de Portadores (1)
    RPA.Windows.Click         Ordem de Nome
    BaseKeywordsDesktop.Screenshot    Relatório de Portadores (1)    ${Caminho_Screenshots}Relatórios/Portadores
    Fechar janela

Relatórios > Plano de Contas
    ${nome_print}=     Set Variable     Plano de Contas
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Relatório de Plano de Contas (1)
    RPA.Windows.Click         Ordem de Nome
    BaseKeywordsDesktop.Screenshot    Relatório de Plano de Contas (1)    ${Caminho_Screenshots}Relatórios/Plano de Contas
    Fechar janela

Relatórios > Históricos Contábeis
    ${nome_print}=     Set Variable     Históricos Contábeis
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    h
    RPA.Windows.Get Text      Relatório de Históricos Contábeis (1)
    RPA.Windows.Click         Ordem de Nome
    BaseKeywordsDesktop.Screenshot    Relatório de Históricos Contábeis (1)    ${Caminho_Screenshots}Relatórios/Históricos Contábeis
    Fechar janela

Relatórios > Centros de Custos
    ${nome_print}=     Set Variable     Centros de Custos
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Relatório de Centros de Custos (1)
    RPA.Windows.Click         Ordem de Nome
    BaseKeywordsDesktop.Screenshot    Relatório de Centros de Custos (1)    ${Caminho_Screenshots}Relatórios/Centros de Custos
    Fechar janela

Relatórios > Países
    ${nome_print}=     Set Variable     Países
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Relatório de Países (1)
    RPA.Windows.Click         Ordem de Nome
    BaseKeywordsDesktop.Screenshot    Relatório de Países (1)    ${Caminho_Screenshots}Relatórios/Países
    Fechar janela

Relatórios > Estados
    ${nome_print}=     Set Variable     Estados
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Relatório de Estados (1)
    RPA.Windows.Click         Ordem de País
    BaseKeywordsDesktop.Screenshot    Relatório de Estados (1)    ${Caminho_Screenshots}Relatórios/Estados
    Fechar janela

Relatórios > Municípios
    ${nome_print}=     Set Variable     Municípios
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    m
    RPA.Windows.Get Text      Relatório de Municípios (1)
    RPA.Windows.Click         Ordem de Nome
    BaseKeywordsDesktop.Screenshot    Relatório de Municípios (1)    ${Caminho_Screenshots}Relatórios/Municípios
    Fechar janela

Relatórios > Regiões
    ${nome_print}=     Set Variable     Regiões
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Relatório de Regiões (1)
    RPA.Windows.Click         Ordem de Nome
    BaseKeywordsDesktop.Screenshot    Relatório de Regiões (1)    ${Caminho_Screenshots}Relatórios/Regiões
    Fechar janela

Relatórios > Localidades
    ${nome_print}=     Set Variable     Localidades
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    o
    RPA.Windows.Get Text      Relatório de Localidades (1)
    RPA.Windows.Click         Ordem de Nome
    BaseKeywordsDesktop.Screenshot    Relatório de Localidades (1)    ${Caminho_Screenshots}Relatórios/Localidades
    Fechar janela

Relatórios > Estabelecimentos
    ${nome_print}=     Set Variable     Estabelecimentos
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Relatórios
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Relatório de Estabelecimentos (1)
    RPA.Windows.Click         Ordem de Nome
    BaseKeywordsDesktop.Screenshot    Relatório de Estabelecimentos (1)    ${Caminho_Screenshots}Relatórios/Estabelecimentos
    Fechar janela

Parâmetros > Empresas
    ${nome_print}=     Set Variable     Empresas
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar com Sim

Parâmetros > Estabelecimentos
    ${nome_print}=     Set Variable     Estabelecimentos
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    Sleep                     1s
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar com Sim

Parâmetros > Usuários
    ${nome_print}=     Set Variable     Usuários
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    U
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    BaseKeywordsDesktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela

Parâmetros > Grupo de Usuários
    ${nome_print}=     Set Variable     Grupo de Usuários
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupo de Usuários
    Fechar com Sim

Parâmetros > Configurações da Estação
    ${nome_print}=     Set Variable     Configurações da Estação
    [Tags]   SmokeERP    Financeiro    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    BaseKeywordsDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações da Estação
    Fechar janela