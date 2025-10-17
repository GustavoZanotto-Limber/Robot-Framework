*** Settings ***
Documentation    Smoke Test: Estoque
Resource         ../../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Estoque/Cadastros/    
${nome_print}
${nome_exe}=    cde_win_est
*** Keywords ***


*** Test Cases ***

Terceiros
    ${nome_print}=     Set Variable     Terceiros
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Get Text    Cadastro de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Terceiros (1)    ${Caminho_Screenshots}Terceiros
    RPA.Windows.Click       Cancelar (F3)
    Fechar com Sim

Grupo de Terceiros
    ${nome_print}=     Set Variable     Grupo de Terceiros
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Grupo de Terceiros
    RPA.Windows.Get Text    Cadastro de Grupo de Terceiros (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Grupo de Terceiros (1)    ${Caminho_Screenshots}Grupo de Terceiros
    Fechar com Sim

Setores
    ${nome_print}=     Set Variable     Setores
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Setores
    RPA.Windows.Get Text    Cadastro de Setores (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Setores (1)    ${Caminho_Screenshots}Setores
    Fechar com Sim

Safras
    ${nome_print}=     Set Variable     Safras
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Safras
    RPA.Windows.Get Text    Cadastro de Safras (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Safras (1)    ${Caminho_Screenshots}Safras
    Fechar Janela

Produtos > Produtos
    ${nome_print}=     Set Variable     Produtos
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Cadastro de Itens (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Itens (1)    ${Caminho_Screenshots}Produtos/Produtos
    Fechar com Sim

Produtos > Depósitos
    ${nome_print}=     Set Variable     Depósitos
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Cadastro de Depósitos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Depósitos (1)    ${Caminho_Screenshots}Produtos/Depósitos
    Fechar com Sim

Produtos > Unidades
    ${nome_print}=     Set Variable     Unidades
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  U
    RPA.Windows.Get Text    Cadastro de Unidades (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Unidades (1)    ${Caminho_Screenshots}Produtos/Unidades
    Fechar com Sim

Produtos > Marcas
    ${nome_print}=     Set Variable     Marcas
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Cadastro de Marcas (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Marcas (1)    ${Caminho_Screenshots}Produtos/Marcas
    Fechar com Sim

Produtos > Cores
    ${nome_print}=     Set Variable     Cores
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Cores (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Cores (1)    ${Caminho_Screenshots}Produtos/Cores
    Fechar com Sim

Produtos > Tamanhos
    ${nome_print}=     Set Variable     Tamanhos
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tamanhos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Tamanhos (1)    ${Caminho_Screenshots}Produtos/Tamanhos
    Fechar com Sim

Produtos > Estampas
    ${nome_print}=     Set Variable     Estampas
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Cadastro de Estampas (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Estampas (1)    ${Caminho_Screenshots}Produtos/Estampas
    Fechar com Sim

Produtos > Categorias
    ${nome_print}=     Set Variable     Categorias
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Produtos
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Cadastro de Categorias de Produtos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Categorias de Produtos (1)    ${Caminho_Screenshots}Produtos/Categorias
    Fechar com Sim

Veículos > Veículos
    ${nome_print}=     Set Variable     Veículos
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Veículos
    RPA.Desktop.Press Keys  V
    RPA.Windows.Get Text    Cadastro de Veículos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Veículos (1)    ${Caminho_Screenshots}Veículos/Veículos
    Fechar Janela

Veículos > Tipos de Veículos
    ${nome_print}=     Set Variable     Tipos de Veículos
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Veículos
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tipos de Veículos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Tipos de Veículos (1)    ${Caminho_Screenshots}Veículos/Tipos de Veículos
    Fechar com Sim

Tipo Movimentação
    ${nome_print}=     Set Variable     Tipo Movimentação
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Tipo Movimentação
    RPA.Windows.Get Text    Cadastro de Tipos de Movimentação (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Tipos de Movimentação (1)    ${Caminho_Screenshots}Tipo Movimentação
    Fechar com Sim

Categoria de Lote
    ${nome_print}=     Set Variable     Categoria de Lote
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Categoria de Lote
    RPA.Windows.Get Text    Cadastro de Categoria de Lote (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Categoria de Lote (1)    ${Caminho_Screenshots}Categoria de Lote
    Fechar com Sim

Tipo de Teste Lotes
    ${nome_print}=     Set Variable     Tipo De Teste Lotes
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    repetidor de teclas     down    8
    RPA.Desktop.Press Keys  ENTER
    RPA.Windows.Get Text    Cadastro de Tipos de Testes para Lotes (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Tipos de Testes para Lotes (1)    ${Caminho_Screenshots}Tipo de Teste Lotes
    Fechar com Sim

Países
    ${nome_print}=     Set Variable     Países
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Países
    RPA.Windows.Get Text      Cadastro de Países (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Países (1)    ${Caminho_Screenshots}Países
    Fechar com Sim

Municípios
    ${nome_print}=     Set Variable     Municípios
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Municípios
    RPA.Windows.Get Text      Cadastro de Municípios (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
    Fechar com Sim

Estados
    ${nome_print}=     Set Variable     Estados
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Estados
    RPA.Windows.Get Text      Cadastro de Estados (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Estados (1)    ${Caminho_Screenshots}Estados
    Fechar com Sim

Localidades
    ${nome_print}=     Set Variable     Localidades
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Localidades
    RPA.Windows.Get Text      Cadastro de Localidades (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Localidades (1)    ${Caminho_Screenshots}Localidades
    Fechar com Sim

Regiões
    ${nome_print}=     Set Variable     Regiões
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Regiões
    RPA.Windows.Get Text      Cadastro de Regiões (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Regiões (1)    ${Caminho_Screenshots}Regiões
    Fechar com Sim

Fiscais > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscais
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributária (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Tabelas Tributária (1)    ${Caminho_Screenshots}Fiscais/Tabela Tributária
    Fechar com Sim

Fiscais > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscais
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situações Tributárias do ICMS (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Situações Tributárias do ICMS (1)    ${Caminho_Screenshots}Fiscais/Situação Tributária
    Fechar com Sim

Fiscais > Operações Fiscais
    ${nome_print}=     Set Variable     Operações Fiscais
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscais
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Cadastro de Operações Fiscais (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Operações Fiscais (1)    ${Caminho_Screenshots}Fiscais/Operações Fiscais
    Fechar com Sim

Fiscais > Classificações Fiscais
    ${nome_print}=     Set Variable     Classificações Fiscais
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscais
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Classificações Fiscais (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Classificações Fiscais (1)    ${Caminho_Screenshots}Fiscais/Classificações Fiscais
    Fechar com Sim

Fiscais > Classificações de Serviços Prestado - REINF
    ${nome_print}=     Set Variable     Classificações de Serviços Prestado - REINF    
    [Tags]     Estoque    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscais
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Classificações de Serviços Prestados - REINF (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Classificações de Serviços Prestados - REINF (1)    ${Caminho_Screenshots}Fiscais/Classificações de Serviços Prestado - REINF
    RPA.Windows.Click         OK
    Fechar janela

Parâmetros > Empresas
    ${nome_print}=     Set Variable     Empresas
    [Tags]     Estoque    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Estabelecimentos
    ${nome_print}=     Set Variable     Estabelecimentos
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Usuários
    ${nome_print}=     Set Variable     Usuários
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    U
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    BaseKeywordsDesktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela

Parâmetros > Grupo de Usuários
    ${nome_print}=     Set Variable     Grupo de Usuários
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupo de Usuários
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Configurações da Estação
    ${nome_print}=     Set Variable     Configurações da Estação
    [Tags]     Estoque    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    BaseKeywordsDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações da Estação
    Fechar janela