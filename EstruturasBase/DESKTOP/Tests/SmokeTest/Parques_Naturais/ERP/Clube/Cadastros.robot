*** Settings ***
Documentation    Smoke Test: Clube
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_clube

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Clube/Cadastros/    

*** Keywords ***

*** Test Cases ***

Sócios/Dependentes
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Sócios_Dependentes
    Cadastros
    RPA.Windows.Click       Sócios/Dependentes
    RPA.Windows.Get Text    Cadastro de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Terceiros (1)   ${Caminho_Screenshots}Sócios_Dependentes
    RPA.Windows.Click       Cancelar (F3)
    Fechar janela
    RPA.Windows.Click       Sim

Categorias de Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Categorias de Terceiros
    Cadastros
    RPA.Windows.Click       Categorias de Terceiros
    RPA.Windows.Get Text    Cadastro de Categorias de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Categorias de Terceiros (1)    ${Caminho_Screenshots}Categorias de Terceiros
    Fechar janela
    RPA.Windows.Click       Sim

Grupos de Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Grupos de Terceiros
    Cadastros
    RPA.Windows.Click       Grupos de Terceiros
    RPA.Windows.Get Text    Cadastro de Grupos Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Grupos Terceiros (1)    ${Caminho_Screenshots}Grupos de Terceiros
    Fechar janela
    RPA.Windows.Click       Sim

