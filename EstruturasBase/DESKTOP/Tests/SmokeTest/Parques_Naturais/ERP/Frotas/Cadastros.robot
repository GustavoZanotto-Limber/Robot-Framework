*** Settings ***
Documentation    Smoke Test: Frotas
Resource          C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Frotas/Cadastros/    
${nome_print}
${nome_exe}=    cde_win_frotas
*** Keywords ***


*** Test Cases ***

Terceiros > Cadastro de Terceiros
    ${nome_print}=     Set Variable     Cadastro de Terceiros
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Terceiros
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Terceiros (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Terceiros (1)    ${Caminho_Screenshots}Terceiros/Cadastro de Terceiros
    RPA.Windows.Click         Cancelar (F3)
    Fechar janela
    RPA.Windows.Click         Sim

Terceiros > Categorias de Terceiros
    ${nome_print}=     Set Variable     Categorias de Terceiros
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Cadastro de Categorias de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Categorias de Terceiros (1)    ${Caminho_Screenshots}Terceiros/ Categorias de Terceiros
    Fechar janela
    RPA.Windows.Click       Sim

Terceiros > Grupo de Terceiros
    ${nome_print}=     Set Variable     Grupo de Terceiros
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  G
    RPA.Windows.Get Text    Cadastro de Grupo de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Grupo de Terceiros (1)    ${Caminho_Screenshots}Terceiros/ Grupo de Terceiros
    Fechar Janela
    RPA.Windows.Click       Sim

Terceiros > Registro de Contatos
    ${nome_print}=     Set Variable     Registro de Contatos
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Consulta de Contatos Realizados (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Consulta de Contatos Realizados (1)    ${Caminho_Screenshots}Terceiros/Registro de Contatos
    RPA.Windows.Click       Confirmar
    Fechar Janela

Terceiros > Tipo de registro de Contatos
    ${nome_print}=     Set Variable     Tipo de registro de Contatos
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de tipo de Histórico de Contatos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de tipo de Histórico de Contatos (1)    ${Caminho_Screenshots}Terceiros/Tipo de registro de Contatos
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Produtos
    ${nome_print}=     Set Variable     Produtos
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Cadastro de Itens (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Itens (1)    ${Caminho_Screenshots}Itens/Produtos
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Pneus
    ${nome_print}=     Set Variable     Pneus
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  N
    RPA.Windows.Get Text    Cadastro de Pneus (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Pneus (1)    ${Caminho_Screenshots}Itens/Pneus
    Fechar Janela
    RPA.Windows.Click       Sim

Natureza de Cargas
    ${nome_print}=     Set Variable     Natureza de Cargas
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Natureza de Cargas
    RPA.Windows.Get Text    Cadastro de Natureza de Carga (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Natureza de Carga (1)    ${Caminho_Screenshots}Natureza de Cargas
    Fechar Janela
    RPA.Windows.Click       Sim

Veículos > Veículos
    ${nome_print}=     Set Variable     Veículos
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Veículos
    RPA.Desktop.Press Keys  V
    RPA.Windows.Get Text    Cadastro de Veículos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Veículos (1)    ${Caminho_Screenshots}Veículos/Veículos
    Fechar Janela

Veículos > Tipos de Veículos
    ${nome_print}=     Set Variable     Tipos de Veículos
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Veículos
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tipos de Veículos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Veículos (1)    ${Caminho_Screenshots}Veículos/Tipos de Veículos
    Fechar Janela
    RPA.Windows.Click       Sim

Veículos > Tipos de Chassi
    ${nome_print}=     Set Variable     Tipos de Chassi
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Veículos
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Cadastro Tipo Chassi (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Cadastro Tipo Chassi (1)    ${Caminho_Screenshots}Veículos/Tipos de Chassi
    RPA.Windows.Click         Confirmar
    Fechar Janela

Tanques de Combustíveis
    ${nome_print}=     Set Variable     Tanques de Combustíveis
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Tanques de Combustíveis
    RPA.Windows.Get Text    Cadastro de Tanques Combustíveis (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tanques Combustíveis (1)    ${Caminho_Screenshots}Tanques de Combustíveis
    Fechar Janela
    RPA.Windows.Click       Sim

Navios
    ${nome_print}=     Set Variable     Navios
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Navios
    RPA.Windows.Get Text    Cadastro de Navios (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Navios (1)    ${Caminho_Screenshots}Navios
    Fechar Janela
    RPA.Windows.Click       Sim

Tipo de Despesa Viagem
    ${nome_print}=     Set Variable     Tipo de Despesa Viagem
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Tipo de Despesa Viagem
    RPA.Windows.Get Text    Cadastro de Tipo de Despesa de Viagem (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipo de Despesa de Viagem (1)    ${Caminho_Screenshots}Tipo de Despesa Viagem
    Fechar Janela
    RPA.Windows.Click       Sim

Seguro de Cargas
    ${nome_print}=     Set Variable     Seguro de Cargas
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Seguro de Cargas
    RPA.Windows.Get Text    Cadastro de Seguro de Carga (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Seguro de Carga (1)    ${Caminho_Screenshots}Seguro de Cargas
    Fechar Janela
    RPA.Windows.Click       Sim

Infrações de Trânsito
    ${nome_print}=     Set Variable     Infrações de Trânsito
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Infrações de Trânsito
    RPA.Windows.Get Text    Cadastro de Infrações de Trânsito (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Infrações de Trânsito (1)    ${Caminho_Screenshots}Infrações de Trânsito
    Fechar Janela
    RPA.Windows.Click       Sim

Despesas de Viagens
    ${nome_print}=     Set Variable     Despesas de Viagens
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Despesas de Viagens
    RPA.Windows.Get Text    Cadastro de Despesas de Viagens (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Despesas de Viagens (1)    ${Caminho_Screenshots}Despesas de Viagens
    Fechar Janela
    RPA.Windows.Click       Sim

Tipo Carga
    ${nome_print}=     Set Variable     Tipo Carga
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Tipo Carga
    RPA.Windows.Get Text    Cadastro de Tipo de Carga (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipo de Carga (1)    ${Caminho_Screenshots}Tipo Carga
    Fechar Janela
    RPA.Windows.Click       Sim

Tipo Serviço
    ${nome_print}=     Set Variable     Tipo Serviço
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Tipo Serviço
    RPA.Windows.Get Text    Cadastro de Tipo de Serviço (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipo de Serviço (1)    ${Caminho_Screenshots}Tipo Serviço
    Fechar Janela
    RPA.Windows.Click       Sim

Status de Pedido
    ${nome_print}=     Set Variable     Status de Pedido
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Status de Pedido
    RPA.Windows.Get Text    Cadastro de Status de Pedido (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Status de Pedido (1)    ${Caminho_Screenshots}Status de Pedido
    Fechar Janela
    RPA.Windows.Click       Sim

Tipo Despesas Viagens
    ${nome_print}=     Set Variable     Tipo Despesas Viagens
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Tipo Despesas Viagens
    RPA.Windows.Get Text    Cadastro de Despesas de Viagens (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Despesas de Viagens (1)    ${Caminho_Screenshots}Tipo Despesas Viagens
    Fechar Janela
    RPA.Windows.Click       Sim

Configuração Layout Personalizado
    ${nome_print}=     Set Variable     Configuração Layout Personalizado
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Configuração Layout Personalizado
    RPA.Windows.Get Text    Configuração Layout Personalizado (1)
    repetidor de teclas     tab      5
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configuração Layout Personalizado (1)    ${Caminho_Screenshots}Configuração Layout Personalizado
    RPA.Windows.Click       Confirmar
    Fechar Janela

Tabela de Frete
    ${nome_print}=     Set Variable     Tabela de Frete
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Tabela de Frete
    RPA.Windows.Get Text    Cadastro de Tabela de Frete (1)
    repetidor de teclas     tab      3
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Cadastro de Tabela de Frete (1)    ${Caminho_Screenshots}Tabela de Frete
    RPA.Windows.Click       Confirmar
    Fechar Janela
    RPA.Windows.Click       Sim

Documentos > Tipos de Documentos
    ${nome_print}=     Set Variable     Tipos de Documentos
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Documentos
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tipos de Documentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Documentos (1)    ${Caminho_Screenshots}Documentos/Tipos de Documentos
    Fechar Janela
    RPA.Windows.Click       Sim

Países
    ${nome_print}=     Set Variable     Países
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Países
    RPA.Windows.Get Text      Cadastro de Países (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Países (1)    ${Caminho_Screenshots}Países
    Fechar janela
    RPA.Windows.Click       Sim

Estados
    ${nome_print}=     Set Variable     Estados
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Estados
    RPA.Windows.Get Text      Cadastro de Estados (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Estados (1)    ${Caminho_Screenshots}Estados
    Fechar janela
    RPA.Windows.Click       Sim

Municípios
    ${nome_print}=     Set Variable     Municípios
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Municípios
    RPA.Windows.Get Text      Cadastro de Municípios (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
    Fechar janela
    RPA.Windows.Click       Sim

Regiões
    ${nome_print}=     Set Variable     Regiões
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Regiões
    RPA.Windows.Get Text      Cadastro de Regiões (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Regiões (1)    ${Caminho_Screenshots}Regiões
    Fechar janela
    RPA.Windows.Click       Sim

Históricos Contábeis
    ${nome_print}=     Set Variable     Históricos Contábeis
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Históricos Contábeis
    RPA.Windows.Get Text      Cadastro de Históricos Contábeis (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Históricos Contábeis (1)    ${Caminho_Screenshots}Históricos Contábeis
    Fechar janela
    RPA.Windows.Click         Sim

Financeiro > Forma de Pagamento
    ${nome_print}=     Set Variable     Forma de Pagamento
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Financeiro
    RPA.Desktop.Press Keys  F
    RPA.Windows.Get Text    Formas de Pagamento (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Formas de Pagamento (1)    ${Caminho_Screenshots}Financeiro/Forma de Pagamento
    Fechar Janela
    RPA.Windows.Click       Sim

Financeiro > Descontos Motorista
    ${nome_print}=     Set Variable     Descontos Motorista
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Financeiro
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Cadastro de Descontos Motorista (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Descontos Motorista (1)    ${Caminho_Screenshots}Financeiro/Descontos Motorista
    Fechar Janela
    RPA.Windows.Click       Sim

Financeiro > Moedas
    ${nome_print}=     Set Variable     Moedas
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click       Financeiro
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Cadastro de Moedas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Moedas (1)    ${Caminho_Screenshots}Financeiro/Moedas
    Fechar Janela
    RPA.Windows.Click       Sim

Fiscal > Classificações Fiscais
    ${nome_print}=     Set Variable     Classificações Fiscais
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de Classificações Fiscais (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Classificações Fiscais (1)    ${Caminho_Screenshots}Fiscal/Classificações Fiscais
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Mensagem de Notas Fiscais
    ${nome_print}=     Set Variable     Mensagem de Notas Fiscais
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    N
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Mensagens de Notas Fiscais (1)    ${Caminho_Screenshots}Fiscal/Mensagem de Notas Fiscais
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Espécies de Documentos
    ${nome_print}=     Set Variable     Espécies de Documentos
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Espécies de Documentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Espécies de Documentos (1)    ${Caminho_Screenshots}Fiscal/Espécies de Documentos
    RPA.Windows.Click       OK
    Fechar janela

Fiscal > Operações Fiscais
    ${nome_print}=     Set Variable     Operações Fiscais
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Cadastro de Operações Fiscais (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Operações Fiscais (1)    ${Caminho_Screenshots}Fiscal/Operações Fiscais
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Séries
    ${nome_print}=     Set Variable     Séries
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Séries (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Séries (1)    ${Caminho_Screenshots}Fiscal/Séries
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Simples Nacional > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Simples Nacional
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do Simples Nacional (CSOSN) (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Tabelas Tributárias do Simples Nacional (CSOSN) (1)    ${Caminho_Screenshots}Fiscal/Simples Nacional/Tabela Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Simples Nacional > Situação Tributária (CSOSN)
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Simples Nacional
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situações Tributárias Simples Nacional (CSOSN) (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Situações Tributárias Simples Nacional (CSOSN) (1)    ${Caminho_Screenshots}Fiscal/Simples Nacional/Tabela Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > CFOP's
    ${nome_print}=     Set Variable     CFOP's
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Cadastro de CFOP's (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de CFOP's (1)    ${Caminho_Screenshots}Fiscal/CFOP's
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > IPI > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         IPI
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabela Tributária do IPI (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Tabela Tributária do IPI (1)    ${Caminho_Screenshots}Fiscal/IPI/Tabela Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > IPI > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         IPI
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária do IPI (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Situação Tributária do IPI (1)    ${Caminho_Screenshots}Fiscal/IPI/Situação Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > ICMS > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributária (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Tabelas Tributária (1)    ${Caminho_Screenshots}Fiscal/ICMS/Tabela Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > ICMS > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situações Tributárias do ICMS (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Situações Tributárias do ICMS (1)    ${Caminho_Screenshots}Fiscal/ICMS/Situação Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > ICMS > Tabela Tributária - FCP
    ${nome_print}=     Set Variable     Tabela Tributária - FCP
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro da Tabela Tributária FCP (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro da Tabela Tributária FCP (1)    ${Caminho_Screenshots}Fiscal/ICMS/Tabela Tributária - FCP
    Fechar janela
    RPA.Windows.Click         Sim

Fiscal > PIS > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         PIS
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do PIS (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Tabelas Tributárias do PIS (1)    ${Caminho_Screenshots}Fiscal/PIS/Tabela Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > PIS > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         PIS
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária PIS (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Situação Tributária PIS (1)    ${Caminho_Screenshots}Fiscal/PIS/Situação Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > COFINS > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         COFINS
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do COFINS (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Tabelas Tributárias do COFINS (1)    ${Caminho_Screenshots}Fiscal/COFINS/Tabela Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > COFINS > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         COFINS
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária COFINS (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Situação Tributária COFINS (1)    ${Caminho_Screenshots}Fiscal/COFINS/Situação Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > CSLL > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         CSLL
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do CSLL (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Tabelas Tributárias do CSLL (1)    ${Caminho_Screenshots}Fiscal/CSLL/Tabela Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > CSLL > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         CSLL
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária CSLL (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Situação Tributária CSLL (1)    ${Caminho_Screenshots}Fiscal/CSLL/Situação Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > IRPJ > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         IRPJ
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do IRPJ (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Tabelas Tributárias do IRPJ (1)    ${Caminho_Screenshots}Fiscal/IRPJ/Tabela Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > IRPJ > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         IRPJ
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária IRPJ (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Situação Tributária IRPJ (1)    ${Caminho_Screenshots}Fiscal/IRPJ/Situação Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > ISSQN > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ISSQN
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabela Tributária ISSQN (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Tabela Tributária ISSQN (1)    ${Caminho_Screenshots}Fiscal/ISSQN/Tabela Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Tabela de Alíquota Nacional de Impostos por NCM
    ${nome_print}=     Set Variable     Tabela de Alíquota Nacional de Impostos por NCM
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Tabela de Alíquota Nacional de Impostos de Produtos/Serviços - Lei n° 12.741, de 8 de dezembro de 2012 (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot    Tabela de Alíquota Nacional de Impostos de Produtos/Serviços - Lei n° 12.741, de 8 de dezembro de 2012 (1)    ${Caminho_Screenshots}Fiscal/Tabela de Alíquota Nacional de Impostos por NCM
    Fechar janela

Fiscal > Impostos Retidos > IR > Tabela Tributária - Pessoa jurídica
    ${nome_print}=     Set Variable     Tabela Tributária - Pessoa jurídica
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         IR
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Tabela Tributaria de Retenção de IR (Pessoa Jurídica) (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Tabela Tributaria de Retenção de IR (Pessoa Jurídica) (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/IR/Tabela Tributária - Pessoa jurídica
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Impostos Retidos > IR > Tabela Tributária - Pessoa Física
    ${nome_print}=     Set Variable     Tabela Tributária - Pessoa Física
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         IR
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Tabela Tributaria de Retenção de IR (Pessoa Física) (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Tabela Tributaria de Retenção de IR (Pessoa Física) (1)   ${Caminho_Screenshots}Fiscal/Impostos Retidos/IR/Tabela Tributária - Pessoa Física
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Impostos Retidos > IR > Cadastro de Serviço
    ${nome_print}=     Set Variable     Cadastro de Serviço
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         IR
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Serviços para Retenção de IRRF (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Serviços para Retenção de IRRF (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/IR/Cadastro de Serviço
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Impostos Retidos > CSRF > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         CSRF
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Tabela Tributaria de Retenção de PIS/COFINS/CSLL (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Tabela Tributaria de Retenção de PIS/COFINS/CSLL (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/CSRF/Tabela Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Impostos Retidos > CSRF > Cadastro de Serviços
    ${nome_print}=     Set Variable     Cadastro de Serviços
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         CSRF
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Serviços para Retenção de PIS/COFINS/CSLL (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Serviços para Retenção de PIS/COFINS/CSLL (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/CSRF/Cadastro de Serviços
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Impostos Retidos > INSS > Tabela Tributária - Pessoa jurídica
    ${nome_print}=     Set Variable     Tabela Tributária - Pessoa jurídica
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         INSS
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Tabela Tributaria de Retenção de INSS (Pessoa Jurídica) (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Tabela Tributaria de Retenção de INSS (Pessoa Jurídica) (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/INSS/Tabela Tributária - Pessoa jurídica
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Impostos Retidos > INSS > Tabela Tributária - Pessoa Física
    ${nome_print}=     Set Variable     Tabela Tributária - Pessoa Física
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         INSS
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Tabela Tributaria de Retenção de INSS (Pessoa Física) (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Tabela Tributaria de Retenção de INSS (Pessoa Física) (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/INSS/Tabela Tributária - Pessoa Física
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Impostos Retidos > INSS > Cadastro de Serviços
    ${nome_print}=     Set Variable     Cadastro de Serviços
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         INSS
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Serviços para Retenção de INSSRF (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Serviços para Retenção de INSSRF (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/INSS/Cadastro de Serviços
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Impostos Retidos > SEST/SENAT
    ${nome_print}=     Set Variable     SEST_SENAT
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Tabela Tributária de SEST/SENAT (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Tabela Tributária de SEST/SENAT (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/SEST_SENAT
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Classificações de Serviços Prestado - REINF
    ${nome_print}=     Set Variable     Classificações de Serviços Prestado - REINF
    [Tags]     Frotas    Cadastros    SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    V
    RPA.Windows.Get Text      Classificações de Serviços Prestados - REINF (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Classificações de Serviços Prestados - REINF (1)    ${Caminho_Screenshots}Fiscal/Classificações de Serviços Prestado - REINF
    RPA.Windows.Click         Confirmar
    Fechar Janela

Parâmetros > Empresas
    ${nome_print}=     Set Variable     Empresas
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot                  Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Estabelecimentos
    ${nome_print}=     Set Variable     Estabelecimentos
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot                  Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Usuários
    ${nome_print}=     Set Variable     Usuários
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    u
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot                  Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Grupos Usuários
    ${nome_print}=     Set Variable     Grupos Usuários
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot                  Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupos Usuários
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Configurações de Estação
    ${nome_print}=     Set Variable     Configurações de Estação
    [Tags]     Frotas    Cadastros    SmokeTest    
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    BaseDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações de Estação
    Fechar janela