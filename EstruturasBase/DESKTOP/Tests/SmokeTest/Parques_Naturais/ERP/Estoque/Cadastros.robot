*** Settings ***
Documentation    Smoke Test: Estoque
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_est


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Estoque/Cadastros/    

*** Keywords ***


*** Test Cases ***

Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Terceiros
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Get Text    Cadastro de Terceiros (1)
    BaseDesktop.Screenshot  Cadastro de Terceiros (1)    ${Caminho_Screenshots}Terceiros
    Fechar janela

Grupo de Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Grupo de Terceiros
    Cadastros
    RPA.Windows.Click       Grupo de Terceiros
    RPA.Windows.Get Text    Cadastro de Grupo de Terceiros (1)
    BaseDesktop.Screenshot  Cadastro de Grupo de Terceiros (1)    ${Caminho_Screenshots}Grupo de Terceiros
    Fechar Janela

Setores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Setores
    Cadastros
    RPA.Windows.Click       Setores
    RPA.Windows.Get Text    Cadastro de Setores (1)
    BaseDesktop.Screenshot  Cadastro de Setores (1)    ${Caminho_Screenshots}Setores
    Fechar Janela

Safras
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Safras
    Cadastros
    RPA.Windows.Click       Safras
    RPA.Windows.Get Text    Cadastro de Safras (1)
    BaseDesktop.Screenshot  Cadastro de Safras (1)    ${Caminho_Screenshots}Safras
    Fechar Janela


Produtos > Produtos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Produtos/             ERRO Produtos
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Cadastro de Itens (1)
    BaseDesktop.Screenshot  Cadastro de Itens (1)    ${Caminho_Screenshots}Produtos/Produtos
    Fechar Janela

Produtos > Depósitos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Produtos/             ERRO Depósitos
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Cadastro de Depósitos (1)
    BaseDesktop.Screenshot  Cadastro de Depósitos (1)    ${Caminho_Screenshots}Produtos/Depósitos
    Fechar Janela

Produtos > Unidades
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Produtos/             ERRO Unidades
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  U
    RPA.Windows.Get Text    Cadastro de Unidades (1)
    BaseDesktop.Screenshot  Cadastro de Unidades (1)    ${Caminho_Screenshots}Produtos/Unidades
    Fechar Janela

Produtos > Marcas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Produtos/             ERRO Marcas
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Cadastro de Marcas (1)
    BaseDesktop.Screenshot  Cadastro de Marcas (1)    ${Caminho_Screenshots}Produtos/Marcas
    Fechar Janela

Produtos > Cores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Produtos/             ERRO Cores
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Cores (1)
    BaseDesktop.Screenshot  Cadastro de Cores (1)    ${Caminho_Screenshots}Produtos/Cores
    Fechar Janela

Produtos > Tamanhos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Produtos/             ERRO Tamanhos
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tamanhos (1)
    BaseDesktop.Screenshot  Cadastro de Tamanhos (1)    ${Caminho_Screenshots}Produtos/Tamanhos
    Fechar Janela

Produtos > Estampas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Produtos/             ERRO Estampas
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Cadastro de Estampas (1)
    BaseDesktop.Screenshot  Cadastro de Estampas (1)    ${Caminho_Screenshots}Produtos/Estampas
    Fechar Janela

Produtos > Categorias
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Produtos/             ERRO Categorias
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Cadastro de Categorias de Produtos (1)
    BaseDesktop.Screenshot  Cadastro de Categorias de Produtos (1)    ${Caminho_Screenshots}Produtos/Categorias
    Fechar Janela

Veículos > Veículos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Veículos/             ERRO Veículos
    Cadastros
    RPA.Windows.Click       Veículos
    RPA.Desktop.Press Keys  V
    RPA.Windows.Get Text    Cadastro de Veículos (1)
    BaseDesktop.Screenshot  Cadastro de Veículos (1)    ${Caminho_Screenshots}Veículos/Veículos
    Fechar Janela

Veículos > Tipos de Veículos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Veículos/             ERRO Tipos de Veículos
    Cadastros
    RPA.Windows.Click       Veículos
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tipos de Veículos (1)
    BaseDesktop.Screenshot  Cadastro de Tipos de Veículos (1)    ${Caminho_Screenshots}Veículos/Tipos de Veículos
    Fechar Janela

Tipo Movimentação
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Tipo Movimentação
    Cadastros
    RPA.Windows.Click       Tipo Movimentação
    RPA.Windows.Get Text    Cadastro de Tipos de Movimentação (1)
    BaseDesktop.Screenshot  Cadastro de Tipos de Movimentação (1)    ${Caminho_Screenshots}Tipo Movimentação
    Fechar Janela