Espécies de Dependentes
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Espécies de Dependentes
    Cadastros
    RPA.Windows.Click       Espécies de Dependentes
    RPA.Windows.Get Text    Cadastro de Espécies de Dependentes (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Espécies de Dependentes (1)    ${Caminho_Screenshots}Espécies de Dependentes
    Fechar janela
    RPA.Windows.Click       Sim

Entrada de Visitantes
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Entrada de Visitantes
    Cadastros
    RPA.Windows.Click       Entrada de Visitantes
    RPA.Windows.Get Text    Entrada de Visitantes (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Entrada de Visitantes (1)    ${Caminho_Screenshots}Entrada de Visitantes
    Fechar janela
    RPA.Windows.Click       Sim

Dependências
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Dependências
    Cadastros
    RPA.Windows.Click       Dependências
    RPA.Windows.Get Text    Cadastro de Dependências (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Dependências (1)    ${Caminho_Screenshots}Dependências
    Fechar janela
    RPA.Windows.Click       Sim

Finalidades
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Finalidades
    Cadastros
    RPA.Windows.Click       Finalidades
    RPA.Windows.Get Text    Cadastro de Finalidades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Finalidades (1)    ${Caminho_Screenshots}Finalidades
    Fechar janela
    RPA.Windows.Click       Sim
    
Atividades/Serviços
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Atividades_Serviços
    Cadastros
    RPA.Windows.Click       Atividades/Serviços
    RPA.Windows.Get Text    Cadastro de Atividades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Atividades (1)    ${Caminho_Screenshots}Atividades_Serviços
    Fechar janela
    RPA.Windows.Click       Sim

Perfil de acesso
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Perfil de acesso
    Cadastros
    RPA.Windows.Click       Perfil de acesso
    RPA.Windows.Get Text    Cadastro de perfil para permissão de acesso (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de perfil para permissão de acesso (1)    ${Caminho_Screenshots}Perfil de acesso
    Fechar janela
    RPA.Windows.Click       Sim

Novo Clubes > Origens de Venda
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Novo Clubes/             ERRO Origens de Venda
    Cadastros
    RPA.Windows.Click       Novo Clubes
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Cadastro de Origens de Venda (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Origens de Venda (1)    ${Caminho_Screenshots}Novo Clubes/Origens de Venda
    Fechar janela
    RPA.Windows.Click       Sim

Novo Clubes > Tarifas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Novo Clubes/             ERRO Tarifas
    Cadastros
    RPA.Windows.Click       Novo Clubes
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tarifas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tarifas (1)    ${Caminho_Screenshots}Novo Clubes/Tarifas
    Fechar janela
    RPA.Windows.Click       Sim

Novo Clubes > Regras de Acesso
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Novo Clubes/             ERRO Regras de Acesso
    Cadastros
    RPA.Windows.Click       Novo Clubes
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Cadastro de Regras de Acesso (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Regras de Acesso (1)    ${Caminho_Screenshots}Novo Clubes/Regras de Acesso
    Fechar janela
    RPA.Windows.Click       Sim

Novo Clubes > Locais de Acesso
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Novo Clubes/             ERRO Locais de Acesso
    Cadastros
    RPA.Windows.Click       Novo Clubes
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Cadastro de Locais de Acesso (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Locais de Acesso (1)    ${Caminho_Screenshots}Novo Clubes/Locais de Acesso
    Fechar janela
    RPA.Windows.Click       Sim

Novo Clubes > Campanhas e Cupons
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Novo Clubes/             ERRO Campanhas e Cupons
    Cadastros
    RPA.Windows.Click       Novo Clubes
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Campanhas e Cupons (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Campanhas e Cupons (1)    ${Caminho_Screenshots}Novo Clubes/Campanhas e Cupons
    Fechar janela
    RPA.Windows.Click       Sim

Novo Clubes > Produtos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Novo Clubes/             ERRO Produtos
    Cadastros
    RPA.Windows.Click       Novo Clubes
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Cadastro de Produtos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Produtos (1)   ${Caminho_Screenshots}Novo Clubes/Produtos
    Fechar janela
    RPA.Windows.Click       Sim

Novo Clubes > Ocorrências
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Novo Clubes/             ERRO Ocorrências
    Cadastros
    RPA.Windows.Click       Novo Clubes
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Cadastro de Ocorrências (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Ocorrências (1)    ${Caminho_Screenshots}Novo Clubes/Ocorrências
    Fechar janela
    RPA.Windows.Click       Sim

Novo Clubes > Títulos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Novo Clubes/             ERRO Títulos
    Cadastros
    RPA.Windows.Click       Novo Clubes
    RPA.Desktop.Press Keys  U
    RPA.Windows.Get Text    Manutenção de Títulos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Manutenção de Títulos (1)    ${Caminho_Screenshots}Novo Clubes/Títulos
    Fechar janela
    RPA.Windows.Click       Sim

Países
    [Teardown]                Caso aconteça erro                    ${Caminho_Screenshots}          ERRO Países
    Cadastros
    RPA.Windows.Click         Países
    RPA.Windows.Get Text      Cadastro de Países (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Países (1)    ${Caminho_Screenshots}Países
    Fechar janela
    RPA.Windows.Click       Sim

Estados
    [Teardown]                Caso aconteça erro                    ${Caminho_Screenshots}          ERRO Estados
    Cadastros
    RPA.Windows.Click         Estados
    RPA.Windows.Get Text      Cadastro de Estados (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Estados (1)    ${Caminho_Screenshots}Estados
    Fechar janela
    RPA.Windows.Click       Sim

Regiões
    [Teardown]                Caso aconteça erro                    ${Caminho_Screenshots}          ERRO Regiões
    Cadastros
    RPA.Windows.Click         Regiões
    RPA.Windows.Get Text      Cadastro de Regiões (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Regiões (1)    ${Caminho_Screenshots}Regiões
    Fechar janela
    RPA.Windows.Click       Sim

Municípios
    [Teardown]                Caso aconteça erro                    ${Caminho_Screenshots}          ERRO Municípios
    Cadastros
    RPA.Windows.Click         Municípios
    RPA.Windows.Get Text      Cadastro de Municípios (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
    Fechar janela
    RPA.Windows.Click       Sim

Localidades
    [Teardown]                Caso aconteça erro                    ${Caminho_Screenshots}          ERRO Localidades
    Cadastros
    RPA.Windows.Click         Localidades
    RPA.Windows.Get Text      Cadastro de Localidades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Localidades (1)    ${Caminho_Screenshots}Localidades
    Fechar janela
    RPA.Windows.Click       Sim

Financeiro > Planos de Contas
    [Teardown]              Caso aconteça erro                 ${Caminho_Screenshots}Financeiro/                    ERRO Planos de Contas
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Cadastro do Plano de Contas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro do Plano de Contas (1)    ${Caminho_Screenshots}Financeiro/Planos de Contas
    Fechar janela
    RPA.Windows.Click       Sim

Financeiro > Centro de Custos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Financeiro/                      ERRO Centro de Custos
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Centros de Custos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Centros de Custos (1)    ${Caminho_Screenshots}Financeiro/Centro de Custos
    Fechar janela
    RPA.Windows.Click       Sim

Financeiro > Portadores
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Financeiro/         ERRO Portadores
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Cadastro de Portadores (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Portadores (1)    ${Caminho_Screenshots}Financeiro/Portadores
    Fechar janela
    RPA.Windows.Click       Sim

Financeiro > Tipos de Cobrança
    [Teardown]              Caso aconteça erro                   ${Caminho_Screenshots}Financeiro/                     ERRO Tipos de Cobrança
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tipos de Cobrança (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Tipos de Cobrança (1)    ${Caminho_Screenshots}Financeiro/Tipos de Cobrança
    Fechar janela
    RPA.Windows.Click       Sim

Financeiro > Tipos de Documento
    [Teardown]              Caso aconteça erro                     ${Caminho_Screenshots}Financeiro/                       ERRO Tipos de Documentos
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Cadastro de Tipos de Documentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Tipos de Documentos (1)    ${Caminho_Screenshots}Financeiro/Tipos de Documentos
    Fechar janela
    RPA.Windows.Click       Sim


Financeiro > Formas de Pagamento
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Financeiro/         ERRO Formas de Pagamento
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Formas de Pagamento (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Formas de Pagamento (1)    ${Caminho_Screenshots}Financeiro/Formas de Pagamento
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Empresas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                        ERRO Empresas
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Estabelecimentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                        ERRO Estabelecimentos
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Usuários
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                        ERRO Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    U
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Grupo de Usuários
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                        ERRO Grupo de Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupo de Usuários
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Configurações da Estação
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                        ERRO Configurações da Estação
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    BaseDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações da Estação
    Fechar janela

Encerrar
    Encerrar tudo