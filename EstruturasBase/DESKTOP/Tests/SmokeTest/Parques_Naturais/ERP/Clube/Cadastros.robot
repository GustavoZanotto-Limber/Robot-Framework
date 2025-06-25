*** Settings ***
Documentation    Smoke Test: Clube
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup         Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteça erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Clube/Cadastros/    
${nome_print}
${nome_exe}=    cde_win_clube

*** Keywords ***

*** Test Cases ***

Sócios/Dependentes
    ${nome_print}=     Set Variable     Sócios_Dependentes
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Sócios/Dependentes
    RPA.Windows.Get Text    Cadastro de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Terceiros (1)   ${Caminho_Screenshots}Sócios_Dependentes
    RPA.Windows.Click       Cancelar (F3)
    Fechar com Sim

Categorias de Terceiros
    ${nome_print}=     Set Variable     Categorias de Terceiros
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Categorias de Terceiros
    RPA.Windows.Get Text    Cadastro de Categorias de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Categorias de Terceiros (1)    ${Caminho_Screenshots}Categorias de Terceiros
    Fechar com Sim

Grupos de Terceiros
    ${nome_print}=     Set Variable     Grupos de Terceiros
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Grupos de Terceiros
    RPA.Windows.Get Text    Cadastro de Grupos Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Grupos Terceiros (1)    ${Caminho_Screenshots}Grupos de Terceiros
    Fechar com Sim