Categoria de Lote
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Categoria de Lote
    Cadastros
    RPA.Windows.Click       Categoria de Lote
    RPA.Windows.Get Text    Cadastro de Categoria de Lote (1)
    BaseDesktop.Screenshot  Cadastro de Categoria de Lote (1)    ${Caminho_Screenshots}Categoria de Lote
    Fechar Janela

Tipo de Teste Lotes
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Tipo De Teste Lotes
    Cadastros
    repetidor de teclas     down    9
    RPA.Desktop.Press Keys  ENTER
    RPA.Windows.Get Text    Cadastro de Tipos de Testes para Lotes (1)
    BaseDesktop.Screenshot  Cadastro de Tipos de Testes para Lotes (1)    ${Caminho_Screenshots}Tipo de Teste Lotes
    Fechar Janela

Países
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Países
    Cadastros
    RPA.Windows.Click         Países
    RPA.Windows.Get Text      Cadastro de Países (1)
    BaseDesktop.Screenshot                  Cadastro de Países (1)    ${Caminho_Screenshots}Países
    Fechar janela

Estados
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Estados
    Cadastros
    RPA.Windows.Click         Estados
    RPA.Windows.Get Text      Cadastro de Estados (1)
    BaseDesktop.Screenshot                  Cadastro de Estados (1)    ${Caminho_Screenshots}Estados
    Fechar janela

Regiões
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Regiões
    Cadastros
    RPA.Windows.Click         Regiões
    RPA.Windows.Get Text      Cadastro de Regiões (1)
    BaseDesktop.Screenshot                  Cadastro de Regiões (1)    ${Caminho_Screenshots}Regiões
    Fechar janela

Municípios
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Municípios
    Cadastros
    RPA.Windows.Click         Municípios
    RPA.Windows.Get Text      Cadastro de Municípios (1)
    BaseDesktop.Screenshot                  Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
    Fechar janela

Localidades
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Localidades
    Cadastros
    RPA.Windows.Click         Localidades
    RPA.Windows.Get Text      Cadastro de Localidades (1)
    BaseDesktop.Screenshot                  Cadastro de Localidades (1)    ${Caminho_Screenshots}Localidades
    Fechar janela

Fiscais > Tabela Tributária
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscais/          ERRO Tabela Tributária
    Cadastros
    RPA.Windows.Click         Fiscais
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributária (1)
    BaseDesktop.Screenshot    Cadastro de Tabelas Tributária (1)    ${Caminho_Screenshots}Fiscais/Tabela Tributária
    Fechar janela

Fiscais > Situação Tributária
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscais/          ERRO Situação Tributária
    Cadastros
    RPA.Windows.Click         Fiscais
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situações Tributárias do ICMS (1)
    BaseDesktop.Screenshot    Cadastro de Situações Tributárias do ICMS (1)    ${Caminho_Screenshots}Fiscais/Situação Tributária
    Fechar janela

Fiscais > Operações Fiscais
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscais/          ERRO Operações Fiscais
    Cadastros
    RPA.Windows.Click         Fiscais
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Cadastro de Operações Fiscais (1)
    BaseDesktop.Screenshot    Cadastro de Operações Fiscais (1)    ${Caminho_Screenshots}Fiscais/Operações Fiscais
    Fechar janela


Fiscais > Classificações Fiscais
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscais/          ERRO Classificações Fiscais
    Cadastros
    RPA.Windows.Click         Fiscais
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Classificações Fiscais (1)
    BaseDesktop.Screenshot    Cadastro de Classificações Fiscais (1)    ${Caminho_Screenshots}Fiscais/Classificações Fiscais
    Fechar janela

Fiscais > Classificações de Serviços Prestado - REINF
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscais/          ERRO Classificações de Serviços Prestado - REINF
    Cadastros
    RPA.Windows.Click         Fiscais
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Classificações de Serviços Prestado - REINF (1)
    BaseDesktop.Screenshot    Classificações de Serviços Prestado - REINF (1)    ${Caminho_Screenshots}Fiscais/Classificações de Serviços Prestado - REINF
    Fechar janela


Parâmetros > Empresas
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/          ERRO Empresas
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    BaseDesktop.Screenshot                  Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar janela

Parâmetros > Estabelecimentos
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/          ERRO Estabelecimentos
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    BaseDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar janela

Parâmetros > Usuários
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/          ERRO Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    u
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    BaseDesktop.Screenshot                  Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela

Parâmetros > Grupos Usuários
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/          ERRO Grupos Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    BaseDesktop.Screenshot                  Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupos Usuários
    Fechar janela

Parâmetros > Configurações de Estação
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/          ERRO Configurações de Estação
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configurações da Estação (1)
    BaseDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações de Estação
    Fechar janela

Encerrar  
    Encerrar tudo