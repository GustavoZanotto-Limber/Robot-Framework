*** Settings ***
Documentation    Smoke Test: Compras
Resource         ../../../../Resources/Base/Base_Desktop.robot
Suite Setup         Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/SmokeTest/Bilheteria/ERP/Compras/Cadastros/    
${nome_print}
${nome_exe}=    cde_win_compras

*** Keywords ***


*** Test Cases ***

Terceiros
    ${nome_print}=     Set Variable     Terceiros
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click       Terceiros
    RPA.Windows.Get Text    Cadastro de Terceiros (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Terceiros (1)    ${Caminho_Screenshots}Terceiros
    RPA.Windows.Click       Cancelar (F3)
    Fechar com Sim

Categorias de Terceiros
    ${nome_print}=     Set Variable     Categorias de Terceiros
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click       Categorias de Terceiros
    RPA.Windows.Get Text    Cadastro de Categorias de Terceiros (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Categorias de Terceiros (1)    ${Caminho_Screenshots}Categorias de Terceiros
    Fechar com Sim

Grupo de Terceiros
    ${nome_print}=     Set Variable     Grupo de Terceiros
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Grupo de Terceiros
    RPA.Windows.Get Text    Cadastro de Grupo de Terceiros (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Grupo de Terceiros (1)    ${Caminho_Screenshots}Grupo de Terceiros
    Fechar com Sim

Limite de Crédito
    ${nome_print}=     Set Variable     Limite de Crédito
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click       Limite de Crédito
    RPA.Windows.Get Text    Cadastro de Limite de Crédito (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    Base_Desktop.Screenshot  Cadastro de Limite de Crédito (1)    ${Caminho_Screenshots }Limite de Crédito
    RPA.Windows.Click       Confirmar
    Fechar Janela

Itens > Itens
    ${nome_print}=     Set Variable     Itens
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest       
    Cadastros    
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Cadastro de Itens (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Itens (1)    ${Caminho_Screenshots}Itens/Itens
    Fechar com Sim

Itens > Depósitos
    ${nome_print}=     Set Variable     Depósitos
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Cadastro de Depósitos (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Depósitos (1)    ${Caminho_Screenshots}Itens/Depósitos
    Fechar com Sim

Itens > Unidades
    ${nome_print}=     Set Variable     Unidades
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  U
    RPA.Windows.Get Text    Cadastro de Unidades (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Unidades (1)    ${Caminho_Screenshots}Itens/Unidades
    Fechar com Sim

Itens > Estampas
    ${nome_print}=     Set Variable     Estampas
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Cadastro de Estampas (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Estampas (1)    ${Caminho_Screenshots}Itens/Estampas
    Fechar com Sim

Itens > Marcas
    ${nome_print}=     Set Variable     Marcas
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Cadastro de Marcas (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Marcas (1)    ${Caminho_Screenshots}Itens/Marcas
    Fechar com Sim

Itens > Culturas
    ${nome_print}=     Set Variable     Culturas
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Cadastro de Culturas (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Culturas (1)    ${Caminho_Screenshots}Itens/Culturas
    Fechar com Sim

Itens > Cores
    ${nome_print}=     Set Variable     Cores
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Cadastro de Cores (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Cores (1)    ${Caminho_Screenshots}Itens/Cores
    Fechar com Sim

Itens > Tamanhos
    ${nome_print}=     Set Variable     Tamanhos
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tamanhos (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Tamanhos (1)    ${Caminho_Screenshots}Itens/Tamanhos
    Fechar com Sim

Itens > Tabela de Preços
    ${nome_print}=     Set Variable     Tabela de Preços
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  B
    RPA.Windows.Get Text    Tabela de Preços (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Tabela de Preços (1)    ${Caminho_Screenshots}Itens/Tabela de Preços
    Fechar com Sim

Itens > Tabela de Umidade
    ${nome_print}=     Set Variable     Tabela de Umidade
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  A       
    RPA.Windows.Get Text    Cadastro de Índices de Descontos (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Índices de Descontos (1)    ${Caminho_Screenshots}Itens/Tabela de Umidade
    Fechar com Sim

Itens > Descontos para Grãos
    ${nome_print}=     Set Variable     Descontos para Grãos
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Windows.Click         Descontos para Grãos  
    RPA.Windows.Get Text      Cadastro de Descontos/Classificações para Grãos (1)
    RPA.Windows.Click         Novo
    Base_Desktop.Screenshot    Cadastro de Descontos/Classificações para Grãos (1)    ${Caminho_Screenshots}Itens/Descontos para Grãos
    Fechar com Sim

Itens > Classificação de Grãos
    ${nome_print}=     Set Variable     Classificação de Grãos
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    C  
    RPA.Windows.Get Text      Cadastro de Classificação de Grãos (1)
    RPA.Windows.Click         Novo
    Base_Desktop.Screenshot    Cadastro de Classificação de Grãos (1)    ${Caminho_Screenshots}Itens/Classificação de Grãos
    Fechar com Sim

Itens > Grades
    ${nome_print}=     Set Variable     Grades
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    G  
    RPA.Windows.Get Text      Cadastro de Grades (1)
    RPA.Windows.Click         Novo
    Base_Desktop.Screenshot    Cadastro de Grades (1)    ${Caminho_Screenshots}Itens/Grades
    Fechar com Sim

Itens > Fabricantes
    ${nome_print}=     Set Variable     Fabricantes
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    F  
    RPA.Windows.Get Text      Cadastro de Fabricantes (1)
    RPA.Windows.Click         Novo
    Base_Desktop.Screenshot    Cadastro de Fabricantes (1)    ${Caminho_Screenshots}Itens/Fabricantes
    Fechar com Sim

Itens > Tipo Serviço
    ${nome_print}=     Set Variable     Tipo Serviço
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    V  
    RPA.Windows.Get Text      Tipo Serviço (1)
    RPA.Windows.Click         Novo
    Base_Desktop.Screenshot    Tipo Serviço (1)    ${Caminho_Screenshots}Itens/Tipo Serviço
    Fechar janela

Itens > Gênero produto
    ${nome_print}=     Set Variable     Gênero produto
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    N  
    RPA.Windows.Get Text      Gênero Produto (1)
    RPA.Windows.Click         Novo
    Base_Desktop.Screenshot    Gênero Produto (1)    ${Caminho_Screenshots}Itens/Gênero produto
    Fechar janela

Itens > Safras
    ${nome_print}=     Set Variable     Safras
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    S 
    RPA.Windows.Get Text      Cadastro de Safras (1)
    RPA.Windows.Click         Novo
    Base_Desktop.Screenshot    Cadastro de Safras (1)    ${Caminho_Screenshots}Itens/Safras
    Fechar janela
    
Itens > Categorias
    ${nome_print}=     Set Variable     Categorias
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Cadastro de Categorias de Produtos (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Categorias de Produtos (1)    ${Caminho_Screenshots}Itens/Categorias
    Fechar com Sim

Itens > Sementes > Peneira
    ${nome_print}=     Set Variable     Peneira
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Sementes
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Cadastro de Sementes - Peneiras (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Sementes - Peneiras (1)    ${Caminho_Screenshots}Itens/Sementes/Peneira
    Fechar com Sim

Itens > Sementes > Classe
    ${nome_print}=     Set Variable     Classe
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Sementes
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Sementes - Classes (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Sementes - Classes (1)    ${Caminho_Screenshots}Itens/Sementes/Classe
    Fechar com Sim

Itens > Sementes > Cultivar
    ${nome_print}=     Set Variable     Cultivar
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Sementes
    RPA.Desktop.Press Keys  U
    RPA.Windows.Get Text    Cadastro de Sementes - Cultivar (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Sementes - Cultivar (1)    ${Caminho_Screenshots}Itens/Sementes/Cultivar
    Fechar com Sim

Itens > Sementes > Tratamento
    ${nome_print}=     Set Variable     Tratamento
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Sementes
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Sementes - Tratamentos (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Sementes - Tratamentos (1)    ${Caminho_Screenshots}Itens/Sementes/Tratamento
    Fechar com Sim

Itens > Sementes > Variedade
    ${nome_print}=     Set Variable     Variedade
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Itens
    RPA.Windows.Click       Sementes
    RPA.Desktop.Press Keys  V
    RPA.Windows.Get Text    Cadastro de Sementes - Variedades (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Sementes - Variedades (1)    ${Caminho_Screenshots}Itens/Sementes/Variedade
    Fechar com Sim

Setores
    ${nome_print}=     Set Variable     Setores
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest        
    Cadastros
    RPA.Windows.Click       Setores
    RPA.Windows.Get Text    Cadastro de Setores (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Setores (1)    ${Caminho_Screenshots}Setores
    Fechar com Sim

Veículos > Veículos
    ${nome_print}=     Set Variable     Veículos
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Veículos
    RPA.Desktop.Press Keys  V
    RPA.Windows.Get Text    Cadastro de Veículos (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Veículos (1)    ${Caminho_Screenshots}Veículos/Veículos
    Fechar Janela

Veículos > Tipos de Veículos
    ${nome_print}=     Set Variable     Tipos de Veículos
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Veículos
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tipos de Veículos (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Tipos de Veículos (1)    ${Caminho_Screenshots}Veículos/Tipos de Veículos
    Fechar com Sim

Observações
    ${nome_print}=     Set Variable     Observações
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Observações
    RPA.Windows.Get Text    Cadastro de Observações Fiscais (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Observações Fiscais (1)    ${Caminho_Screenshots}Observações
    Fechar com Sim

Feriados
    ${nome_print}=     Set Variable     Feriados
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Feriados
    RPA.Windows.Get Text    Cadastro de Feriados (1)
    RPA.Windows.Click       Cadastrar Feriados deste ano
    Base_Desktop.Screenshot  Cadastro de Feriados (1)    ${Caminho_Screenshots}Feriados
    RPA.Windows.Click       OK
    Fechar com Sim

Tipos de Visitas
    ${nome_print}=     Set Variable     Tipos de Visitas
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Tipos de Visitas
    RPA.Windows.Get Text    Cadastro de Tipos de Visitas (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Tipos de Visitas (1)    ${Caminho_Screenshots}Tipos de Visitas
    Fechar com Sim

Configuração de mensagem para nota fiscal
    ${nome_print}=     Set Variable     Configuração de mensagem para nota fiscal
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Configuração de mensagem para nota fiscal
    RPA.Windows.Get Text    Configuração de mensagem para nota fiscal (1)
    RPA.Windows.Click       Abrir
    Base_Desktop.Screenshot  Configuração de mensagem para nota fiscal (1)    ${Caminho_Screenshots}Configuração de mensagem para nota fiscal
    RPA.Desktop.Press Keys  Enter
    Fechar Janela

Custos Avulsos
    ${nome_print}=     Set Variable     Custos Avulsos
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Custos avulsos
    RPA.Windows.Get Text    Cadastro de Custos Avulsos (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Custos Avulsos (1)    ${Caminho_Screenshots}Custos Avulsos
    Fechar com Sim

Documentos > Tipos de Documentos
    ${nome_print}=     Set Variable     Tipos de Documentos
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Documentos
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tipos de Documentos (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Tipos de Documentos (1)    ${Caminho_Screenshots}Documentos/Tipos de Documentos
    Fechar com Sim

Tipos de Requisição de Compra
    ${nome_print}=     Set Variable     Tipos de Requisição de Compra
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click       Tipos de Requisição de Compra
    RPA.Windows.Get Text    Tipo de Requisição de Compra (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Tipo de Requisição de Compra (1)    ${Caminho_Screenshots}Tipos de Requisição de Compra
    Fechar com Sim

Países
    ${nome_print}=     Set Variable     Países
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Países
    RPA.Windows.Get Text      Cadastro de Países (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Países (1)    ${Caminho_Screenshots}Países
    Fechar com Sim

Estados
    ${nome_print}=     Set Variable     Estados
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Estados
    RPA.Windows.Get Text      Cadastro de Estados (1)
    RPA.Windows.Click         Novo
    Base_Desktop.Screenshot    Cadastro de Estados (1)    ${Caminho_Screenshots}Estados
    Fechar com Sim

Municípios
    ${nome_print}=     Set Variable     Municípios
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Municípios
    RPA.Windows.Get Text      Cadastro de Municípios (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
    Fechar com Sim

Localidades
    ${nome_print}=     Set Variable     Localidades
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Localidades
    RPA.Windows.Get Text      Cadastro de Localidades (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Localidades (1)    ${Caminho_Screenshots}Localidades
    Fechar com Sim

Regiões
    ${nome_print}=     Set Variable     Regiões
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Regiões
    RPA.Windows.Get Text      Cadastro de Regiões (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Regiões (1)    ${Caminho_Screenshots}Regiões
    Fechar com Sim

Fiscal > Configuração Int. Contabil
    ${nome_print}=     Set Variable     Configuração Int. Contabil
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Configuração para Integração Contábil (1)
    RPA.Windows.Click         Cooperado
    Base_Desktop.Screenshot    Configuração para Integração Contábil (1)    ${Caminho_Screenshots}Fiscal/Configuração Int. Contabil
    Fechar com Sim

Fiscal > Classificações Fiscais
    ${nome_print}=     Set Variable     Classificações Fiscais
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de Classificações Fiscais (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Classificações Fiscais (1)    ${Caminho_Screenshots}Fiscal/Classificações Fiscais
    Fechar com Sim

Fiscal > Mensagem de Notas Fiscais
    ${nome_print}=     Set Variable     Mensagem de Notas Fiscais
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    N
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Mensagens de Notas Fiscais (1)    ${Caminho_Screenshots}Fiscal/Mensagem de Notas Fiscais
    Fechar com Sim

Fiscal > Espécies de Documentos
    ${nome_print}=     Set Variable     Espécies de Documentos
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Espécies de Documentos (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Espécies de Documentos (1)    ${Caminho_Screenshots}Fiscal/Espécies de Documentos
    RPA.Windows.Click       OK
    Fechar janela

Fiscal > Operações Fiscais
    ${nome_print}=     Set Variable     Operações Fiscais
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Cadastro de Operações Fiscais (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Operações Fiscais (1)    ${Caminho_Screenshots}Fiscal/Operações Fiscais
    Fechar com Sim

Fiscal > Simples Nacional > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Simples Nacional
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do Simples Nacional (CSOSN) (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Tabelas Tributárias do Simples Nacional (CSOSN) (1)    ${Caminho_Screenshots}Fiscal/Simples Nacional/Tabela Tributária
    Fechar com Sim

Fiscal > Simples Nacional > Situação Tributária (CSOSN)
    ${nome_print}=     Set Variable     Situação Tributária (CSOSN)
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Simples Nacional
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situações Tributárias Simples Nacional (CSOSN) (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Situações Tributárias Simples Nacional (CSOSN) (1)    ${Caminho_Screenshots}Fiscal/Simples Nacional/Tabela Tributária
    Fechar com Sim

Fiscal > Séries
    ${nome_print}=     Set Variable     Séries
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Cadastro de Séries (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Séries (1)    ${Caminho_Screenshots}Fiscal/Séries
    Fechar com Sim

Fiscal > CFOP's
    ${nome_print}=     Set Variable     CFOP's
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de CFOP's (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de CFOP's (1)    ${Caminho_Screenshots}Fiscal/CFOP's
    Fechar com Sim

Fiscal > IPI > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         IPI
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabela Tributária do IPI (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Tabela Tributária do IPI (1)    ${Caminho_Screenshots}Fiscal/IPI/Tabela Tributária
    Fechar com Sim

Fiscal > IPI > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    Sleep                     0.1
    RPA.Windows.Click         IPI
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária do IPI (1)
    RPA.Windows.Click         Novo
    Base_Desktop.Screenshot    Cadastro de Situação Tributária do IPI (1)    ${Caminho_Screenshots}Fiscal/IPI/Situação Tributária
    Fechar com Sim

Fiscal > ICMS > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributária (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Tabelas Tributária (1)    ${Caminho_Screenshots}Fiscal/ICMS/Tabela Tributária
    Fechar com Sim

Fiscal > ICMS > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situações Tributárias do ICMS (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Situações Tributárias do ICMS (1)    ${Caminho_Screenshots}Fiscal/ICMS/Situação Tributária
    Fechar com Sim

Fiscal > ICMS > Tabela Tributária - FCP
    ${nome_print}=     Set Variable     Tabela Tributária - FCP
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro da Tabela Tributária FCP (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro da Tabela Tributária FCP (1)    ${Caminho_Screenshots}Fiscal/ICMS/Tabela Tributária - FCP
    Fechar com Sim

Fiscal > ICMS > Tabela Tributária - ICMS Monofásico
    ${nome_print}=     Set Variable     Tabela Tributária - ICMS Monofásico
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    B
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do Monofásico (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Tabelas Tributárias do Monofásico (1)    ${Caminho_Screenshots}Fiscal/ICMS/Tabela Tributária - ICMS Monofásico
    Fechar com Sim

Fiscal > ICMS > Configuração Benefício Fiscal
    ${nome_print}=     Set Variable     Configuração Benefício Fiscal
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configuração Benefício Fiscal (1)
    RPA.Windows.Click       Carregar
    Base_Desktop.Screenshot    Configuração Benefício Fiscal (1)    ${Caminho_Screenshots}Fiscal/ICMS/Configuração Benefício Fiscal
    Fechar janela 

Fiscal > PIS > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         PIS
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do PIS (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Tabelas Tributárias do PIS (1)    ${Caminho_Screenshots}Fiscal/PIS/Tabela Tributária
    Fechar com Sim

Fiscal > PIS > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         PIS
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária PIS (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Situação Tributária PIS (1)    ${Caminho_Screenshots}Fiscal/PIS/Situação Tributária
    Fechar com Sim

Fiscal > COFINS > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         COFINS
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do COFINS (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Tabelas Tributárias do COFINS (1)    ${Caminho_Screenshots}Fiscal/COFINS/Tabela Tributária
    Fechar com Sim

Fiscal > COFINS > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         COFINS
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária COFINS (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Situação Tributária COFINS (1)    ${Caminho_Screenshots}Fiscal/COFINS/Situação Tributária
    Fechar com Sim

Fiscal > CSLL > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         CSLL
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do CSLL (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Tabelas Tributárias do CSLL (1)    ${Caminho_Screenshots}Fiscal/CSLL/Tabela Tributária
    Fechar com Sim

Fiscal > CSLL > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         CSLL
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária CSLL (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Situação Tributária CSLL (1)    ${Caminho_Screenshots}Fiscal/CSLL/Situação Tributária
    Fechar com Sim

Fiscal > IRPJ > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         IRPJ
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do IRPJ (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Tabelas Tributárias do IRPJ (1)    ${Caminho_Screenshots}Fiscal/IRPJ/Tabela Tributária
    Fechar com Sim

Fiscal > IRPJ > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         IRPJ
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária IRPJ (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Situação Tributária IRPJ (1)    ${Caminho_Screenshots}Fiscal/IRPJ/Situação Tributária
    Fechar com Sim

Fiscal > ISSQN > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ISSQN
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabela Tributária ISSQN (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Tabela Tributária ISSQN (1)    ${Caminho_Screenshots}Fiscal/ISSQN/Tabela Tributária
    Fechar com Sim

Fiscal > Tabela de Alíquota Nacional de Impostos por NCM
    ${nome_print}=     Set Variable     Tabela de Alíquota Nacional de Impostos por NCM
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Tabela de Alíquota Nacional de Impostos de Produtos/Serviços - Lei n° 12.741, de 8 de dezembro de 2012 (1)
    RPA.Windows.Click       Carregar
    Base_Desktop.Screenshot    Tabela de Alíquota Nacional de Impostos de Produtos/Serviços - Lei n° 12.741, de 8 de dezembro de 2012 (1)    ${Caminho_Screenshots}Fiscal/Tabela de Alíquota Nacional de Impostos por NCM
    Fechar janela

Fiscal > Impostos Retidos > IR > Tabela Tributária - Pessoa jurídica
    ${nome_print}=     Set Variable     Tabela Tributária - Pessoa jurídica
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         IR
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Tabela Tributaria de Retenção de IR (Pessoa Jurídica) (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Tabela Tributaria de Retenção de IR (Pessoa Jurídica) (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/IR/Tabela Tributária - Pessoa jurídica
    Fechar com Sim

Fiscal > Impostos Retidos > IR > Tabela Tributária - Pessoa Física
    ${nome_print}=     Set Variable     Tabela Tributária - Pessoa Física
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         IR
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Tabela Tributaria de Retenção de IR (Pessoa Física) (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Tabela Tributaria de Retenção de IR (Pessoa Física) (1)   ${Caminho_Screenshots}Fiscal/Impostos Retidos/IR/Tabela Tributária - Pessoa Física
    Fechar com Sim

Fiscal > Impostos Retidos > IR > Cadastro de Serviço
    ${nome_print}=     Set Variable     Cadastro de Serviço
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         IR
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Serviços para Retenção de IRRF (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Serviços para Retenção de IRRF (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/IR/Cadastro de Serviço
    Fechar com Sim

Fiscal > Impostos Retidos > CSRF > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         CSRF
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Tabela Tributaria de Retenção de PIS/COFINS/CSLL (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Tabela Tributaria de Retenção de PIS/COFINS/CSLL (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/CSRF/Tabela Tributária
    Fechar com Sim

Fiscal > Impostos Retidos > CSRF > Cadastro de Serviços
    ${nome_print}=     Set Variable     Cadastro de Serviços
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         CSRF
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Serviços para Retenção de PIS/COFINS/CSLL (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Serviços para Retenção de PIS/COFINS/CSLL (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/CSRF/Cadastro de Serviços
    Fechar com Sim

Fiscal > Impostos Retidos > INSS > Tabela Tributária - Pessoa jurídica
    ${nome_print}=     Set Variable     Tabela Tributária - Pessoa jurídica
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         INSS
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Tabela Tributaria de Retenção de INSS (Pessoa Jurídica) (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Tabela Tributaria de Retenção de INSS (Pessoa Jurídica) (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/INSS/Tabela Tributária - Pessoa jurídica
    Fechar com Sim

Fiscal > Impostos Retidos > INSS > Tabela Tributária - Pessoa Física
    ${nome_print}=     Set Variable     Tabela Tributária - Pessoa Física
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         INSS
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Tabela Tributaria de Retenção de INSS (Pessoa Física) (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Tabela Tributaria de Retenção de INSS (Pessoa Física) (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/INSS/Tabela Tributária - Pessoa Física
    Fechar com Sim

Fiscal > Impostos Retidos > INSS > Cadastro de Serviços
    ${nome_print}=     Set Variable     Cadastro de Serviços
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         INSS
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Serviços para Retenção de INSSRF (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Serviços para Retenção de INSSRF (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/INSS/Cadastro de Serviços
    Fechar com Sim

Fiscal > Impostos Retidos > SEST/SENAT
    ${nome_print}=     Set Variable     SEST_SENAT
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Tabela Tributária de SEST/SENAT (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Tabela Tributária de SEST/SENAT (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/SEST_SENAT
    Fechar com Sim

Fiscal > Classificações de Serviços Prestado - REINF
    ${nome_print}=     Set Variable     Classificações de Serviços Prestado - REINF
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    V
    RPA.Windows.Get Text      Classificações de Serviços Prestados - REINF (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    Base_Desktop.Screenshot    Classificações de Serviços Prestados - REINF (1)    ${Caminho_Screenshots}Fiscal/Classificações de Serviços Prestado - REINF
    RPA.Windows.Click         Confirmar
    Fechar janela

Financeiro > Portadores
    ${nome_print}=     Set Variable     Portadores
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Cadastro de Portadores (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Portadores (1)    ${Caminho_Screenshots}Financeiro/Portadores
    Fechar com Sim

Financeiro > Formas de Pagamento
    ${nome_print}=     Set Variable     Formas de Pagamento
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest        
    Cadastros
    RPA.Windows.Click         Financeiro
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Formas de Pagamento (1)
    RPA.Windows.Click         Novo
    Base_Desktop.Screenshot    Formas de Pagamento (1)    ${Caminho_Screenshots}Financeiro/Formas de Pagamento
    Fechar com Sim

Parâmetros > Empresas
    ${nome_print}=     Set Variable     Empresas
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest        
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot                  Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar com Sim

Parâmetros > Estabelecimentos
    ${nome_print}=     Set Variable     Estabelecimentos
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest        
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot                  Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar com Sim

Parâmetros > Usuários
    ${nome_print}=     Set Variable     Usuários
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    u
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    RPA.Windows.Click         Novo
    Base_Desktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar com Sim

Parâmetros > Grupos Usuários
    ${nome_print}=     Set Variable     Grupos Usuários
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot                  Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupos Usuários
    Fechar com Sim

Parâmetros > Configurações de Estação
    ${nome_print}=     Set Variable     Configurações de Estação
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    Base_Desktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações de Estação
    Fechar janela

Parâmetros > Sistema Web
    ${nome_print}=     Set Variable     Sistema Web
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Cadastro de Login Portal Web (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot    Cadastro de Login Portal Web (1)    ${Caminho_Screenshots}Parâmetros/Sistema Web
    Fechar com Sim

Parâmetros > Configuração para Entrada de CT-e
    ${nome_print}=     Set Variable     Configuração para Entrada de CT-e
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Configurações para Entrada de CT-e (1)
    RPA.Windows.Click         Abrir
    RPA.Desktop.Press Keys    Down
    RPA.Desktop.Press Keys    Enter
    Base_Desktop.Screenshot    Configurações para Entrada de CT-e (1)    ${Caminho_Screenshots}Parâmetros/Configuração para Entrada de CT-e
    Fechar janela

Parâmetros > Tópicos de Avaliação de fornecedor
    ${nome_print}=     Set Variable     Tópicos de Avaliação de fornecedor
    [Tags]   SmokeERP    Compras    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Tópicos de Avaliação de Fornecedor (1)
    RPA.Windows.Click         Novo
    Base_Desktop.Screenshot    Tópicos de Avaliação de Fornecedor (1)    ${Caminho_Screenshots}Parâmetros/Tópicos de Avaliação de fornecedor
    Fechar com Sim