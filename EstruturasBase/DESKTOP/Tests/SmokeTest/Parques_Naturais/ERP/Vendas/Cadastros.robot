*** Settings ***
Documentation    Smoke Test: Vendas
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_ven


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Vendas/Cadastros/    

*** Keywords ***


*** Test Cases ***

Terceiros > Cadastro de Terceiros
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Terceiros/                          Cadastro de Terceiros
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
    [Teardown]              Caso aconteça erro                   ${Caminho_Screenshots}Terceiros/                      Limite de Crédito
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
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Terceiros/              Tipos de Garantia
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tipos de Garantia (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Garantia (1)    ${Caminho_Screenshots}Terceiros/Tipos de Garantia
    Fechar Janela
    RPA.Windows.Click       Sim

Terceiros > Categorias de Terceiros
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Terceiros/                             Categorias de Terceiros
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Cadastro de Categorias de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Categorias de Terceiros (1)    ${Caminho_Screenshots}Categorias de Terceiros
    Fechar janela
    RPA.Windows.Click       Sim

Terceiros > Grupo de Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Terceiros/              Grupo de Terceiros
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  G
    RPA.Windows.Get Text    Cadastro de Grupo de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Grupo de Terceiros (1)    ${Caminho_Screenshots}Grupos de Terceiros
    Fechar janela
    RPA.Windows.Click       Sim

Terceiros > Grupo de Terceiros Fidelizados
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Terceiros/              Grupo de Terceiros Fidelizados
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Grupo de Terceiros Fidelizados (1)
     RPA.Windows.Click      Carregar
    BaseDesktop.Screenshot  Grupo de Terceiros Fidelizados (1)    ${Caminho_Screenshots}Terceiros/Grupo de Terceiros Fidelizados
    Fechar Janela
    RPA.Windows.Click       Sim

Terceiros > Contatos > Registros de Contatos
    [Teardown]              Caso aconteça erro         ${Caminho_Screenshots}Terceiros/Contatos/                          Registros de Contatos
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
    [Teardown]              Caso aconteça erro                               ${Caminho_Screenshots}Terceiros/Contatos/                                    Tipo de Histórico de Contatos
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Windows.Click       Tipo de Histórico de Contatos
    RPA.Windows.Get Text    Cadastro de tipo de Histórico de Contatos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de tipo de Histórico de Contatos (1)    ${Caminho_Screenshots}Terceiros/Contatos/Tipo de Histórico de Contatos
    Fechar janela
    RPA.Windows.Click       Sim

Terceiros > Contatos > Atividades de Contatos
    [Teardown]              Caso aconteça erro                        ${Caminho_Screenshots}Terceiros/Contatos/                             Atividades de Contatos
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Windows.Click       Atividades de Contatos
    RPA.Windows.Get Text    Cadastro de Atividades de Contatos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Atividades de Contatos (1)    ${Caminho_Screenshots}Terceiros/Contatos/Atividades de Contatos
    Fechar janela
    RPA.Windows.Click       Sim

Terceiros > Contatos > Consulta de contatos realizados
    [Teardown]              Caso aconteça erro                     ${Caminho_Screenshots}Terceiros/Contatos/                                      Consulta de contatos realizados
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Contatos
    RPA.Windows.Click       Consulta de contatos realizados
    RPA.Windows.Get Text    Consulta de Contatos Realizados (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Contatos Realizados (1)    ${Caminho_Screenshots}Terceiros/Contatos/Consulta de contatos realizados
    Fechar janela

Terceiros > Troca de Vendedor
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Terceiros/           Troca de Vendedor    
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Troca de Vendedor (1)
    RPA.Windows.Click      Carregar
    BaseDesktop.Screenshot  Troca de Vendedor (1)    ${Caminho_Screenshots}Terceiros/Troca de Vendedor
    Fechar Janela

Terceiros > Cadastro Categoria SICOR (PRONAF)
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Terceiros/           Cadastro Categoria SICOR (PRONAF)  
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Cadastro de Categoria SICOR (PRONAF) (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Categoria SICOR (PRONAF) (1)    ${Caminho_Screenshots}Terceiros/Cadastro Categoria SICOR (PRONAF)
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar

Terceiros > Aprovação/Rejeição atualização Cadastral Força de Vendas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Terceiros/           Aprovação/Rejeição atualização Cadastral Força de Vendas
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Atualização Cadastral (1)
     RPA.Windows.Click      Carregar
    BaseDesktop.Screenshot  Atualização Cadastral (1)    ${Caminho_Screenshots}Terceiros/Aprovação/Rejeição atualização Cadastral Força de Vendas
    Fechar Janela

Terceiros > Rating > Cadastro Perguntas/Respostas
    [Teardown]              Caso aconteça erro                               ${Caminho_Screenshots}Terceiros/Rating/                                    Cadastro Perguntas_Respostas
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
    [Teardown]              Caso aconteça erro                               ${Caminho_Screenshots}Terceiros/Rating/                                    Cálculo Rating
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Click       Rating
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Cálculo Rating Terceiro (1)
     RPA.Windows.Click      Carregar
    BaseDesktop.Screenshot  Cálculo Rating Terceiro (1)    ${Caminho_Screenshots}Terceiros/Rating/Cálculo Rating
    Fechar janela

Setores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}           Setores    
    Cadastros
    RPA.Windows.Click       Setores
    RPA.Windows.Get Text    Cadastro de Setores (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Setores (1)    ${Caminho_Screenshots}Setores
    Fechar janela
    RPA.Windows.Click       Sim

Itens > Itens
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Itens
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Cadastro de Itens (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Itens (1)    ${Caminho_Screenshots}Itens/Itens
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Itens - Edição em massa
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Itens - Edição em massa
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Itens - Edição em massa
    RPA.Windows.Get Text    Cadastro de Produtos em Massa (1)
     RPA.Windows.Click      Carregar
    BaseDesktop.Screenshot  Cadastro de Produtos em Massa (1)    ${Caminho_Screenshots}Itens/Itens - Edição em massa
    Fechar Janela

Itens > Depósitos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Depósitos
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Cadastro de Depósitos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Depósitos (1)    ${Caminho_Screenshots}Itens/Depósitos
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Fabricantes
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Fabricantes
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    F  
    RPA.Windows.Get Text      Cadastro de Fabricantes (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Fabricantes (1)    ${Caminho_Screenshots}Itens/Fabricantes
    Fechar janela
    RPA.Windows.Click         Sim

Itens > Grupo de Inspeção
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Grupo de Inspeção
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Windows.Click         Grupo de Inspeção
    RPA.Windows.Get Text      Cadastro de Grupo Inspeção de Itens (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Grupo Inspeção de Itens (1)    ${Caminho_Screenshots}Itens/Grupo de Inspeção
    Fechar janela
    RPA.Windows.Click         Sim

Itens > Inspeção de Itens
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Inspeção de Itens
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Windows.Click         Inspeção de Itens
    RPA.Windows.Get Text      Cadastro Inspeção de Itens (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro Inspeção de Itens (1)    ${Caminho_Screenshots}Itens/Inspeção de Itens
    Fechar janela
    RPA.Windows.Click         Sim

Itens > Marcas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Marcas
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Marcas
    RPA.Windows.Get Text    Cadastro de Marcas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Marcas (1)    ${Caminho_Screenshots}Itens/Marcas
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Estampas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Estampas
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Estampas
    RPA.Windows.Get Text    Cadastro de Estampas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Estampas (1)    ${Caminho_Screenshots}Itens/Estampas
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Tamanhos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Tamanhos
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tamanhos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tamanhos (1)    ${Caminho_Screenshots}Itens/Tamanhos
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Tipo do Serviço
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Tipo Serviço
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    V  
    RPA.Windows.Get Text      Tipo Serviço (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Tipo Serviço (1)    ${Caminho_Screenshots}Itens/Tipo Serviço
    Fechar janela

Itens > Gênero do produto
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Gênero produto
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Windows.Click         Gênero do Produto
    RPA.Windows.Get Text      Gênero Produto (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Gênero Produto (1)    ${Caminho_Screenshots}Itens/Gênero produto
    Fechar janela

Itens > Produtos Pizza
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Produtos Pizza
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
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Unidades
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  U
    RPA.Windows.Get Text    Cadastro de Unidades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Unidades (1)    ${Caminho_Screenshots}Itens/Unidades
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Conversões de Unidades
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Conversões de Unidades
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Conversões de Unidades
    RPA.Windows.Get Text    Cadastro de Conversões de Unidades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Conversões de Unidades (1)    ${Caminho_Screenshots}Itens/Conversões de Unidades
    Fechar Janela
    RPA.Windows.Click       Sim
    RPA.Windows.Click       OK
    Fechar Janela

Itens > Tabelas de Frete
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Tabelas de Frete
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  B
    RPA.Windows.Get Text    Cadastro de Tabela de Fretes (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tabela de Fretes (1)    ${Caminho_Screenshots}Itens/Tabelas de Frete
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Modos de Preparo
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Modos de Preparo
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Modo de Preparo (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Modo de Preparo (1)    ${Caminho_Screenshots}Itens/Modos de Preparo
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Grades
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Grades
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    G  
    RPA.Windows.Get Text      Cadastro de Grades (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Grades (1)    ${Caminho_Screenshots}Itens/Grades
    Fechar janela
    RPA.Windows.Click         Sim

Itens > Tabela de Preços
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Tabela de Preços
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Tabela de Preços
    RPA.Windows.Get Text    Tabela de Preços (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Tabela de Preços (1)    ${Caminho_Screenshots}Itens/Tabela de Preços
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Cores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Cores
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Cores (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Cores (1)    ${Caminho_Screenshots}Itens/Cores
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Tabela de Umidade
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/             Tabela de Umidade
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Tabela de Umidade   
    RPA.Windows.Get Text    Cadastro de Índices de Descontos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Índices de Descontos (1)    ${Caminho_Screenshots}Itens/Tabela de Umidade
    Fechar janela
    RPA.Windows.Click       Sim

Itens > Descontos para Grãos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Descontos para Grãos
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    E 
    RPA.Windows.Get Text      Cadastro de Descontos/Classificações para Grãos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Descontos/Classificações para Grãos (1)    ${Caminho_Screenshots}Itens/Descontos para Grãos
    Fechar janela
    RPA.Windows.Click         Sim

Itens > Locais de Entrega - Retirada
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Locais de Entrega - Retirada
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Locais Entrega - Retirada (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Locais Entrega - Retirada (1)    ${Caminho_Screenshots}Itens/Locais de Entrega - Retirada
    Fechar janela
    RPA.Windows.Click         Sim

Itens > Safras
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Safras
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    S 
    RPA.Windows.Get Text      Cadastro de Safras (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Safras (1)    ${Caminho_Screenshots}Itens/Safras
    Fechar janela

Itens > Classificação Gerencial
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Classificação Gerencial
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de Classificação Gerencial de Itens (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Classificação Gerencial de Itens (1)    ${Caminho_Screenshots}Itens/Classificação Gerencial
    Fechar janela
    RPA.Windows.Click         Sim

Itens > Tipo de Produto
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Tipo de Produto
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    P 
    RPA.Windows.Get Text      Cadastro Tipo de Produto (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro Tipo de Produto (1)    ${Caminho_Screenshots}Itens/Tipo de Produto
    Fechar janela
    RPA.Windows.Click         Sim

Itens > Categorias
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Categorias
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Cadastro de Categorias de Produtos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Categorias de Produtos (1)    ${Caminho_Screenshots}Itens/Categorias
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Grupo de Variedade de Produção
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Grupo de Variedade de Produção
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Grupo de Variedade de Produção
    RPA.Windows.Get Text    Cadastro de Variedade de Produção (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Variedade de Produção (1)    ${Caminho_Screenshots}Itens/Grupo de Variedade de Produção
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Ecommerce > Características
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/Ecommerce/            Características
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Ecommerce
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Características (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Características (1)    ${Caminho_Screenshots}Itens/Ecommerce/Características
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Ecommerce > Categorias
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/Ecommerce/            Categorias
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Ecommerce
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Itens/Ecommerce/Categorias
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Ecommerce > Informações Adicionais
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/Ecommerce/            Informações Adicionais
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Ecommerce
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Cadastro de Informações Adicionais (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Informações Adicionais (1)    ${Caminho_Screenshots}Itens/Ecommerce/Informações Adicionais
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Recorrências
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Recorrências
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  N
    RPA.Windows.Get Text    Cadastro de Recorrências (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Recorrências (1)    ${Caminho_Screenshots}Itens/Recorrências
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Catálogo de Produtos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Catálogo de Produtos
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Catálogo de Produtos
    RPA.Windows.Get Text    Catálogo de Produtos (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Catálogo de Produtos (1)    ${Caminho_Screenshots}Itens/Catálogo de Produtos
    Fechar Janela

Veículos > Veículos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Veículos/              Veículos
    Cadastros
    RPA.Windows.Click       Veículos
    RPA.Desktop.Press Keys  V
    RPA.Windows.Get Text    Cadastro de Veículos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Veículos (1)    ${Caminho_Screenshots}Veículos/Veículos
    Fechar Janela

Veículos > Tipos de Veículos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Veículos/              Tipos de Veículos
    Cadastros
    RPA.Windows.Click       Veículos
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tipos de Veículos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Veículos (1)    ${Caminho_Screenshots}Veículos/Tipos de Veículos
    Fechar Janela
    RPA.Windows.Click       Sim

Seguros de Carga
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Seguros de Carga
    Cadastros
    RPA.Windows.Click       Seguros de Carga
    RPA.Windows.Get Text    Cadastro de Seguro de Carga (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Seguro de Carga (1)    ${Caminho_Screenshots}Seguros de Carga
    Fechar Janela
    RPA.Windows.Click       Sim

Grupos de Equipamentos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Grupos de Equipamentos
    Cadastros
    RPA.Windows.Click       Grupos de Equipamentos
    RPA.Windows.Get Text    Cadastro de Grupos de Equipamentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Grupos de Equipamentos (1)    ${Caminho_Screenshots}Grupos de Equipamentos
    Fechar Janela
    RPA.Windows.Click       Sim

Equipamentos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Equipamentos
    Cadastros
    RPA.Windows.Click       Equipamentos
    RPA.Windows.Get Text    Cadastro de Equipamentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Equipamentos (1)    ${Caminho_Screenshots}Equipamentos
    Fechar Janela
    RPA.Windows.Click       Sim

ECF/SAT > Situação Tributária (Totalizadores)
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}ECF_SAT/              Situação Tributária (Totalizadores)
    Cadastros
    RPA.Windows.Click       ECF/SAT
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Cadastro de Situação Tributária (Totalizadores da ECF) (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Situação Tributária (Totalizadores da ECF) (1)    ${Caminho_Screenshots}ECF_SAT/Situação Tributária (Totalizadores)
    Fechar Janela
    RPA.Windows.Click       Sim

Observações
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Observações
    Cadastros
    RPA.Windows.Click       Observações
    RPA.Windows.Get Text    Cadastro de Observações Fiscais (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Observações Fiscais (1)    ${Caminho_Screenshots}Observações
    Fechar Janela
    RPA.Windows.Click       Sim

Contabilista
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Contabilista
    Cadastros
    RPA.Windows.Click       Contabilista
    RPA.Windows.Get Text    Cadastro de Contabilistas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Contabilistas (1)    ${Caminho_Screenshots}Contabilista
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

Berço de Embarque
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Berço de Embarque
    Cadastros
    RPA.Windows.Click       Berço de Embarque
    RPA.Windows.Get Text    Cadastro de Berços de Embarque (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Berços de Embarque (1)    ${Caminho_Screenshots}Berço de Embarque
    Fechar Janela
    RPA.Windows.Click       Sim

Rotas Simplificado
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Rotas Simplificado
    Cadastros
    RPA.Windows.Click       Rotas Simplificado
    RPA.Windows.Get Text    Cadastro de Rotas Simplificado (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Rotas Simplificado (1)    ${Caminho_Screenshots}Rotas Simplificado
    Fechar Janela
    RPA.Windows.Click       Sim

Feriados
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Feriados
    Cadastros
    RPA.Windows.Click       Feriados
    RPA.Windows.Get Text    Cadastro de Feriados (1)
    RPA.Windows.Click       Cadastrar Feriados deste ano
    BaseDesktop.Screenshot  Cadastro de Feriados (1)    ${Caminho_Screenshots}Feriados
    RPA.Windows.Click       OK
    Fechar Janela
    RPA.Windows.Click       Sim

Tipos de Visitas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Tipos de Visitas
    Cadastros
    RPA.Windows.Click       Tipos de Visita
    RPA.Windows.Get Text    Cadastro de Tipos de Visitas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Visitas (1)    ${Caminho_Screenshots}Tipos de Visitas
    Fechar Janela
    RPA.Windows.Click       Sim

Finalidade de Visita
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Finalidade de Visita
    Cadastros
    RPA.Windows.Click       Finalidade de Visita
    RPA.Windows.Get Text    Cadastro de Finalidade de Visita (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Finalidade de Visita (1)    ${Caminho_Screenshots}Finalidade de Visita
    Fechar Janela
    RPA.Windows.Click       Sim

Jornada de Trabalho
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Jornada de Trabalho
    Cadastros
    RPA.Windows.Click       Jornada de Trabalho
    RPA.Windows.Get Text    Cadastro de Jornada de Trabalho (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Jornada de Trabalho (1)    ${Caminho_Screenshots}Jornada de Trabalho
    Fechar Janela
    RPA.Windows.Click       Sim

Configuração de mensagem para nota fiscal
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Configuração de mensagem para nota fiscal
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
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Programa de Recompensas/             Cadastro de Pontos de Resgate
    Cadastros
    RPA.Windows.Click       Programa de Recompensas
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Pontos de Resgate (1)
     RPA.Windows.Click      Carregar
    BaseDesktop.Screenshot  Cadastro de Pontos de Resgate (1)    ${Caminho_Screenshots}Programa de Recompensas/Cadastro de Pontos de Resgate
    Fechar Janela

Programa de Recompensas > Configuração de Acúmulo de Pontos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Programa de Recompensas/             Configuração de Acúmulo de Pontos
    Cadastros
    RPA.Windows.Click       Programa de Recompensas
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Configuração de Acúmulo de Pontos (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configuração de Acúmulo de Pontos (1)    ${Caminho_Screenshots}Programa de Recompensas/Configuração de Acúmulo de Pontos
    RPA.Windows.Click       Confirmar
    Fechar Janela
    RPA.Windows.Click       Sim

Programa de Recompensas > Consulta de Saldo de Pontuação de Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Programa de Recompensas/             Consulta de Saldo de Pontuação de Terceiros
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
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Programa de Recompensas/             Manutenção de Pontuação
    Cadastros
    RPA.Windows.Click       Programa de Recompensas
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Manutenção de Pontuação (1)
     RPA.Windows.Click      Carregar
    BaseDesktop.Screenshot  Manutenção de Pontuação (1)    ${Caminho_Screenshots}Programa de Recompensas/Manutenção de Pontuação
    Fechar Janela

Metas Mensais
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Metas Mensais
    Cadastros
    RPA.Windows.Click       Metas Mensais
    RPA.Windows.Get Text    Cadastro de Metas Mensais para Vendedores (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Metas Mensais para Vendedores (1)    ${Caminho_Screenshots}Metas Mensais
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

Documentos > Manutenção de Tipos de Documentos Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Documentos/              Manutenção de Tipos de Documentos Terceiros
    Cadastros
    RPA.Windows.Click       Documentos
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Manutenção de Documentos de Terceiros (1)
     RPA.Windows.Click      Carregar
    BaseDesktop.Screenshot  Manutenção de Documentos de Terceiros (1)    ${Caminho_Screenshots}Documentos/Manutenção de Tipos de Documentos Terceiros
    Fechar Janela
    
Impressões Configuraveis
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Impressões Configuraveis
    Cadastros
    RPA.Windows.Click       Impressões Configuraveis
    RPA.Windows.Get Text    Cadastro de Impressões Configuráveis (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Cadastro de Impressões Configuráveis (1)    ${Caminho_Screenshots}Impressões Configuraveis
    Fechar Janela

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


Bairros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Bairros
    Cadastros
    RPA.Windows.Click       Bairros
    RPA.Windows.Get Text    Cadastro de Bairros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Bairros (1)    ${Caminho_Screenshots}Bairros
    Fechar Janela
    RPA.Windows.Click       Sim

Comunidades
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Comunidades
    Cadastros
    RPA.Windows.Click       Comunidades
    RPA.Windows.Get Text    Cadastro de Comunidades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Comunidades (1)    ${Caminho_Screenshots}Comunidades
    Fechar Janela
    RPA.Windows.Click       Sim

Financeiro > Formas de Pagamento
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Financeiro/          Formas de Pagamento
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Formas de Pagamento (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Formas de Pagamento (1)    ${Caminho_Screenshots}Financeiro/Formas de Pagamento
    Fechar janela
    RPA.Windows.Click       Sim

Financeiro > Bandeira Cartão
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Financeiro/          Bandeira Cartão
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    B
    RPA.Windows.Get Text      Cadastro de Bandeiras Cartão (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Bandeiras Cartão (1)    ${Caminho_Screenshots}Financeiro/Bandeira Cartão
    Fechar janela
    RPA.Windows.Click         Sim

Financeiro > Autorizadoras de Cartões
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Financeiro/                             Autorizadoras de Cartões
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de Autorizadoras de Cartão (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Autorizadoras de Cartão (1)    ${Caminho_Screenshots}Financeiro/Autorizadoras de Cartões
    Fechar janela
    RPA.Windows.Click         Sim

Fiscal > Configuração Int. Contábil
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           Configuração Int. Contábil
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Configuração para Integração Contábil (1)
    RPA.Windows.Click         Cooperado
    BaseDesktop.Screenshot    Configuração para Integração Contábil (1)    ${Caminho_Screenshots}Fiscal/Configuração Int. Contábil
    Fechar janela
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
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Cadastro de Operações Fiscais (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Operações Fiscais (1)    ${Caminho_Screenshots}Fiscal/Operações Fiscais
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Séries
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           Séries
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Cadastro de Séries (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Séries (1)    ${Caminho_Screenshots}Fiscal/Séries
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > CFOP's
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           CFOP's
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de CFOP's (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de CFOP's (1)    ${Caminho_Screenshots}Fiscal/CFOP's
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Ramo de Atividade
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           Ramo de Atividade
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Ramo de Atividade
    RPA.Windows.Get Text      Cadastro Ramo de Atividade (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro Ramo de Atividade (1)    ${Caminho_Screenshots}Fiscal/Ramo de Atividade
    Fechar janela
    RPA.Windows.Click         Sim

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

Fiscal > ICMS > Configuração Benefício Fiscal
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/ICMS/           Configuração Benefício Fiscal
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configuração Benefício Fiscal (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot    Configuração Benefício Fiscal (1)    ${Caminho_Screenshots}Fiscal/ICMS/Configuração Benefício Fiscal
    Fechar janela 

Fiscal > ICMS > Importar Tabelas Padrões
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/ICMS/           Importar Tabelas Padrões
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

Fiscal > Tabela de Alíquota Nacional de Impostos por NCM > Cadastro de Tabela
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/Tabela de Alíquota Nacional de Impostos por NCM/          Cadastro de Tabela
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Tabela de Alíquota Nacional de Impostos por NCM
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Tabela de Alíquota Nacional de Impostos de Produtos/Serviços - Lei n° 12.741, de 8 de dezembro de 2012 (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Tabela de Alíquota Nacional de Impostos de Produtos/Serviços - Lei n° 12.741, de 8 de dezembro de 2012 (1)    ${Caminho_Screenshots}Fiscal/Tabela de Alíquota Nacional de Impostos por NCM/Cadastro de Tabela
    Fechar janela

Fiscal > Tabela de Alíquota Nacional de Impostos por NCM > Importação de Tabela
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/Tabela de Alíquota Nacional de Impostos por NCM/          Importação de Tabela
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/       Classificações de Serviços Prestado - REINF
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    V
    RPA.Windows.Get Text      Classificações de Serviços Prestado - REINF (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Classificações de Serviços Prestado - REINF (1)    ${Caminho_Screenshots}Fiscal/Classificações de Serviços Prestado - REINF
    RPA.Windows.Click         OK
    Fechar janela

Fiscal > Tabela Pauta Fiscal
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/       Tabela Pauta Fiscal
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Tabela Pauta Fiscal
    RPA.Windows.Get Text      Cadastro Tabela Pauta Fiscal (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro Tabela Pauta Fiscal (1)   ${Caminho_Screenshots}Fiscal/Tabela Pauta Fiscal
    Fechar janela
    RPA.Windows.Click         Sim

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
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Grupos Usuários
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/           Grupos Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupos Usuários
    Fechar janela
    RPA.Windows.Click         Sim

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

Parâmetros > Configurações de Estação
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/           Configurações de Estação
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    BaseDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações de Estação
    Fechar janela

Parâmetros > Configurações de E-Mail > Servidores
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/Configurações de E-Mail/       Servidores
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/Configurações de E-Mail/       Contas
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/Configurações de E-Mail/       Modelos
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/Configurações de E-Mail/       Opções de Envio
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/Força de Vendas/       Cadastro de Dispositivos
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/Força de Vendas/       Cadastro de Metas
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/Força de Vendas/       Metas dos Vendedores
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/Força de Vendas/       Configurações de Tabela de Preço
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/           Sistema Web
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Cadastro de Login Portal Web (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Login Portal Web (1)    ${Caminho_Screenshots}Parâmetros/Sistema Web
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Cadastro de PDVs
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/           Cadastro de PDVs
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de PDV (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de PDV (1)    ${Caminho_Screenshots}PDV/Cadastro de PDVs
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Cadastro de Scripts
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/           Cadastro de Scripts
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de Script PDV (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Script PDV (1)    ${Caminho_Screenshots}PDV/Cadastro de Scripts
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Cadastro de Cupons de Desconto > Cadastro de Cupons de Desconto
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/Cadastro de Cupons de Desconto/           Cadastro de Cupons de Desconto
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/Cadastro de Cupons de Desconto/           Config. Cupons PDV
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Windows.Click         Cadastro de Cupons de Desconto
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Cadastro de Cupons Promocionais (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot    Cadastro de Cupons Promocionais (1)    ${Caminho_Screenshots}PDV/Cadastro de Cupons de Desconto/Config. Cupons PDV
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Cadastro de Cupons de Desconto > Config. Cupons Bilheteria
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/Cadastro de Cupons de Desconto/           Config. Cupons Bilheteria
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Windows.Click         Cadastro de Cupons de Desconto
    RPA.Desktop.Press Keys    N
    RPA.Windows.Get Text      Cadastro de Cupons de Bilheteria (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot    Cadastro de Cupons de Bilheteria (1)    ${Caminho_Screenshots}PDV/Cadastro de Cupons de Desconto/Config. Cupons Bilheteria
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Configuração para impressão de comandas
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/           Configuração para impressão de comandas
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
    RPA.Windows.Click         Sim

PDV > Cadastro de Tipos de Pensão
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/           Cadastro de Tipos de Pensão
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Tipos de Pensão (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tipos de Pensão (1)    ${Caminho_Screenshots}PDV/Cadastro de Tipos de Pensão
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Motivos de Cancelamento
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/           Motivos de Cancelamento
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Motivo do Cancelamento (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Motivo do Cancelamento (1)    ${Caminho_Screenshots}PDV/Motivos de Cancelamento
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Motivos de Sangria/Suprimento
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/           Motivos de Sangria_Suprimento
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Motivo de Sangria/Suprimento (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Motivo de Sangria/Suprimento (1)    ${Caminho_Screenshots}PDV/Motivos de Sangria_Suprimento
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Cadastro de Descontos NFC
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/           Cadastro de Descontos NFC
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Cadastro de Descontos PDV (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Descontos PDV (1)    ${Caminho_Screenshots}PDV/Cadastro de Descontos NFC
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Tipos de Locação
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/           Tipos de Locação
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Cadastro de Tipo de Guarda Volumes (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tipo de Guarda Volumes (1)    ${Caminho_Screenshots}PDV/Tipos de Locação
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Cadastro/Configuração Grupos de Locação
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/           Cadastro_Configuração Grupos de Locação
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    N
    RPA.Windows.Get Text      Cadastro de Setores/Grupos de Locações (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Setores/Grupos de Locações (1)    ${Caminho_Screenshots}PDV/Cadastro_Configuração Grupos de Locação
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Ambientes para Mesas/Totens/Comandas/Delivery
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/           Ambientes para Mesas_Totens_Comandas_Delivery
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    B
    RPA.Windows.Get Text      Cadastro de Ambientes para Mesas/Totens/Comanda/Delivery (1)
    BaseDesktop.Screenshot    Cadastro de Ambientes para Mesas/Totens/Comanda/Delivery (1)    ${Caminho_Screenshots}PDV/Ambientes para Mesas_Totens_Comandas_Delivery
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Grades para Mesas/Totens/Comanda
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/           Grades para Mesas_Totens_Comanda
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Grades para Mesas/Totens/Comanda (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Grades para Mesas/Totens/Comanda (1)    ${Caminho_Screenshots}PDV/Grades para 
    RPA.Windows.Click         Confirmar
    Fechar janela
    RPA.Windows.Click         OK


PDV > Configuração de Ambiente por Horários
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/           Configuração de Ambiente por Horários
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
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/           Vincular NFC com Mesa_Cartão
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    V
    RPA.Windows.Get Text      Vincular NFC com Mesa/Cartão (1)
     RPA.Windows.Click        Carregar
    BaseDesktop.Screenshot    Vincular NFC com Mesa/Cartão (1)    ${Caminho_Screenshots}PDV/Vincular NFC com Mesa_Cartão
    RPA.Windows.Click         OK
    Fechar janela

PDV > Tipo de Crédito Interno
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/           Tipo de Crédito Interno
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Cadastro de Tipos de Crédito Interno (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tipos de Crédito Interno (1)    ${Caminho_Screenshots}PDV/Tipo de Crédito Interno
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Cadastro de Tipos de Cartão para Crédito Interno
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/           Cadastro de Tipos de Cartão para Crédito Interno
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Tipo de Cartão de Crédito Interno (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tipo de Cartão de Crédito Interno (1)    ${Caminho_Screenshots}PDV/Cadastro de Tipos de Cartão para Crédito Interno
    Fechar janela
    RPA.Windows.Click         Sim

PDV > Taxa de Entrega
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/           Taxa de Entrega
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    X
    RPA.Windows.Get Text      Cadastro de Taxa de Entrega (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Taxa de Entrega (1)    ${Caminho_Screenshots}PDV/Taxa de Entrega
    Fechar janela
    RPA.Windows.Click         Sim

Encerrar
    Encerrar tudo