*** Settings ***
Documentation    Smoke Test: Balança
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/SmokeTest/Bilheteria/ERP/Balanças/Cadastros/    
${nome_print}
${nome_exe}=    cde_win_Balanca

*** Keywords ***


*** Test Cases ***

Produtos
    ${nome_print}=            Set Variable     Produtos
    [Tags]   SmokeERP    Balancas    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Produtos
    RPA.Windows.Get Text      Cadastro de Itens (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Itens (1)    ${Caminho_Screenshots}Produtos
    Fechar com Sim
    
Terceiros
    ${nome_print}=     Set Variable     Terceiros
    [Tags]   SmokeERP    Balancas    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Terceiros
    RPA.Windows.Get Text      Cadastro de Terceiros (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Terceiros (1)    ${Caminho_Screenshots}Terceiros
    RPA.Windows.Click         Cancelar (F3)
    Fechar com Sim

Operações Fiscais
    ${nome_print}=     Set Variable     Operações Fiscais
    [Tags]   SmokeERP    Balancas    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Operações Fiscais
    RPA.Windows.Get Text      Cadastro de Operações Fiscais (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Operações Fiscais (1)    ${Caminho_Screenshots}Operações Fiscais
    Fechar com Sim

Descontos/Classificações para Grãos
    ${nome_print}=     Set Variable     Descontos_Classificações para Grãos
    [Tags]   SmokeERP    Balancas    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Descontos/Classificações para Grãos
    RPA.Windows.Get Text      Cadastro de Descontos/Classificações para Grãos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Descontos/Classificações para Grãos (1)    ${Caminho_Screenshots}Descontos_Classificações para Grãos
    Fechar com Sim

Classificação de Grãos
    ${nome_print}=     Set Variable     Classificação de Grãos
    [Tags]   SmokeERP    Balancas    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Classificação de Grãos
    RPA.Windows.Get Text      Cadastro de Classificação de Grãos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Classificação de Grãos (1)    ${Caminho_Screenshots}Classificação de Grãos
    Fechar com Sim

Tabela de Índices de Descontos
    ${nome_print}=     Set Variable     Tabela de Índices de Descontos
    [Tags]   SmokeERP    Balancas    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Tabela de Índices de Descontos
    RPA.Windows.Get Text      Cadastro de Índices de Descontos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Índices de Descontos (1)    ${Caminho_Screenshots}Tabela de Índices de Descontos
    Fechar com Sim

Melhorias do Peso Hectolítrico
    ${nome_print}=     Set Variable     Melhorias do Peso Hectolítrico
    [Tags]   SmokeERP    Balancas    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Melhorias do Peso Hectolítrico
    RPA.Windows.Get Text      Cadastro de Melhorias do Peso Hectolítrico (PH) (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Melhorias do Peso Hectolítrico (PH) (1)    ${Caminho_Screenshots}Melhorias do Peso Hectolítrico
    Fechar com Sim

Tipos de Romaneio
    ${nome_print}=     Set Variable     Tipos de Romaneio
    [Tags]   SmokeERP    Balancas    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Tipos de Romaneio
    RPA.Windows.Get Text      Cadastro de Tipos de Romaneio (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Tipos de Romaneio (1)    ${Caminho_Screenshots}Tipos de Romaneio
    Fechar com Sim

Conf. Modelos Impressao de Processos
    ${nome_print}=     Set Variable     Conf. Modelos Impressao de Processos
    [Tags]   SmokeERP    Balancas    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Conf. Modelos Impressao de Processos
    RPA.Windows.Get Text      Conf. Modelos Impressão de Processos (1)
    repetidor de teclas       Tab         2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Conf. Modelos Impressão de Processos (1)    ${Caminho_Screenshots}Conf. Modelos Impressao de Processos
    RPA.Windows.Click         Confirmar
    Fechar com Sim

Conf. Movimentação de Estoque de Produtos
    ${nome_print}=     Set Variable     Conf. Movimentação de Estoque de Produtos
    [Tags]   SmokeERP    Balancas    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Conf. Movimentação de Estoque de Produto
    RPA.Windows.Get Text      Configuração de Movimentação de Estoque de Produto (1)
    repetidor de teclas       Tab         3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Configuração de Movimentação de Estoque de Produto (1)    ${Caminho_Screenshots}Conf. Movimentação de Estoque de Produtos
    RPA.Windows.Click         Confirmar
    Fechar janela

Configuração de Troca de Produto p/ emissão de NF
    ${nome_print}=     Set Variable     Configuração de Troca de Produto p_ emissão de NF
    [Tags]   SmokeERP    Balancas    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Configuração de Troca de Produto p/ emissão de NF
    RPA.Windows.Get Text      Configuração de Troca de Produto p/ emissão de NF (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Configuração de Troca de Produto p/ emissão de NF (1)    ${Caminho_Screenshots}Configuração de Troca de Produto p_ emissão de NF
    Fechar com Sim

Parâmetros > Empresas
    ${nome_print}=     Set Variable      Empresas
    [Tags]   SmokeERP    Balancas    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar com Sim

Parâmetros > Estabelecimentos
    ${nome_print}=     Set Variable      Estabelecimentos
    [Tags]   SmokeERP    Balancas    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar com Sim

Parâmetros > Usuários
    ${nome_print}=     Set Variable      Usuários
    [Tags]   SmokeERP    Balancas    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    U
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    BaseKeywordsDesktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela

Grupo de Usuários
    ${nome_print}=     Set Variable      Grupo de Usuários
    [Tags]   SmokeERP    Balancas    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupo de Usuários
    Fechar com Sim

Parâmetros > Configurações da Estação
    ${nome_print}=     Set Variable      Configurações da Estação
    [Tags]   SmokeERP    Balancas    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    BaseKeywordsDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações da Estação
    Fechar janela