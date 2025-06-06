*** Settings ***
Documentation    Smoke Test: Compras
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_compras


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Compras/Cadastros/    

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

Categorias de Terceiros
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            Categorias de Terceiros
    Cadastros
    RPA.Windows.Click       Categorias de Terceiros
    RPA.Windows.Get Text    Cadastro de Categorias de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Categorias de Terceiros (1)    ${Caminho_Screenshots}Categorias de Terceiros
    Fechar janela
    RPA.Windows.Click       Sim

Grupo de Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Grupo de Terceiros
    Cadastros
    RPA.Windows.Click       Grupo de Terceiros
    RPA.Windows.Get Text    Cadastro de Grupo de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Grupo de Terceiros (1)    ${Caminho_Screenshots}Grupo de Terceiros
    Fechar Janela
    RPA.Windows.Click       Sim

Limite de Crédito
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Limite de Crédito
    Cadastros
    RPA.Windows.Click       Limite de Crédito
    RPA.Windows.Get Text    Cadastro de Limite de Crédito (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Cadastro de Limite de Crédito (1)    ${Caminho_Screenshots}Limite de Crédito
    RPA.Windows.Click       Confirmar
    Fechar Janela

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

Itens > Estampas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Estampas
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Cadastro de Estampas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Estampas (1)    ${Caminho_Screenshots}Itens/Estampas
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Marcas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Marcas
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Cadastro de Marcas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Marcas (1)    ${Caminho_Screenshots}Itens/Marcas
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Culturas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Culturas
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Cadastro de Culturas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Culturas (1)    ${Caminho_Screenshots}Itens/Culturas
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Cores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Cores
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Cadastro de Cores (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Cores (1)    ${Caminho_Screenshots}Itens/Cores
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

Itens > Tabela de Preços
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Tabela de Preços
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  B
    RPA.Windows.Get Text    Tabela de Preços (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Tabela de Preços (1)    ${Caminho_Screenshots}Itens/Tabela de Preços
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Tabela de Umidade
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/             Tabela de Umidade
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  A       
    RPA.Windows.Get Text    Cadastro de Índices de Descontos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Índices de Descontos (1)    ${Caminho_Screenshots}Itens/Tabela de Umidade
    Fechar janela
    RPA.Windows.Click       Sim

Itens > Descontos para Grãos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Descontos para Grãos
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Windows.Click         Descontos para Grãos  
    RPA.Windows.Get Text      Cadastro de Descontos/Classificações para Grãos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Descontos/Classificações para Grãos (1)    ${Caminho_Screenshots}Itens/Descontos para Grãos
    Fechar janela
    RPA.Windows.Click       Sim

Itens > Classificação de Grãos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Classificação de Grãos
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    C  
    RPA.Windows.Get Text      Cadastro de Classificação de Grãos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Classificação de Grãos (1)    ${Caminho_Screenshots}Itens/Classificação de Grãos
    Fechar janela
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
    RPA.Windows.Click       Sim

Itens > Tipo Serviço
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Tipo Serviço
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    V  
    RPA.Windows.Get Text      Tipo Serviço (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Tipo Serviço (1)    ${Caminho_Screenshots}Itens/Tipo Serviço
    Fechar janela

Itens > Gênero produto
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Gênero produto
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    N  
    RPA.Windows.Get Text      Gênero Produto (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Gênero Produto (1)    ${Caminho_Screenshots}Itens/Gênero produto
    Fechar janela

Itens > Safras
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                         Safras
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    S 
    RPA.Windows.Get Text      Cadastro de Safras (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Safras (1)    ${Caminho_Screenshots}Itens/Safras
    Fechar janela
    
Itens > Categorias
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/              Categorias
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Cadastro de Categorias de Produtos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Categorias de Produtos (1)    ${Caminho_Screenshots}Itens/Categorias
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Sementes > Peneira
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/Sementes/              Peneira
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Sementes
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Cadastro de Sementes - Peneiras (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Sementes - Peneiras (1)    ${Caminho_Screenshots}Itens/Sementes/Peneira
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Sementes > Classe
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/Sementes/              Classe
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Sementes
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Sementes - Classes (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Sementes - Classes (1)    ${Caminho_Screenshots}Itens/Sementes/Classe
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Sementes > Cultivar
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/Sementes/              Cultivar
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Sementes
    RPA.Desktop.Press Keys  U
    RPA.Windows.Get Text    Cadastro de Sementes - Cultivar (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Sementes - Cultivar (1)    ${Caminho_Screenshots}Itens/Sementes/Cultivar
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Sementes > Tratamento
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/Sementes/              Tratamento
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Sementes
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Sementes - Tratamentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Sementes - Tratamentos (1)    ${Caminho_Screenshots}Itens/Sementes/Tratamento
    Fechar Janela
    RPA.Windows.Click       Sim

Itens > Sementes > Variedade
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Itens/Sementes/              Variedade
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Sementes
    RPA.Desktop.Press Keys  V
    RPA.Windows.Get Text    Cadastro de Sementes - Variedades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Sementes - Variedades (1)    ${Caminho_Screenshots}Itens/Sementes/Variedade
    Fechar Janela
    RPA.Windows.Click       Sim

Setores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}           Setores    
    Cadastros
    RPA.Windows.Click       Setores
    RPA.Windows.Get Text    Cadastro de Setores (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Setores (1)    ${Caminho_Screenshots}Setores
    Fechar Janela
    RPA.Windows.Click       Sim

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

Observações
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Observações
    Cadastros
    RPA.Windows.Click       Observações
    RPA.Windows.Get Text    Cadastro de Observações Fiscais (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Observações Fiscais (1)    ${Caminho_Screenshots}Observações
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
    RPA.Windows.Click       Tipos de Visitas
    RPA.Windows.Get Text    Cadastro de Tipos de Visitas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Visitas (1)    ${Caminho_Screenshots}Tipos de Visitas
    Fechar Janela
    RPA.Windows.Click       Sim

Configuração de mensagem para nota fiscal
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Configuração de mensagem para nota fiscal
    Cadastros
    RPA.Windows.Click       Configuração de mensagem para nota fiscal
    RPA.Windows.Get Text    Configuração de mensagem para nota fiscal (1)
    RPA.Windows.Click       Abrir
    BaseDesktop.Screenshot  Configuração de mensagem para nota fiscal (1)    ${Caminho_Screenshots}Configuração de mensagem para nota fiscal
    RPA.Desktop.Press Keys  Enter
    Fechar Janela

Custos Avulsos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Custos Avulsos
    Cadastros
    RPA.Windows.Click       Custos avulsos
    RPA.Windows.Get Text    Cadastro de Custos Avulsos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Custos Avulsos (1)    ${Caminho_Screenshots}Custos Avulsos
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

Tipos de Requisição de Compra
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Tipos de Requisição de Compra
    Cadastros
    RPA.Windows.Click       Tipos de Requisição de Compra
    RPA.Windows.Get Text    Tipo de Requisição de Compra (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Tipo de Requisição de Compra (1)    ${Caminho_Screenshots}Tipos de Requisição de Compra
    Fechar Janela
    RPA.Windows.Click       Sim

Países
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}           Países
    Cadastros
    RPA.Windows.Click         Países
    RPA.Windows.Get Text      Cadastro de Países (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Países (1)    ${Caminho_Screenshots}Países
    Fechar janela
    RPA.Windows.Click       Sim

Estados
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}           Estados
    Cadastros
    RPA.Windows.Click         Estados
    RPA.Windows.Get Text      Cadastro de Estados (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Estados (1)    ${Caminho_Screenshots}Estados
    Fechar janela
    RPA.Windows.Click         Sim

Municípios
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}           Municípios
    Cadastros
    RPA.Windows.Click         Municípios
    RPA.Windows.Get Text      Cadastro de Municípios (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
    Fechar janela
    RPA.Windows.Click       Sim

Localidades
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}           Localidades
    Cadastros
    RPA.Windows.Click         Localidades
    RPA.Windows.Get Text      Cadastro de Localidades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Localidades (1)    ${Caminho_Screenshots}Localidades
    Fechar janela
    RPA.Windows.Click       Sim

Regiões
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}           Regiões
    Cadastros
    RPA.Windows.Click         Regiões
    RPA.Windows.Get Text      Cadastro de Regiões (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Regiões (1)    ${Caminho_Screenshots}Regiões
    Fechar janela
    RPA.Windows.Click       Sim

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

Fiscal > ICMS > Tabela Tributária - ICMS Monofásico
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/ICMS/           Tabela Tributária - ICMS Monofásico
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    B
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do Monofásico (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Tabelas Tributárias do Monofásico (1)    ${Caminho_Screenshots}Fiscal/ICMS/Tabela Tributária - ICMS Monofásico
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

Financeiro > Portadores
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Financeiro/          Portadores
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Cadastro de Portadores (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Portadores (1)    ${Caminho_Screenshots}Financeiro/Portadores
    Fechar janela
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

Parâmetros > Sistema Web
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/           Sistema Web
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Cadastro de Login Portal Web (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Login Portal Web (1)    ${Caminho_Screenshots}Parâmetros/Sistema Web
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Configuração para Entrada de CT-e
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/           Configuração para Entrada de CT-e
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Configurações para Entrada de CT-e (1)
    RPA.Windows.Click         Abrir
    RPA.Desktop.Press Keys    Down
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Configurações para Entrada de CT-e (1)    ${Caminho_Screenshots}Parâmetros/Configuração para Entrada de CT-e
    Fechar janela

Encerrar
    Encerrar Tudo