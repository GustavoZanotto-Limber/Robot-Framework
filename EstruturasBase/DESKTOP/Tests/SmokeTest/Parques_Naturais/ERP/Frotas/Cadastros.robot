*** Settings ***
Documentation    Smoke Test: Frotas
Resource          C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_frotas

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Frotas/Cadastros/    

*** Keywords ***



*** Test Cases ***

Terceiros > Cadastro de Terceiros
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Terceiros/                         Cadastro de Terceiros
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
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Terceiros/                             Categorias de Terceiros
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Cadastro de Categorias de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Categorias de Terceiros (1)    ${Caminho_Screenshots}Terceiros/ Categorias de Terceiros
    Fechar janela
    RPA.Windows.Click       Sim

Terceiros > Grupo de Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Terceiros/              Grupo de Terceiros
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  G
    RPA.Windows.Get Text    Cadastro de Grupo de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Grupo de Terceiros (1)    ${Caminho_Screenshots}Terceiros/ Grupo de Terceiros
    Fechar Janela
    RPA.Windows.Click       Sim

Terceiros > Registro de Contatos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Terceiros/              Registro de Contatos
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
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Terceiros/              Tipo de registro de Contatos
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de tipo de Histórico de Contatos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de tipo de Histórico de Contatos (1)    ${Caminho_Screenshots}Terceiros/Tipo de registro de Contatos
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Produtos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Produtos
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Cadastro de Itens (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Itens (1)    ${Caminho_Screenshots}Itens/Produtos
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Pneus
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Pneus
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  N
    RPA.Windows.Get Text    Cadastro de Pneus (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Pneus (1)    ${Caminho_Screenshots}Itens/Pneus
    Fechar Janela
    RPA.Windows.Click       Sim

Natureza de Cargas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Natureza de Cargas
    Cadastros
    RPA.Windows.Click       Natureza de Cargas
    RPA.Windows.Get Text    Cadastro de Natureza de Carga (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Natureza de Carga (1)    ${Caminho_Screenshots}Natureza de Cargas
    Fechar Janela
    RPA.Windows.Click       Sim

Veículos > Veículos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Veículos/              Veículos
    Cadastros
    RPA.Windows.Click       Veículos
    RPA.Desktop.Press Keys  V
    RPA.Windows.Get Text    Cadastro de Veículos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Veículos (1)    ${Caminho_Screenshots}Veículos/Veículos
    Fechar Janela

Veículos > Tipos de Veículos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Veículos/              Tipos de Veículos
    Cadastros
    RPA.Windows.Click       Veículos
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tipos de Veículos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Veículos (1)    ${Caminho_Screenshots}Veículos/Tipos de Veículos
    Fechar Janela
    RPA.Windows.Click       Sim

Veículos > Tipos de Chassi
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Veículos/              Tipos de Chassi
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
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Tanques de Combustíveis
    Cadastros
    RPA.Windows.Click       Tanques de Combustíveis
    RPA.Windows.Get Text    Cadastro de Tanques Combustíveis (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tanques Combustíveis (1)    ${Caminho_Screenshots}Tanques de Combustíveis
    Fechar Janela
    RPA.Windows.Click       Sim

Navios
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Navios
    Cadastros
    RPA.Windows.Click       Navios
    RPA.Windows.Get Text    Cadastro de Navios (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Navios (1)    ${Caminho_Screenshots}Navios
    Fechar Janela
    RPA.Windows.Click       Sim

Tipo de Despesa Viagem
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Tipo de Despesa Viagem
    Cadastros
    RPA.Windows.Click       Tipo de Despesa Viagem
    RPA.Windows.Get Text    Cadastro de Tipo de Despesa de Viagem (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipo de Despesa de Viagem (1)    ${Caminho_Screenshots}Tipo de Despesa Viagem
    Fechar Janela
    RPA.Windows.Click       Sim

Seguro de Cargas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Seguro de Cargas
    Cadastros
    RPA.Windows.Click       Seguro de Cargas
    RPA.Windows.Get Text    Cadastro de Seguro de Carga (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Seguro de Carga (1)    ${Caminho_Screenshots}Seguro de Cargas
    Fechar Janela
    RPA.Windows.Click       Sim

Infrações de Trânsito
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Infrações de Trânsito
    Cadastros
    RPA.Windows.Click       Infrações de Trânsito
    RPA.Windows.Get Text    Cadastro de Infrações de Trânsito (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Infrações de Trânsito (1)    ${Caminho_Screenshots}Infrações de Trânsito
    Fechar Janela
    RPA.Windows.Click       Sim

Despesas de Viagens
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Despesas de Viagens
    Cadastros
    RPA.Windows.Click       Despesas de Viagens
    RPA.Windows.Get Text    Cadastro de Despesas de Viagens (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Despesas de Viagens (1)    ${Caminho_Screenshots}Despesas de Viagens
    Fechar Janela
    RPA.Windows.Click       Sim

Tipo Carga
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Tipo Carga
    Cadastros
    RPA.Windows.Click       Tipo Carga
    RPA.Windows.Get Text    Cadastro de Tipo de Carga (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipo de Carga (1)    ${Caminho_Screenshots}Tipo Carga
    Fechar Janela
    RPA.Windows.Click       Sim

Tipo Serviço
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Tipo Serviço
    Cadastros
    RPA.Windows.Click       Tipo Serviço
    RPA.Windows.Get Text    Cadastro de Tipo de Serviço (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipo de Serviço (1)    ${Caminho_Screenshots}Tipo Serviço
    Fechar Janela
    RPA.Windows.Click       Sim

Status de Pedido
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Status de Pedido
    Cadastros
    RPA.Windows.Click       Status de Pedido
    RPA.Windows.Get Text    Cadastro de Status de Pedido (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Status de Pedido (1)    ${Caminho_Screenshots}Status de Pedido
    Fechar Janela
    RPA.Windows.Click       Sim

Tipo Despesas Viagens
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Tipo Despesas Viagens
    Cadastros
    RPA.Windows.Click       Tipo Despesas Viagens
    RPA.Windows.Get Text    Cadastro de Despesas de Viagens (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Despesas de Viagens (1)    ${Caminho_Screenshots}Tipo Despesas Viagens
    Fechar Janela
    RPA.Windows.Click       Sim

Configuração Layout Personalizado
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Configuração Layout Personalizado
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
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Tabela de Frete
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
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Documentos/              Tipos de Documentos
    Cadastros
    RPA.Windows.Click       Documentos
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tipos de Documentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Documentos (1)    ${Caminho_Screenshots}Documentos/Tipos de Documentos
    Fechar Janela
    RPA.Windows.Click       Sim

Países
    [Teardown]                Caso aconteça erro                    ${Caminho_Screenshots}           Países
    Cadastros
    RPA.Windows.Click         Países
    RPA.Windows.Get Text      Cadastro de Países (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Países (1)    ${Caminho_Screenshots}Países
    Fechar janela
    RPA.Windows.Click       Sim

Estados
    [Teardown]                Caso aconteça erro                    ${Caminho_Screenshots}           Estados
    Cadastros
    RPA.Windows.Click         Estados
    RPA.Windows.Get Text      Cadastro de Estados (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Estados (1)    ${Caminho_Screenshots}Estados
    Fechar janela
    RPA.Windows.Click       Sim

Municípios
    [Teardown]                Caso aconteça erro                    ${Caminho_Screenshots}           Municípios
    Cadastros
    RPA.Windows.Click         Municípios
    RPA.Windows.Get Text      Cadastro de Municípios (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
    Fechar janela
    RPA.Windows.Click       Sim

Regiões
    [Teardown]                Caso aconteça erro                    ${Caminho_Screenshots}           Regiões
    Cadastros
    RPA.Windows.Click         Regiões
    RPA.Windows.Get Text      Cadastro de Regiões (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Regiões (1)    ${Caminho_Screenshots}Regiões
    Fechar janela
    RPA.Windows.Click       Sim


Históricos Contábeis
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Históricos Contábeis
    Cadastros
    RPA.Windows.Click         Históricos Contábeis
    RPA.Windows.Get Text      Cadastro de Históricos Contábeis (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Históricos Contábeis (1)    ${Caminho_Screenshots}Históricos Contábeis
    Fechar janela
    RPA.Windows.Click         Sim

Financeiro > Forma de Pagamento
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Financeiro/              Forma de Pagamento
    Cadastros
    RPA.Windows.Click       Financeiro
    RPA.Desktop.Press Keys  F
    RPA.Windows.Get Text    Formas de Pagamento (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Formas de Pagamento (1)    ${Caminho_Screenshots}Financeiro/Forma de Pagamento
    Fechar Janela
    RPA.Windows.Click       Sim

Financeiro > Descontos Motorista
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Financeiro/              Descontos Motorista
    Cadastros
    RPA.Windows.Click       Financeiro
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Cadastro de Descontos Motorista (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Descontos Motorista (1)    ${Caminho_Screenshots}Financeiro/Descontos Motorista
    Fechar Janela
    RPA.Windows.Click       Sim

Financeiro > Moedas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Financeiro/              Moedas
    Cadastros
    RPA.Windows.Click       Financeiro
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Cadastro de Moedas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Moedas (1)    ${Caminho_Screenshots}Financeiro/Moedas
    Fechar Janela
    RPA.Windows.Click       Sim

Fiscal > Classificações Fiscais
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           Classificações Fiscais
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de Classificações Fiscais (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Classificações Fiscais (1)    ${Caminho_Screenshots}Fiscal/Classificações Fiscais
    Fechar janela
    RPA.Windows.Click       Sim


Fiscal > Mensagem de Notas Fiscais
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           Mensagem de Notas Fiscais
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    N
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Mensagens de Notas Fiscais (1)    ${Caminho_Screenshots}Fiscal/Mensagem de Notas Fiscais
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Espécies de Documentos
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           Espécies de Documentos
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Espécies de Documentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Espécies de Documentos (1)    ${Caminho_Screenshots}Fiscal/Espécies de Documentos
    RPA.Windows.Click       OK
    Fechar janela

Fiscal > Operações Fiscais
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           Operações Fiscais
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Cadastro de Operações Fiscais (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Operações Fiscais (1)    ${Caminho_Screenshots}Fiscal/Operações Fiscais
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Séries
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           Séries
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Séries (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Séries (1)    ${Caminho_Screenshots}Fiscal/Séries
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Simples Nacional > Tabela Tributária
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/Simples Nacional/           Tabela Tributária
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/Simples Nacional/           Tabela Tributária
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           CFOP's
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Cadastro de CFOP's (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de CFOP's (1)    ${Caminho_Screenshots}Fiscal/CFOP's
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > IPI > Tabela Tributária
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/IPI/           Tabela Tributária
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/IPI/           Situação Tributária
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/ICMS/           Tabela Tributária
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/ICMS/           Situação Tributária
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/ICMS/           Tabela Tributária - FCP
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro da Tabela Tributária FCP (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro da Tabela Tributária FCP (1)    ${Caminho_Screenshots}Fiscal/ICMS/Tabela Tributária - FCP
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > ICMS > Tabela Tributária - FCP
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/ICMS/           Tabela Tributária - FCP
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/PIS/           Tabela Tributária
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/PIS/           Situação Tributária
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/COFINS/           Tabela Tributária
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/COFINS/           Situação Tributária
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/CSLL/           Tabela Tributária
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/CSLL/           Situação Tributária
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/IRPJ/           Tabela Tributária
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/IRPJ/           Situação Tributária
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/ISSQN/           Tabela Tributária
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           Tabela de Alíquota Nacional de Impostos por NCM
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Tabela de Alíquota Nacional de Impostos de Produtos/Serviços - Lei n° 12.741, de 8 de dezembro de 2012 (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot    Tabela de Alíquota Nacional de Impostos de Produtos/Serviços - Lei n° 12.741, de 8 de dezembro de 2012 (1)    ${Caminho_Screenshots}Fiscal/Tabela de Alíquota Nacional de Impostos por NCM
    Fechar janela

Fiscal > Impostos Retidos > IR > Tabela Tributária - Pessoa jurídica
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/Impostos Retidos/IR/           Tabela Tributária - Pessoa jurídica
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/Impostos Retidos/IR/           Tabela Tributária - Pessoa Física
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/Impostos Retidos/IR/           Cadastro de Serviço
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/Impostos Retidos/CSRF/           Tabela Tributária
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/Impostos Retidos/CSRF/           Cadastro de Serviços
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/Impostos Retidos/INSS/           Tabela Tributária - Pessoa jurídica
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/Impostos Retidos/INSS/           Tabela Tributária - Pessoa Física
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/Impostos Retidos/INSS/           Cadastro de Serviços
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/Impostos Retidos/          SEST_SENAT
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/       Classificações de Serviços Prestado - REINF
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    V
    RPA.Windows.Get Text      Classificações de Serviços Prestado - REINF (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Classificações de Serviços Prestado - REINF (1)    ${Caminho_Screenshots}Fiscal/Classificações de Serviços Prestado - REINF
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Empresas
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/           Empresas
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot                  Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Estabelecimentos
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/           Estabelecimentos
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot                  Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Usuários
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/           Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    u
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot                  Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Grupos Usuários
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/           Grupos Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot                  Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupos Usuários
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Configurações de Estação
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/           Configurações de Estação
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    BaseDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações de Estação
    Fechar janela

Encerrar
    Encerrar tudo