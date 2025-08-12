*** Settings ***
Documentation    Smoke Test: Vendas
Resource         ../../../../../Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Vendas/Cadastros/    
${nome_print}
${nome_exe}=    cde_win_ven
*** Keywords ***


*** Test Cases ***

Terceiros > Cadastro de Terceiros
    ${nome_print}=     Set Variable     Cadastro de Terceiros
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Terceiros
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Terceiros (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Terceiros (1)    ${Caminho_Screenshots}Terceiros/Cadastro de Terceiros
    RPA.Windows.Click         Cancelar (F3)
    Fechar janela
    RPA.Windows.Click         Sim

Terceiros > Limite de Crédito
    ${nome_print}=     Set Variable     Limite de Crédito
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Cadastro de Limite de Crédito (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Cadastro de Limite de Crédito (1)    ${Caminho_Screenshots}Terceiros/Limite de Crédito
    RPA.Windows.Click       Confirmar
    Fechar janela

Terceiros > Tipos de Garantia
    ${nome_print}=     Set Variable     Tipos de Garantia
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tipos de Garantia (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Garantia (1)    ${Caminho_Screenshots}Terceiros/Tipos de Garantia
    Fechar com Sim

Terceiros > Categorias de Terceiros
    ${nome_print}=     Set Variable     Categorias de Terceiros
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Cadastro de Categorias de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Categorias de Terceiros (1)    ${Caminho_Screenshots}Categorias de Terceiros
    Fechar com Sim

Terceiros > Grupo de Terceiros
    ${nome_print}=     Set Variable     Grupo de Terceiros
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  G
    RPA.Windows.Get Text    Cadastro de Grupo de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Grupo de Terceiros (1)    ${Caminho_Screenshots}Grupos de Terceiros
    Fechar com Sim

Terceiros > Grupo de Terceiros Fidelizados
    ${nome_print}=     Set Variable     Grupo de Terceiros Fidelizados
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Grupo de Terceiros Fidelizados (1)
    RPA.Windows.Click      Carregar
    BaseDesktop.Screenshot  Grupo de Terceiros Fidelizados (1)    ${Caminho_Screenshots}Terceiros/Grupo de Terceiros Fidelizados
    Fechar com Sim

Terceiros > Contatos > Registros de Contatos
    ${nome_print}=     Set Variable     Registros de Contatos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Windows.Click       Registros de Contatos
    RPA.Windows.Get Text    Registro de Contato (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Registro de Contato (1)    ${Caminho_Screenshots}Terceiros/Contatos/Registros de Contatos
    RPA.Windows.Click       Fechar
    RPA.Windows.Click       Sim

Terceiros > Contatos > Tipo de Histórico de Contatos
    ${nome_print}=     Set Variable     Tipo de Histórico de Contatos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Windows.Click       Tipo de Histórico de Contatos
    RPA.Windows.Get Text    Cadastro de tipo de Histórico de Contatos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de tipo de Histórico de Contatos (1)    ${Caminho_Screenshots}Terceiros/Contatos/Tipo de Histórico de Contatos
    Fechar com Sim

Terceiros > Contatos > Atividades de Contatos
    ${nome_print}=     Set Variable     Atividades de Contatos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Windows.Click       Atividades de Contatos
    RPA.Windows.Get Text    Cadastro de Atividades de Contatos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Atividades de Contatos (1)    ${Caminho_Screenshots}Terceiros/Contatos/Atividades de Contatos
    Fechar com Sim

Terceiros > Contatos > Consulta de contatos realizados
    ${nome_print}=     Set Variable     Consulta de contatos realizados
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Windows.Click       Consulta de contatos realizados
    RPA.Windows.Get Text    Consulta de Contatos Realizados (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Contatos Realizados (1)    ${Caminho_Screenshots}Terceiros/Contatos/Consulta de contatos realizados
    Fechar janela

Terceiros > Troca de Vendedor
    ${nome_print}=     Set Variable     Troca de Vendedor
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Troca de Vendedor (1)
    RPA.Windows.Click      Carregar
    BaseDesktop.Screenshot  Troca de Vendedor (1)    ${Caminho_Screenshots}Terceiros/Troca de Vendedor
    Fechar Janela

Terceiros > Cadastro Categoria SICOR (PRONAF)
    ${nome_print}=     Set Variable     Cadastro Categoria SICOR (PRONAF)
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Cadastro de Categoria SICOR (PRONAF) (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Categoria SICOR (PRONAF) (1)    ${Caminho_Screenshots}Terceiros/Cadastro Categoria SICOR (PRONAF)
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar

Terceiros > Aprovação/Rejeição atualização Cadastral Força de Vendas
    ${nome_print}=     Set Variable     Aprovação/Rejeição atualização Cadastral Força de Vendas
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Atualização Cadastral (1)
    RPA.Windows.Click      Carregar
    BaseDesktop.Screenshot  Atualização Cadastral (1)    ${Caminho_Screenshots}Terceiros/Aprovação/Rejeição atualização Cadastral Força de Vendas
    Fechar Janela

Terceiros > Rating > Cadastro Perguntas/Respostas
    ${nome_print}=     Set Variable     Cadastro Perguntas_Respostas
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Rating
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro Perguntas Rating (1)
    repetidor de teclas     Tab                                4
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Cadastro Perguntas Rating (1)    ${Caminho_Screenshots}Terceiros/Rating/Cadastro Perguntas_Respostas
    Fechar janela

Terceiros > Rating > Cálculo Rating
    ${nome_print}=     Set Variable     Cálculo Rating
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Rating
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Cálculo Rating Terceiro (1)
    RPA.Windows.Click      Carregar
    BaseDesktop.Screenshot  Cálculo Rating Terceiro (1)    ${Caminho_Screenshots}Terceiros/Rating/Cálculo Rating
    Fechar janela

Setores
    ${nome_print}=     Set Variable     Setores
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Setores
    RPA.Windows.Get Text    Cadastro de Setores (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Setores (1)    ${Caminho_Screenshots}Setores
    Fechar com Sim

Itens > Itens
    ${nome_print}=     Set Variable     Itens
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Cadastro de Itens (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Itens (1)    ${Caminho_Screenshots}Itens/Itens
    Fechar com Sim

Itens > Itens - Edição em massa
    ${nome_print}=     Set Variable     Itens - Edição em massa
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Itens - Edição em massa
    RPA.Windows.Get Text    Cadastro de Produtos em Massa (1)
    RPA.Windows.Click      Carregar
    BaseDesktop.Screenshot  Cadastro de Produtos em Massa (1)    ${Caminho_Screenshots}Itens/Itens - Edição em massa
    Fechar Janela

Itens > Depósitos
    ${nome_print}=     Set Variable     Depósitos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Cadastro de Depósitos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Depósitos (1)    ${Caminho_Screenshots}Itens/Depósitos
    Fechar com Sim

Itens > Fabricantes
    ${nome_print}=     Set Variable     Fabricantes
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    F  
    RPA.Windows.Get Text      Cadastro de Fabricantes (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Fabricantes (1)    ${Caminho_Screenshots}Itens/Fabricantes
    Fechar janela
    RPA.Windows.Click         Sim

Itens > Grupo de Inspeção
    ${nome_print}=     Set Variable     Grupo de Inspeção
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Windows.Click         Grupo de Inspeção
    RPA.Windows.Get Text      Cadastro de Grupo Inspeção de Itens (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Grupo Inspeção de Itens (1)    ${Caminho_Screenshots}Itens/Grupo de Inspeção
    Fechar janela
    RPA.Windows.Click         Sim

Itens > Inspeção de Itens
    ${nome_print}=     Set Variable     Inspeção de Itens
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Windows.Click         Inspeção de Itens
    RPA.Windows.Get Text      Cadastro Inspeção de Itens (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro Inspeção de Itens (1)    ${Caminho_Screenshots}Itens/Inspeção de Itens
    Fechar janela
    RPA.Windows.Click         Sim

Itens > Marcas
    ${nome_print}=     Set Variable     Marcas
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Marcas
    RPA.Windows.Get Text    Cadastro de Marcas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Marcas (1)    ${Caminho_Screenshots}Itens/Marcas
    Fechar com Sim

Itens > Estampas
    ${nome_print}=     Set Variable     Estampas
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Estampas
    RPA.Windows.Get Text    Cadastro de Estampas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Estampas (1)    ${Caminho_Screenshots}Itens/Estampas
    Fechar com Sim

Itens > Tamanhos
    ${nome_print}=     Set Variable     Tamanhos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tamanhos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tamanhos (1)    ${Caminho_Screenshots}Itens/Tamanhos
    Fechar com Sim

Itens > Tipo do Serviço
    ${nome_print}=     Set Variable     Tipo Serviço
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    V  
    RPA.Windows.Get Text      Tipo Serviço (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Tipo Serviço (1)    ${Caminho_Screenshots}Itens/Tipo Serviço
    Fechar janela

Itens > Gênero do produto
    ${nome_print}=     Set Variable     Gênero produto
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Windows.Click         Gênero do Produto
    RPA.Windows.Get Text      Gênero Produto (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Gênero Produto (1)    ${Caminho_Screenshots}Itens/Gênero produto
    Fechar janela

Itens > Produtos Pizza
    ${nome_print}=     Set Variable     Produtos Pizza
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    Z  
    RPA.Windows.Get Text      Cadastro de Produtos que são Pizza (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot    Cadastro de Produtos que são Pizza (1)    ${Caminho_Screenshots}Itens/Produtos Pizza
    Fechar janela
    RPA.Windows.Click        Sim    

Itens > Unidades
    ${nome_print}=     Set Variable     Unidades
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  U
    RPA.Windows.Get Text    Cadastro de Unidades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Unidades (1)    ${Caminho_Screenshots}Itens/Unidades
    Fechar com Sim

Itens > Conversões de Unidades
    ${nome_print}=     Set Variable     Conversões de Unidades
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Conversões de Unidades
    RPA.Windows.Get Text    Cadastro de Conversões de Unidades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Conversões de Unidades (1)    ${Caminho_Screenshots}Itens/Conversões de Unidades
    Fechar com Sim
    RPA.Windows.Click       OK
    Fechar Janela

Itens > Tabelas de Frete
    ${nome_print}=     Set Variable     Tabelas de Frete
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  B
    RPA.Windows.Get Text    Cadastro de Tabela de Fretes (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tabela de Fretes (1)    ${Caminho_Screenshots}Itens/Tabelas de Frete
    Fechar com Sim

Itens > Modos de Preparo
    ${nome_print}=     Set Variable     Modos de Preparo
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Modo de Preparo (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Modo de Preparo (1)    ${Caminho_Screenshots}Itens/Modos de Preparo
    Fechar com Sim

Itens > Grades
    ${nome_print}=     Set Variable     Grades
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    G  
    RPA.Windows.Get Text      Cadastro de Grades (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Grades (1)    ${Caminho_Screenshots}Itens/Grades
    Fechar janela
    RPA.Windows.Click         Sim

Itens > Tabela de Preços
    ${nome_print}=     Set Variable     Tabela de Preços
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Tabela de Preços
    RPA.Windows.Get Text    Tabela de Preços (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Tabela de Preços (1)    ${Caminho_Screenshots}Itens/Tabela de Preços
    Fechar com Sim

Itens > Cores
    ${nome_print}=     Set Variable     Cores
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Cores (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Cores (1)    ${Caminho_Screenshots}Itens/Cores
    Fechar com Sim

Itens > Tabela de Umidade
    ${nome_print}=     Set Variable     Tabela de Umidade
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Tabela de Umidade   
    RPA.Windows.Get Text    Cadastro de Índices de Descontos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Índices de Descontos (1)    ${Caminho_Screenshots}Itens/Tabela de Umidade
    Fechar com Sim

Itens > Descontos para Grãos
    ${nome_print}=     Set Variable     Descontos para Grãos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    E 
    RPA.Windows.Get Text      Cadastro de Descontos/Classificações para Grãos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Descontos/Classificações para Grãos (1)    ${Caminho_Screenshots}Itens/Descontos para Grãos
    Fechar janela
    RPA.Windows.Click         Sim

Itens > Locais de Entrega - Retirada
    ${nome_print}=     Set Variable     Locais de Entrega - Retirada
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Locais Entrega - Retirada (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Locais Entrega - Retirada (1)    ${Caminho_Screenshots}Itens/Locais de Entrega - Retirada
    Fechar janela
    RPA.Windows.Click         Sim

Itens > Safras
    ${nome_print}=     Set Variable     Safras
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    S 
    RPA.Windows.Get Text      Cadastro de Safras (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Safras (1)    ${Caminho_Screenshots}Itens/Safras
    Fechar janela

Itens > Classificação Gerencial
    ${nome_print}=     Set Variable     Classificação Gerencial
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de Classificação Gerencial de Itens (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Classificação Gerencial de Itens (1)    ${Caminho_Screenshots}Itens/Classificação Gerencial
    Fechar janela
    RPA.Windows.Click         Sim

Itens > Tipo de Produto
    ${nome_print}=     Set Variable     Tipo de Produto
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    P 
    RPA.Windows.Get Text      Cadastro Tipo de Produto (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro Tipo de Produto (1)    ${Caminho_Screenshots}Itens/Tipo de Produto
    Fechar janela
    RPA.Windows.Click         Sim

Itens > Categorias
    ${nome_print}=     Set Variable     Categorias
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Cadastro de Categorias de Produtos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Categorias de Produtos (1)    ${Caminho_Screenshots}Itens/Categorias
    Fechar com Sim

Itens > Grupo de Variedade de Produção
    ${nome_print}=     Set Variable     Grupo de Variedade de Produção
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Grupo de Variedade de Produção
    RPA.Windows.Get Text    Cadastro de Variedade de Produção (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Variedade de Produção (1)    ${Caminho_Screenshots}Itens/Grupo de Variedade de Produção
    Fechar com Sim

Itens > Ecommerce > Características
    ${nome_print}=     Set Variable     Características
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Ecommerce
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Características (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Características (1)    ${Caminho_Screenshots}Itens/Ecommerce/Características
    Fechar com Sim

Itens > Ecommerce > Categorias
    ${nome_print}=     Set Variable     Categorias
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Ecommerce
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Itens/Ecommerce/Categorias
    Fechar com Sim

Itens > Ecommerce > Informações Adicionais
    ${nome_print}=     Set Variable     Informações Adicionais
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Ecommerce
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Cadastro de Informações Adicionais (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Informações Adicionais (1)    ${Caminho_Screenshots}Itens/Ecommerce/Informações Adicionais
    Fechar com Sim

Itens > Recorrências
    ${nome_print}=     Set Variable     Recorrências
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  N
    RPA.Windows.Get Text    Cadastro de Recorrências (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Recorrências (1)    ${Caminho_Screenshots}Itens/Recorrências
    Fechar com Sim

Itens > Catálogo de Produtos
    ${nome_print}=     Set Variable     Catálogo de Produtos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Catálogo de Produtos
    RPA.Windows.Get Text    Catálogo de Produtos (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Catálogo de Produtos (1)    ${Caminho_Screenshots}Itens/Catálogo de Produtos
    Fechar Janela

Veículos > Veículos
    ${nome_print}=     Set Variable     Veículos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Veículos
    RPA.Desktop.Press Keys  V
    RPA.Windows.Get Text    Cadastro de Veículos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Veículos (1)    ${Caminho_Screenshots}Veículos/Veículos
    Fechar Janela

Veículos > Tipos de Veículos
    ${nome_print}=     Set Variable     Tipos de Veículos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Veículos
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tipos de Veículos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Veículos (1)    ${Caminho_Screenshots}Veículos/Tipos de Veículos
    Fechar com Sim

Seguros de Carga
    ${nome_print}=     Set Variable     Seguros de Carga
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Seguros de Carga
    RPA.Windows.Get Text    Cadastro de Seguro de Carga (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Seguro de Carga (1)    ${Caminho_Screenshots}Seguros de Carga
    Fechar com Sim

Grupos de Equipamentos
    ${nome_print}=     Set Variable     Grupos de Equipamentos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Grupos de Equipamentos
    RPA.Windows.Get Text    Cadastro de Grupos de Equipamentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Grupos de Equipamentos (1)    ${Caminho_Screenshots}Grupos de Equipamentos
    Fechar com Sim

Equipamentos
    ${nome_print}=     Set Variable     Equipamentos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Equipamentos
    RPA.Windows.Get Text    Cadastro de Equipamentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Equipamentos (1)    ${Caminho_Screenshots}Equipamentos
    Fechar com Sim

ECF/SAT > Situação Tributária (Totalizadores)
    ${nome_print}=     Set Variable     Situação Tributária (Totalizadores)
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       ECF/SAT
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Cadastro de Situação Tributária (Totalizadores da ECF) (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Situação Tributária (Totalizadores da ECF) (1)    ${Caminho_Screenshots}ECF_SAT/Situação Tributária (Totalizadores)
    Fechar com Sim

Observações
    ${nome_print}=     Set Variable     Observações
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Observações
    RPA.Windows.Get Text    Cadastro de Observações Fiscais (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Observações Fiscais (1)    ${Caminho_Screenshots}Observações
    Fechar com Sim

Contabilista
    ${nome_print}=     Set Variable     Contabilista
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Contabilista
    RPA.Windows.Get Text    Cadastro de Contabilistas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Contabilistas (1)    ${Caminho_Screenshots}Contabilista
    Fechar com Sim

Navios
    ${nome_print}=     Set Variable     Navios
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Navios
    RPA.Windows.Get Text    Cadastro de Navios (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Navios (1)    ${Caminho_Screenshots}Navios
    Fechar com Sim

Berço de Embarque
    ${nome_print}=     Set Variable     Berço de Embarque
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Berço de Embarque
    RPA.Windows.Get Text    Cadastro de Berços de Embarque (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Berços de Embarque (1)    ${Caminho_Screenshots}Berço de Embarque
    Fechar com Sim

Rotas Simplificado
    ${nome_print}=     Set Variable     Rotas Simplificado
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Rotas Simplificado
    RPA.Windows.Get Text    Cadastro de Rotas Simplificado (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Rotas Simplificado (1)    ${Caminho_Screenshots}Rotas Simplificado
    Fechar com Sim

Feriados
    ${nome_print}=     Set Variable     Feriados
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Feriados
    RPA.Windows.Get Text    Cadastro de Feriados (1)
    RPA.Windows.Click       Cadastrar Feriados deste ano
    BaseDesktop.Screenshot  Cadastro de Feriados (1)    ${Caminho_Screenshots}Feriados
    RPA.Windows.Click       OK
    Fechar com Sim

Tipos de Visitas
    ${nome_print}=     Set Variable     Tipos de Visitas
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Tipos de Visita
    RPA.Windows.Get Text    Cadastro de Tipos de Visitas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Visitas (1)    ${Caminho_Screenshots}Tipos de Visitas
    Fechar com Sim

Finalidade de Visita
    ${nome_print}=     Set Variable     Finalidade de Visita
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Finalidade de Visita
    RPA.Windows.Get Text    Cadastro de Finalidade de Visita (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Finalidade de Visita (1)    ${Caminho_Screenshots}Finalidade de Visita
    Fechar com Sim

Jornada de Trabalho
    ${nome_print}=     Set Variable     Jornada de Trabalho
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Jornada de Trabalho
    RPA.Windows.Get Text    Cadastro de Jornada de Trabalho (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Jornada de Trabalho (1)    ${Caminho_Screenshots}Jornada de Trabalho
    Fechar com Sim

Configuração de mensagem para nota fiscal
    ${nome_print}=     Set Variable     Configuração de mensagem para nota fiscal
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Configuração de mensagem para nota fiscal
    RPA.Windows.Get Text    Configuração de mensagem para nota fiscal (1)
    repetidor de teclas     Tab                                9
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configuração de mensagem para nota fiscal (1)    ${Caminho_Screenshots}Configuração de mensagem para nota fiscal
    RPA.Windows.Click       Confirmar
    Fechar Janela

Programa de Recompensas > Cadastro de Pontos de Resgate
    ${nome_print}=     Set Variable     Cadastro de Pontos de Resgate
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Programa de Recompensas
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Pontos de Resgate (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Cadastro de Pontos de Resgate (1)    ${Caminho_Screenshots}Programa de Recompensas/Cadastro de Pontos de Resgate
    Fechar Janela

Programa de Recompensas > Configuração de Acúmulo de Pontos
    ${nome_print}=     Set Variable     Configuração de Acúmulo de Pontos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Programa de Recompensas
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Configuração de Acúmulo de Pontos (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configuração de Acúmulo de Pontos (1)    ${Caminho_Screenshots}Programa de Recompensas/Configuração de Acúmulo de Pontos
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Programa de Recompensas > Consulta de Saldo de Pontuação de Terceiros
    ${nome_print}=     Set Variable     Consulta de Saldo de Pontuação de Terceiros
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Programa de Recompensas
    RPA.Desktop.Press Keys  N
    RPA.Windows.Get Text    Consulta de Saldo de Pontuação por Terceiros (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Consulta de Saldo de Pontuação por Terceiros (1)    ${Caminho_Screenshots}Programa de Recompensas/Consulta de Saldo de Pontuação de Terceiros
    RPA.Windows.Click       Confirmar
    Fechar Janela

Programa de Recompensas > Manutenção de Pontuação
    ${nome_print}=     Set Variable     Manutenção de Pontuação
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Programa de Recompensas
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Manutenção de Pontuação (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Manutenção de Pontuação (1)    ${Caminho_Screenshots}Programa de Recompensas/Manutenção de Pontuação
    Fechar Janela

Metas Mensais
    ${nome_print}=     Set Variable     Metas Mensais
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Metas Mensais
    RPA.Windows.Get Text    Cadastro de Metas Mensais para Vendedores (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Metas Mensais para Vendedores (1)    ${Caminho_Screenshots}Metas Mensais
    Fechar com Sim

Documentos > Tipos de Documentos
    ${nome_print}=     Set Variable     Tipos de Documentos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Documentos
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tipos de Documentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Documentos (1)    ${Caminho_Screenshots}Documentos/Tipos de Documentos
    Fechar com Sim

Documentos > Manutenção de Tipos de Documentos Terceiros
    ${nome_print}=     Set Variable     Manutenção de Tipos de Documentos Terceiros
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Documentos
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Manutenção de Documentos de Terceiros (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Manutenção de Documentos de Terceiros (1)    ${Caminho_Screenshots}Documentos/Manutenção de Tipos de Documentos Terceiros
    Fechar Janela

Impressões Configuraveis
    ${nome_print}=     Set Variable     Impressões Configuraveis
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Impressões Configuraveis
    RPA.Windows.Get Text    Cadastro de Impressões Configuráveis (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Cadastro de Impressões Configuráveis (1)    ${Caminho_Screenshots}Impressões Configuraveis
    Fechar Janela

Países
    ${nome_print}=     Set Variable     Países
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Países
    RPA.Windows.Get Text      Cadastro de Países (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Países (1)    ${Caminho_Screenshots}Países
    Fechar com Sim

Estados
    ${nome_print}=     Set Variable     Estados
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Estados
    RPA.Windows.Get Text      Cadastro de Estados (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Estados (1)    ${Caminho_Screenshots}Estados
    Fechar com Sim

Municípios
    ${nome_print}=     Set Variable     Municípios
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Municípios
    RPA.Windows.Get Text      Cadastro de Municípios (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
    Fechar com Sim

Localidades
    ${nome_print}=     Set Variable     Localidades
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Localidades
    RPA.Windows.Get Text      Cadastro de Localidades (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Localidades (1)    ${Caminho_Screenshots}Localidades
    Fechar com Sim

Regiões
    ${nome_print}=     Set Variable     Regiões
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Regiões
    RPA.Windows.Get Text      Cadastro de Regiões (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Regiões (1)    ${Caminho_Screenshots}Regiões
    Fechar com Sim

Bairros
    ${nome_print}=     Set Variable     Bairros
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Bairros
    RPA.Windows.Get Text      Cadastro de Bairros (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Bairros (1)    ${Caminho_Screenshots}Bairros
    Fechar com Sim

Comunidades
    ${nome_print}=     Set Variable     Comunidades
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Comunidades
    RPA.Windows.Get Text      Cadastro de Comunidades (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Comunidades (1)    ${Caminho_Screenshots}Comunidades
    Fechar com Sim

Financeiro > Formas de Pagamento
    ${nome_print}=     Set Variable     Formas de Pagamento
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Formas de Pagamento (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Formas de Pagamento (1)    ${Caminho_Screenshots}Financeiro/Formas de Pagamento
    Fechar com Sim

Financeiro > Bandeira Cartão
    ${nome_print}=     Set Variable     Bandeira Cartão
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    B
    RPA.Windows.Get Text      Cadastro de Bandeiras Cartão (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Bandeiras Cartão (1)    ${Caminho_Screenshots}Financeiro/Bandeira Cartão
    Fechar janela
    RPA.Windows.Click         Sim

Financeiro > Autorizadoras de Cartões
    ${nome_print}=     Set Variable     Autorizadoras de Cartões
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de Autorizadoras de Cartão (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Autorizadoras de Cartão (1)    ${Caminho_Screenshots}Financeiro/Autorizadoras de Cartões
    Fechar janela
    RPA.Windows.Click         Sim


Fiscal > Configuração Int. Contábil
    ${nome_print}=     Set Variable     Configuração Int. Contábil
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Configuração para Integração Contábil (1)
    RPA.Windows.Click         Cooperado
    BaseDesktop.Screenshot    Configuração para Integração Contábil (1)    ${Caminho_Screenshots}Fiscal/Configuração Int. Contábil
    Fechar com Sim

Fiscal > Classificações Fiscais
    ${nome_print}=     Set Variable     Classificações Fiscais
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de Classificações Fiscais (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Classificações Fiscais (1)    ${Caminho_Screenshots}Fiscal/Classificações Fiscais
    Fechar com Sim

Fiscal > Mensagem de Notas Fiscais
    ${nome_print}=     Set Variable     Mensagem de Notas Fiscais
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    N
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Mensagens de Notas Fiscais (1)    ${Caminho_Screenshots}Fiscal/Mensagem de Notas Fiscais
    Fechar com Sim

Fiscal > Espécies de Documentos
    ${nome_print}=     Set Variable     Espécies de Documentos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Espécies de Documentos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Espécies de Documentos (1)    ${Caminho_Screenshots}Fiscal/Espécies de Documentos
    RPA.Windows.Click         OK
    Fechar janela

Fiscal > Operações Fiscais
    ${nome_print}=     Set Variable     Operações Fiscais
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Cadastro de Operações Fiscais (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Operações Fiscais (1)    ${Caminho_Screenshots}Fiscal/Operações Fiscais
    Fechar com Sim

Fiscal > Séries
    ${nome_print}=     Set Variable     Séries
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Cadastro de Séries (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Séries (1)    ${Caminho_Screenshots}Fiscal/Séries
    Fechar com Sim

Fiscal > CFOP's
    ${nome_print}=     Set Variable     CFOP's
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de CFOP's (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de CFOP's (1)    ${Caminho_Screenshots}Fiscal/CFOP's
    Fechar com Sim

Fiscal > Ramo de Atividade
    ${nome_print}=     Set Variable     Ramo de Atividade
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Ramo de Atividade
    RPA.Windows.Get Text      Cadastro Ramo de Atividade (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro Ramo de Atividade (1)    ${Caminho_Screenshots}Fiscal/Ramo de Atividade
    Fechar janela
    RPA.Windows.Click         Sim

Fiscal > Simples Nacional > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Simples Nacional
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do Simples Nacional (CSOSN) (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tabelas Tributárias do Simples Nacional (CSOSN) (1)    ${Caminho_Screenshots}Fiscal/Simples Nacional/Tabela Tributária
    Fechar com Sim

Fiscal > Simples Nacional > Situação Tributária (CSOSN)
    ${nome_print}=     Set Variable     Situação Tributária (CSOSN)
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Simples Nacional
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situações Tributárias Simples Nacional (CSOSN) (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Situações Tributárias Simples Nacional (CSOSN) (1)    ${Caminho_Screenshots}Fiscal/Simples Nacional/Situação Tributária (CSOSN)
    Fechar com Sim

Fiscal > IPI > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         IPI
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabela Tributária do IPI (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tabela Tributária do IPI (1)    ${Caminho_Screenshots}Fiscal/IPI/Tabela Tributária
    Fechar com Sim

Fiscal > IPI > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         IPI
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária do IPI (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Situação Tributária do IPI (1)    ${Caminho_Screenshots}Fiscal/IPI/Situação Tributária
    Fechar com Sim

Fiscal > ICMS > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributária (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tabelas Tributária (1)    ${Caminho_Screenshots}Fiscal/ICMS/Tabela Tributária
    Fechar com Sim

Fiscal > ICMS > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situações Tributárias do ICMS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Situações Tributárias do ICMS (1)    ${Caminho_Screenshots}Fiscal/ICMS/Situação Tributária
    Fechar com Sim

Fiscal > ICMS > Tabela Tributária - FCP
    ${nome_print}=     Set Variable     Tabela Tributária - FCP
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro da Tabela Tributária FCP (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro da Tabela Tributária FCP (1)    ${Caminho_Screenshots}Fiscal/ICMS/Tabela Tributária - FCP
    Fechar com Sim

Fiscal > ICMS > Configuração Benefício Fiscal
    ${nome_print}=     Set Variable     Configuração Benefício Fiscal
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configuração Benefício Fiscal (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Configuração Benefício Fiscal (1)    ${Caminho_Screenshots}Fiscal/ICMS/Configuração Benefício Fiscal
    Fechar janela

Fiscal > ICMS > Importar Tabelas Padrões
    ${nome_print}=     Set Variable     Importar Tabelas Padrões
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Importação de Tabelas Padrões (1)
    RPA.Windows.Click         Abrir
    RPA.Desktop.Press Keys    Down
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Importação de Tabelas Padrões (1)    ${Caminho_Screenshots}Fiscal/ICMS/Importar Tabelas Padrões
    Fechar janela

Fiscal > PIS > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         PIS
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do PIS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tabelas Tributárias do PIS (1)    ${Caminho_Screenshots}Fiscal/PIS/Tabela Tributária
    Fechar com Sim

Fiscal > PIS > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         PIS
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária PIS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Situação Tributária PIS (1)    ${Caminho_Screenshots}Fiscal/PIS/Situação Tributária
    Fechar com Sim

Fiscal > COFINS > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         COFINS
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do COFINS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tabelas Tributárias do COFINS (1)    ${Caminho_Screenshots}Fiscal/COFINS/Tabela Tributária
    Fechar com Sim

Fiscal > COFINS > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         COFINS
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária COFINS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Situação Tributária COFINS (1)    ${Caminho_Screenshots}Fiscal/COFINS/Situação Tributária
    Fechar com Sim

Fiscal > CSLL > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         CSLL
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do CSLL (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tabelas Tributárias do CSLL (1)    ${Caminho_Screenshots}Fiscal/CSLL/Tabela Tributária
    Fechar com Sim

Fiscal > CSLL > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         CSLL
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária CSLL (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Situação Tributária CSLL (1)    ${Caminho_Screenshots}Fiscal/CSLL/Situação Tributária
    Fechar com Sim

Fiscal > IRPJ > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         IRPJ
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do IRPJ (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tabelas Tributárias do IRPJ (1)    ${Caminho_Screenshots}Fiscal/IRPJ/Tabela Tributária
    Fechar com Sim

Fiscal > IRPJ > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         IRPJ
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária IRPJ (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Situação Tributária IRPJ (1)    ${Caminho_Screenshots}Fiscal/IRPJ/Situação Tributária
    Fechar com Sim

Fiscal > ISSQN > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ISSQN
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabela Tributária ISSQN (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tabela Tributária ISSQN (1)    ${Caminho_Screenshots}Fiscal/ISSQN/Tabela Tributária
    Fechar com Sim

Fiscal > Impostos Retidos > IR > Tabela Tributária - Pessoa jurídica
    ${nome_print}=     Set Variable     Tabela Tributária - Pessoa jurídica
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         IR
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Tabela Tributaria de Retenção de IR (Pessoa Jurídica) (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Tabela Tributaria de Retenção de IR (Pessoa Jurídica) (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/IR/Tabela Tributária - Pessoa jurídica
    Fechar com Sim

Fiscal > Impostos Retidos > IR > Tabela Tributária - Pessoa Física
    ${nome_print}=     Set Variable     Tabela Tributária - Pessoa Física
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         IR
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Tabela Tributaria de Retenção de IR (Pessoa Física) (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Tabela Tributaria de Retenção de IR (Pessoa Física) (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/IR/Tabela Tributária - Pessoa Física
    Fechar com Sim

Fiscal > Impostos Retidos > IR > Cadastro de Serviço
    ${nome_print}=     Set Variable     Cadastro de Serviço
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         IR
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Serviços para Retenção de IRRF (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Serviços para Retenção de IRRF (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/IR/Cadastro de Serviço
    Fechar com Sim

Fiscal > Impostos Retidos > CSRF > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         CSRF
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Tabela Tributaria de Retenção de PIS/COFINS/CSLL (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Tabela Tributaria de Retenção de PIS/COFINS/CSLL (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/CSRF/Tabela Tributária
    Fechar com Sim

Fiscal > Impostos Retidos > CSRF > Cadastro de Serviços
    ${nome_print}=     Set Variable     Cadastro de Serviços
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         CSRF
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Serviços para Retenção de PIS/COFINS/CSLL (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Serviços para Retenção de PIS/COFINS/CSLL (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/CSRF/Cadastro de Serviços
    Fechar com Sim

Fiscal > Impostos Retidos > INSS > Tabela Tributária - Pessoa jurídica
    ${nome_print}=     Set Variable     Tabela Tributária - Pessoa jurídica
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         INSS
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Tabela Tributaria de Retenção de INSS (Pessoa Jurídica) (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Tabela Tributaria de Retenção de INSS (Pessoa Jurídica) (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/INSS/Tabela Tributária - Pessoa jurídica
    Fechar com Sim

Fiscal > Impostos Retidos > INSS > Tabela Tributária - Pessoa Física
    ${nome_print}=     Set Variable     Tabela Tributária - Pessoa Física
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         INSS
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Tabela Tributaria de Retenção de INSS (Pessoa Física) (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Tabela Tributaria de Retenção de INSS (Pessoa Física) (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/INSS/Tabela Tributária - Pessoa Física
    Fechar com Sim

Fiscal > Impostos Retidos > INSS > Cadastro de Serviços
    ${nome_print}=     Set Variable     Cadastro de Serviços
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         INSS
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Serviços para Retenção de INSSRF (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Serviços para Retenção de INSSRF (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/INSS/Cadastro de Serviços
    Fechar com Sim

Fiscal > Impostos Retidos > SEST/SENAT
    ${nome_print}=     Set Variable     SEST_SENAT
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Tabela Tributária de SEST/SENAT (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tabela Tributária de SEST/SENAT (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/SEST_SENAT
    Fechar com Sim

Fiscal > Tabela de Alíquota Nacional de Impostos por NCM > Cadastro de Tabela
    ${nome_print}=     Set Variable     Cadastro de Tabela
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Tabela de Alíquota Nacional de Impostos por NCM
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Tabela de Alíquota Nacional de Impostos de Produtos/Serviços - Lei n° 12.741, de 8 de dezembro de 2012 (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Tabela de Alíquota Nacional de Impostos de Produtos/Serviços - Lei n° 12.741, de 8 de dezembro de 2012 (1)    ${Caminho_Screenshots}Fiscal/Tabela de Alíquota Nacional de Impostos por NCM/Cadastro de Tabela
    Fechar janela

Fiscal > Tabela de Alíquota Nacional de Impostos por NCM > Importação de Tabela
    ${nome_print}=     Set Variable     Importação de Tabela
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Tabela de Alíquota Nacional de Impostos por NCM
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Importação Tabela IBPT (1)
    RPA.Windows.Click         Importar
    BaseDesktop.Screenshot    Importação Tabela IBPT (1)    ${Caminho_Screenshots}Fiscal/Tabela de Alíquota Nacional de Impostos por NCM/Importação de Tabela
    RPA.Windows.Click         OK
    RPA.Windows.Click         Fechar

Fiscal > Classificações de Serviços Prestado - REINF
    ${nome_print}=     Set Variable     Classificações de Serviços Prestado - REINF
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    V
    RPA.Windows.Get Text      Classificações de Serviços Prestados - REINF (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Classificações de Serviços Prestados - REINF (1)    ${Caminho_Screenshots}Fiscal/Classificações de Serviços Prestado - REINF
    RPA.Windows.Click         Confirmar
    Fechar Janela

Fiscal > Tabela Pauta Fiscal
    ${nome_print}=     Set Variable     Tabela Pauta Fiscal
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Tabela Pauta Fiscal
    RPA.Windows.Get Text      Cadastro Tabela Pauta Fiscal (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro Tabela Pauta Fiscal (1)    ${Caminho_Screenshots}Fiscal/Tabela Pauta Fiscal
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Empresas
    ${nome_print}=     Set Variable     Empresas
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar com Sim

Parâmetros > Estabelecimentos
    ${nome_print}=     Set Variable     Estabelecimentos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Grupos Usuários
    ${nome_print}=     Set Variable     Grupos Usuários
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupos Usuários
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Usuários
    ${nome_print}=     Set Variable     Usuários
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    u
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar com Sim

Parâmetros > Configurações de Estação
    ${nome_print}=     Set Variable     Configurações de Estação
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    BaseDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações de Estação
    Fechar janela

Parâmetros > Configurações de E-Mail > Servidores
    ${nome_print}=     Set Variable     Servidores
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Windows.Click         Configurações de E-mail
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Servidores (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Servidores (1)    ${Caminho_Screenshots}Parâmetros/Configurações de E-Mail/Servidores
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Configurações de E-Mail > Contas
    ${nome_print}=     Set Variable     Contas
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Windows.Click         Configurações de E-mail
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Contas de e-mail (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Contas de e-mail (1)    ${Caminho_Screenshots}Parâmetros/Configurações de E-Mail/Contas
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Configurações de E-Mail > Modelos
    ${nome_print}=     Set Variable     Modelos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Windows.Click         Configurações de E-mail
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Cadastro de Modelo de e-mails (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Modelo de e-mails (1)    ${Caminho_Screenshots}Parâmetros/Configurações de E-Mail/Modelos
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Configurações de E-Mail > Opções de Envio
    ${nome_print}=     Set Variable     Opções de Envio
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Windows.Click         Configurações de E-mail
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Cadastro de Opções de Envio (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Opções de Envio (1)    ${Caminho_Screenshots}Parâmetros/Configurações de E-Mail/Opções de Envio
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Força de Vendas > Cadastro de Dispositivos
    ${nome_print}=     Set Variable     Cadastro de Dispositivos
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Windows.Click         Força de Vendas
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configuração de Dispositivos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Configuração de Dispositivos (1)    ${Caminho_Screenshots}Parâmetros/Força de Vendas/Cadastro de Dispositivos
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Força de Vendas > Cadastro de Metas
    ${nome_print}=     Set Variable     Cadastro de Metas
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Windows.Click         Força de Vendas
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de Metas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Metas (1)    ${Caminho_Screenshots}Parâmetros/Força de Vendas/Cadastro de Metas
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Força de Vendas > Metas dos Vendedores
    ${nome_print}=     Set Variable     Metas dos Vendedores
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Windows.Click         Força de Vendas
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Cadastro das Metas do Vendedor (1)
    repetidor de teclas       Tab                                4
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Cadastro das Metas do Vendedor (1)    ${Caminho_Screenshots}Parâmetros/Força de Vendas/Metas dos Vendedores
    RPA.Windows.Click         Confirmar
    Fechar janela
    RPA.Windows.Click         Sim
    RPA.Windows.Click         OK
    Fechar Janela

Parâmetros > Força de Vendas > Configurações de Tabela de Preço
    ${nome_print}=     Set Variable     Configurações de Tabela de Preço
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Windows.Click         Força de Vendas
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Configuração de Tabela de Preço (1)
    RPA.Windows.Click         Região
    RPA.Windows.Click         Carregar todas as Regiões
    BaseDesktop.Screenshot    Configuração de Tabela de Preço (1)    ${Caminho_Screenshots}Parâmetros/Força de Vendas/Configurações de Tabela de Preço
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Sistema Web
    ${nome_print}=     Set Variable     Sistema Web
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Cadastro de Login Portal Web (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Login Portal Web (1)    ${Caminho_Screenshots}Parâmetros/Sistema Web
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Cadastro de PDVs
    ${nome_print}=     Set Variable     Cadastro de PDVs
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de PDV (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de PDV (1)    ${Caminho_Screenshots}PDV/Cadastro de PDVs
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Cadastro de Scripts
    ${nome_print}=     Set Variable     Cadastro de Scripts
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de Script PDV (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Script PDV (1)    ${Caminho_Screenshots}PDV/Cadastro de Scripts
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Cadastro de Cupons de Desconto > Cadastro de Cupons de Desconto
    ${nome_print}=     Set Variable     Cadastro de Cupons de Desconto
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Windows.Click         Cadastro de Cupons de Desconto
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Cupons de Desconto (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Cupons de Desconto (1)    ${Caminho_Screenshots}PDV/Cadastro de Cupons de Desconto/Cadastro de Cupons de Desconto
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Cadastro de Cupons de Desconto > Config. Cupons PDV
    ${nome_print}=     Set Variable     Config. Cupons PDV
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Windows.Click         Cadastro de Cupons de Desconto
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Cadastro de Cupons Promocionais (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Cadastro de Cupons Promocionais (1)    ${Caminho_Screenshots}PDV/Cadastro de Cupons de Desconto/Config. Cupons PDV
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Cadastro de Cupons de Desconto > Config. Cupons Bilheteria
    ${nome_print}=     Set Variable     Config. Cupons Bilheteria
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Windows.Click         Cadastro de Cupons de Desconto
    RPA.Desktop.Press Keys    N
    RPA.Windows.Get Text      Cadastro de Cupons de Bilheteria (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Cadastro de Cupons de Bilheteria (1)    ${Caminho_Screenshots}PDV/Cadastro de Cupons de Desconto/Config. Cupons Bilheteria
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Configuração para impressão de comandas
    ${nome_print}=     Set Variable     Configuração para impressão de comandas
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Configuração de Impressoras (1)
    repetidor de teclas       tab    8
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Configuração de Impressoras (1)    ${Caminho_Screenshots}PDV/Configuração para impressão de comandas
    RPA.Windows.Click         Confirmar
    Fechar janela

PDV > Cadastro de Tipos de Pensão
    ${nome_print}=     Set Variable     Cadastro de Tipos de Pensão
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Tipos de Pensão (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tipos de Pensão (1)    ${Caminho_Screenshots}PDV/Cadastro de Tipos de Pensão
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Motivos de Cancelamento
    ${nome_print}=     Set Variable     Motivos de Cancelamento
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Motivo do Cancelamento (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Motivo do Cancelamento (1)    ${Caminho_Screenshots}PDV/Motivos de Cancelamento
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Motivos de Sangria/Suprimento
    ${nome_print}=     Set Variable     Motivos de Sangria_Suprimento
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Motivo de Sangria/Suprimento (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Motivo de Sangria/Suprimento (1)    ${Caminho_Screenshots}PDV/Motivos de Sangria_Suprimento
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Cadastro de Descontos NFC
    ${nome_print}=     Set Variable     Cadastro de Descontos NFC
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Cadastro de Descontos PDV (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Descontos PDV (1)    ${Caminho_Screenshots}PDV/Cadastro de Descontos NFC
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Tipos de Locação
    ${nome_print}=     Set Variable     Tipos de Locação
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Cadastro de Tipo de Guarda Volumes (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tipo de Guarda Volumes (1)    ${Caminho_Screenshots}PDV/Tipos de Locação
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Cadastro/Configuração Grupos de Locação
    ${nome_print}=     Set Variable     Cadastro_Configuração Grupos de Locação
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    N
    RPA.Windows.Get Text      Cadastro de Setores/Grupos de Locações (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Setores/Grupos de Locações (1)    ${Caminho_Screenshots}PDV/Cadastro_Configuração Grupos de Locação
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Ambientes para Mesas/Totens/Comandas/Delivery
    ${nome_print}=     Set Variable     Ambientes para Mesas_Totens_Comandas_Delivery
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    B
    RPA.Windows.Get Text      Cadastro de Ambientes para Mesas/Totens/Comanda/Delivery (1)
    BaseDesktop.Screenshot    Cadastro de Ambientes para Mesas/Totens/Comanda/Delivery (1)    ${Caminho_Screenshots}PDV/Ambientes para Mesas_Totens_Comandas_Delivery
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Grades para Mesas/Totens/Comanda
    ${nome_print}=     Set Variable     Grades para Mesas_Totens_Comanda
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Grades para Mesas/Totens/Comanda (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Grades para Mesas/Totens/Comanda (1)    ${Caminho_Screenshots}PDV/Grades para Mesas_Totens_Comanda
    RPA.Windows.Click         Confirmar
    Fechar janela
    RPA.Windows.Click         OK

PDV > Configuração de Ambiente por Horários
    ${nome_print}=     Set Variable     Configuração de Ambiente por Horários
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Configuração de Mesas por faixa de horários (1)
    repetidor de teclas       Tab                                5
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Configuração de Mesas por faixa de horários (1)    ${Caminho_Screenshots}PDV/Configuração de Ambiente por Horários
    RPA.Windows.Click         Confirmar
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Vincular NFC com Mesa/Cartão
    ${nome_print}=     Set Variable     Vincular NFC com Mesa_Cartão
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    V
    RPA.Windows.Get Text      Vincular NFC com Mesa/Cartão (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Vincular NFC com Mesa/Cartão (1)    ${Caminho_Screenshots}PDV/Vincular NFC com Mesa_Cartão
    RPA.Windows.Click         OK
    Fechar janela

PDV > Tipo de Crédito Interno
    ${nome_print}=     Set Variable     Tipo de Crédito Interno
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Cadastro de Tipos de Crédito Interno (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tipos de Crédito Interno (1)    ${Caminho_Screenshots}PDV/Tipo de Crédito Interno
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Cadastro de Tipos de Cartão para Crédito Interno
    ${nome_print}=     Set Variable     Cadastro de Tipos de Cartão para Crédito Interno
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Tipo de Cartão de Crédito Interno (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tipo de Cartão de Crédito Interno (1)    ${Caminho_Screenshots}PDV/Cadastro de Tipos de Cartão para Crédito Interno
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Taxa de Entrega
    ${nome_print}=     Set Variable     Taxa de Entrega
    [Tags]    Vendas   Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    X
    RPA.Windows.Get Text      Cadastro de Taxa de Entrega (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Taxa de Entrega (1)    ${Caminho_Screenshots}PDV/Taxa de Entrega
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Integração Abrahao
    ${nome_print}=     Set Variable     Integração Abrahao
    [Tags]    Vendas   Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    H
    RPA.Windows.Get Text      Integração Abrahao (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Integração Abrahao (1)    ${Caminho_Screenshots}PDV/Integração Abrahao
    RPA.Windows.Click         Confirmar
    Fechar com Sim