Espécies de Dependentes
    ${nome_print}=     Set Variable     Espécies de Dependentes
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Espécies de Dependentes
    RPA.Windows.Get Text    Cadastro de Espécies de Dependentes (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Espécies de Dependentes (1)    ${Caminho_Screenshots}Espécies de Dependentes
    Fechar com Sim

Entrada de Visitantes
    ${nome_print}=     Set Variable     Entrada de Visitantes
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Entrada de Visitantes
    RPA.Windows.Get Text    Entrada de Visitantes (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Entrada de Visitantes (1)    ${Caminho_Screenshots}Entrada de Visitantes
    Fechar com Sim

Dependências
    ${nome_print}=     Set Variable     Dependências
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Dependências
    RPA.Windows.Get Text    Cadastro de Dependências (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Dependências (1)    ${Caminho_Screenshots}Dependências
    Fechar com Sim

Finalidades
    ${nome_print}=     Set Variable     Finalidades
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Finalidades
    RPA.Windows.Get Text    Cadastro de Finalidades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Finalidades (1)    ${Caminho_Screenshots}Finalidades
    Fechar com Sim
    
Atividades/Serviços
    ${nome_print}=     Set Variable     Atividades_Serviços
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Atividades/Serviços
    RPA.Windows.Get Text    Cadastro de Atividades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Atividades (1)    ${Caminho_Screenshots}Atividades_Serviços
    Fechar com Sim

Perfil de acesso
    ${nome_print}=     Set Variable     Perfil de acesso
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Perfil de acesso
    RPA.Windows.Get Text    Cadastro de perfil para permissão de acesso (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de perfil para permissão de acesso (1)    ${Caminho_Screenshots}Perfil de acesso
    Fechar com Sim

Origens de Venda
    ${nome_print}=     Set Variable     Origens de Venda
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Novo Clubes
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Cadastro de Origens de Venda (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Origens de Venda (1)    ${Caminho_Screenshots}Novo Clubes/Origens de Venda
    Fechar com Sim

Tarifas
    ${nome_print}=     Set Variable     Tarifas
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Novo Clubes
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tarifas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tarifas (1)    ${Caminho_Screenshots}Novo Clubes/Tarifas
    Fechar com Sim

Regras de Acesso
    ${nome_print}=     Set Variable     Regras de Acesso
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Novo Clubes
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Cadastro de Regras de Acesso (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Regras de Acesso (1)    ${Caminho_Screenshots}Novo Clubes/Regras de Acesso
    Fechar com Sim

Locais de Acesso
    ${nome_print}=     Set Variable     Locais de Acesso
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Novo Clubes
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Cadastro de Locais de Acesso (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Locais de Acesso (1)    ${Caminho_Screenshots}Novo Clubes/Locais de Acesso
    Fechar com Sim

Campanhas e Cupons
    ${nome_print}=     Set Variable     Campanhas e Cupons
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Novo Clubes
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Campanhas e Cupons (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Campanhas e Cupons (1)    ${Caminho_Screenshots}Novo Clubes/Campanhas e Cupons
    Fechar com Sim

Produtos
    ${nome_print}=     Set Variable     Produtos
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Novo Clubes
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Cadastro de Produtos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Produtos (1)   ${Caminho_Screenshots}Novo Clubes/Produtos
    Fechar com Sim

Ocorrências
    ${nome_print}=     Set Variable     Ocorrências
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Novo Clubes
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Cadastro de Ocorrências (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Ocorrências (1)    ${Caminho_Screenshots}Novo Clubes/Ocorrências
    Fechar com Sim

Títulos
    ${nome_print}=     Set Variable     Títulos
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Novo Clubes
    RPA.Desktop.Press Keys  U
    RPA.Windows.Get Text    Manutenção de Títulos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Manutenção de Títulos (1)    ${Caminho_Screenshots}Novo Clubes/Títulos
    Fechar com Sim

Países
    ${nome_print}=     Set Variable     Países
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Países
    RPA.Windows.Get Text      Cadastro de Países (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Países (1)    ${Caminho_Screenshots}Países
    Fechar com Sim

Estados
    ${nome_print}=     Set Variable     Estados
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Estados
    RPA.Windows.Get Text      Cadastro de Estados (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Estados (1)    ${Caminho_Screenshots}Estados
    Fechar com Sim

Regiões
    ${nome_print}=     Set Variable     Regiões
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Regiões
    RPA.Windows.Get Text      Cadastro de Regiões (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Regiões (1)    ${Caminho_Screenshots}Regiões
    Fechar com Sim

Municípios
    ${nome_print}=     Set Variable     Municípios
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Municípios
    RPA.Windows.Get Text      Cadastro de Municípios (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
    Fechar com Sim

Localidades
    ${nome_print}=     Set Variable     Localidades
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Localidades
    RPA.Windows.Get Text      Cadastro de Localidades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Localidades (1)    ${Caminho_Screenshots}Localidades
    Fechar com Sim

Planos de Contas
    ${nome_print}=     Set Variable     Planos de Contas
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Cadastro do Plano de Contas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro do Plano de Contas (1)    ${Caminho_Screenshots}Financeiro/Planos de Contas
    Fechar com Sim

Centro de Custos
    ${nome_print}=     Set Variable     Centro de Custos
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Centros de Custos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Centros de Custos (1)    ${Caminho_Screenshots}Financeiro/Centro de Custos
    Fechar com Sim

Portadores
    ${nome_print}=     Set Variable     Portadores
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Cadastro de Portadores (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Portadores (1)    ${Caminho_Screenshots}Financeiro/Portadores
    Fechar com Sim

Tipos de Cobrança
    ${nome_print}=     Set Variable     Tipos de Cobrança
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tipos de Cobrança (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Tipos de Cobrança (1)    ${Caminho_Screenshots}Financeiro/Tipos de Cobrança
    Fechar com Sim

Tipos de Documento
    ${nome_print}=     Set Variable     Tipos de Documentos
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Cadastro de Tipos de Documentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Tipos de Documentos (1)    ${Caminho_Screenshots}Financeiro/Tipos de Documentos
    Fechar com Sim

Formas de Pagamento
    ${nome_print}=     Set Variable     Formas de Pagamento
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Formas de Pagamento (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Formas de Pagamento (1)    ${Caminho_Screenshots}Financeiro/Formas de Pagamento
    Fechar com Sim

Empresas
    ${nome_print}=     Set Variable     Empresas
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar com Sim

Estabelecimentos
    ${nome_print}=     Set Variable     Estabelecimentos
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar com Sim

Usuários
    ${nome_print}=     Set Variable     Usuários
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    U
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar com Sim

Grupo de Usuários
    ${nome_print}=     Set Variable     Grupo de Usuários
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupo de Usuários
    Fechar com Sim

Configurações da Estação
    ${nome_print}=     Set Variable     Configurações da Estação
    [Tags]     Clube    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    BaseDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações da Estação
    Fechar janela