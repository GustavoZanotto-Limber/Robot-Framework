*** Settings ***
Documentation    Smoke Test: Estoque
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_est


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Estoque/Cadastros/    

*** Keywords ***


*** Test Cases ***

Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Terceiros
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Get Text    Cadastro de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Terceiros (1)    ${Caminho_Screenshots}Terceiros
    RPA.Windows.Click       Cancelar (F3)
    Fechar janela
    RPA.Windows.Click       Sim

Grupo de Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Grupo de Terceiros
    Cadastros
    RPA.Windows.Click       Grupo de Terceiros
    RPA.Windows.Get Text    Cadastro de Grupo de Terceiros (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Grupo de Terceiros (1)    ${Caminho_Screenshots}Grupo de Terceiros
    Fechar Janela
    RPA.Windows.Click       Sim

Setores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Setores
    Cadastros
    RPA.Windows.Click       Setores
    RPA.Windows.Get Text    Cadastro de Setores (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Setores (1)    ${Caminho_Screenshots}Setores
    Fechar Janela
    RPA.Windows.Click       Sim

Safras
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Safras
    Cadastros
    RPA.Windows.Click       Safras
    RPA.Windows.Get Text    Cadastro de Safras (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Safras (1)    ${Caminho_Screenshots}Safras
    Fechar Janela

Produtos > Produtos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Produtos/              Produtos
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Cadastro de Itens (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Itens (1)    ${Caminho_Screenshots}Produtos/Produtos
    Fechar Janela
    RPA.Windows.Click       Sim

Produtos > Depósitos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Produtos/              Depósitos
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Cadastro de Depósitos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Depósitos (1)    ${Caminho_Screenshots}Produtos/Depósitos
    Fechar Janela
    RPA.Windows.Click       Sim

Produtos > Unidades
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Produtos/              Unidades
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  U
    RPA.Windows.Get Text    Cadastro de Unidades (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Unidades (1)    ${Caminho_Screenshots}Produtos/Unidades
    Fechar Janela
    RPA.Windows.Click       Sim

Produtos > Marcas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Produtos/              Marcas
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Cadastro de Marcas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Marcas (1)    ${Caminho_Screenshots}Produtos/Marcas
    Fechar Janela
    RPA.Windows.Click       Sim

Produtos > Cores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Produtos/              Cores
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Cores (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Cores (1)    ${Caminho_Screenshots}Produtos/Cores
    Fechar Janela
    RPA.Windows.Click       Sim

Produtos > Tamanhos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Produtos/              Tamanhos
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tamanhos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Tamanhos (1)    ${Caminho_Screenshots}Produtos/Tamanhos
    Fechar Janela
    RPA.Windows.Click       Sim

Produtos > Estampas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Produtos/              Estampas
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Cadastro de Estampas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Estampas (1)    ${Caminho_Screenshots}Produtos/Estampas
    Fechar Janela
    RPA.Windows.Click       Sim

Produtos > Categorias
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Produtos/              Categorias
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Cadastro de Categorias de Produtos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Categorias de Produtos (1)    ${Caminho_Screenshots}Produtos/Categorias
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

Tipo Movimentação
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Tipo Movimentação
    Cadastros
    RPA.Windows.Click       Tipo Movimentação
    RPA.Windows.Get Text    Cadastro de Tipos de Movimentação (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Movimentação (1)    ${Caminho_Screenshots}Tipo Movimentação
    Fechar Janela
    RPA.Windows.Click       Sim

Categoria de Lote
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Categoria de Lote
    Cadastros
    RPA.Windows.Click       Categoria de Lote
    RPA.Windows.Get Text    Cadastro de Categoria de Lote (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Categoria de Lote (1)    ${Caminho_Screenshots}Categoria de Lote
    Fechar Janela
    RPA.Windows.Click       Sim

Tipo de Teste Lotes
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Tipo De Teste Lotes
    Cadastros
    repetidor de teclas     down    9
    RPA.Desktop.Press Keys  ENTER
    RPA.Windows.Get Text    Cadastro de Tipos de Testes para Lotes (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Testes para Lotes (1)    ${Caminho_Screenshots}Tipo de Teste Lotes
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

Municípios
    [Teardown]                Caso aconteça erro                    ${Caminho_Screenshots}           Municípios
    Cadastros
    RPA.Windows.Click         Municípios
    RPA.Windows.Get Text      Cadastro de Municípios (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
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

Localidades
    [Teardown]                Caso aconteça erro                    ${Caminho_Screenshots}           Localidades
    Cadastros
    RPA.Windows.Click         Localidades
    RPA.Windows.Get Text      Cadastro de Localidades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Localidades (1)    ${Caminho_Screenshots}Localidades
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

Fiscais > Tabela Tributária
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscais/           Tabela Tributária
    Cadastros
    RPA.Windows.Click         Fiscais
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributária (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tabelas Tributária (1)    ${Caminho_Screenshots}Fiscais/Tabela Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscais > Situação Tributária
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscais/           Situação Tributária
    Cadastros
    RPA.Windows.Click         Fiscais
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situações Tributárias do ICMS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Situações Tributárias do ICMS (1)    ${Caminho_Screenshots}Fiscais/Situação Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscais > Operações Fiscais
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscais/           Operações Fiscais
    Cadastros
    RPA.Windows.Click         Fiscais
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Cadastro de Operações Fiscais (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Operações Fiscais (1)    ${Caminho_Screenshots}Fiscais/Operações Fiscais
    Fechar janela
    RPA.Windows.Click       Sim


Fiscais > Classificações Fiscais
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscais/           Classificações Fiscais
    Cadastros
    RPA.Windows.Click         Fiscais
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Classificações Fiscais (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Classificações Fiscais (1)    ${Caminho_Screenshots}Fiscais/Classificações Fiscais
    Fechar janela
    RPA.Windows.Click       Sim

Fiscais > Classificações de Serviços Prestado - REINF
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscais/           Classificações de Serviços Prestado - REINF
    Cadastros
    RPA.Windows.Click         Fiscais
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Classificações de Serviços Prestado - REINF (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Classificações de Serviços Prestado - REINF (1)    ${Caminho_Screenshots}Fiscais/Classificações de Serviços Prestado - REINF
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Empresas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                         Empresas
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Estabelecimentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                         Estabelecimentos
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Usuários
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                         Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    U
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    BaseDesktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela

Parâmetros > Grupo de Usuários
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                         Grupo de Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupo de Usuários
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Configurações da Estação
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                         Configurações da Estação
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    BaseDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações da Estação
    Fechar janela

Encerrar  
    Encerrar tudo