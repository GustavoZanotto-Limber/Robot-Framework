*** Settings ***
Documentation    Smoke Test: Balança
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_Balanca


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Balanças/Cadastros/    

*** Keywords ***


*** Test Cases ***

Produtos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Produtos
    Cadastros
    RPA.Windows.Click         Produtos
    RPA.Windows.Get Text      Cadastro de Itens (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Itens (1)    ${Caminho_Screenshots}Produtos
    Fechar janela
    RPA.Windows.Click         Sim
    
Terceiros
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Terceiros
    Cadastros
    RPA.Windows.Click         Terceiros
    RPA.Windows.Get Text      Cadastro de Terceiros (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Terceiros (1)    ${Caminho_Screenshots}Terceiros
    RPA.Windows.Click         Cancelar (F3)
    Fechar janela
    RPA.Windows.Click         Sim

Operações Fiscais
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Operações Fiscais
    Cadastros
    RPA.Windows.Click         Operações Fiscais
    RPA.Windows.Get Text      Cadastro de Operações Fiscais (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Operações Fiscais (1)    ${Caminho_Screenshots}Operações Fiscais
    Fechar janela
    RPA.Windows.Click         Sim

Descontos/Classificações para Grãos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Descontos_Classificações para Grãos
    Cadastros
    RPA.Windows.Click         Descontos/Classificações para Grãos
    RPA.Windows.Get Text      Cadastro de Descontos/Classificações para Grãos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Descontos/Classificações para Grãos (1)    ${Caminho_Screenshots}Descontos_Classificações para Grãos
    Fechar janela
    RPA.Windows.Click         Sim

Classificação de Grãos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Classificação de Grãos
    Cadastros
    RPA.Windows.Click         Classificação de Grãos
    RPA.Windows.Get Text      Cadastro de Classificação de Grãos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Classificação de Grãos (1)    ${Caminho_Screenshots}Classificação de Grãos
    Fechar janela
    RPA.Windows.Click         Sim

Tabela de Índices de Descontos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Tabela de Índices de Descontos
    Cadastros
    RPA.Windows.Click         Tabela de Índices de Descontos
    RPA.Windows.Get Text      Cadastro de Índices de Descontos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Índices de Descontos (1)    ${Caminho_Screenshots}Tabela de Índices de Descontos
    Fechar janela
    RPA.Windows.Click         Sim

Melhorias do Peso Hectolítrico
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Melhorias do Peso Hectolítrico
    Cadastros
    RPA.Windows.Click         Melhorias do Peso Hectolítrico
    RPA.Windows.Get Text      Cadastro de Melhorias do Peso Hectolítrico (PH) (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Melhorias do Peso Hectolítrico (PH) (1)    ${Caminho_Screenshots}Melhorias do Peso Hectolítrico
    Fechar janela
    RPA.Windows.Click         Sim

Tipos de Romaneio
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Tipos de Romaneio
    Cadastros
    RPA.Windows.Click         Tipos de Romaneio
    RPA.Windows.Get Text      Cadastro de Tipos de Romaneio (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tipos de Romaneio (1)    ${Caminho_Screenshots}Tipos de Romaneio
    Fechar janela
    RPA.Windows.Click         Sim

Conf. Modelos Impressao de Processos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Conf. Modelos Impressao de Processos
    Cadastros
    RPA.Windows.Click         Conf. Modelos Impressao de Processos
    RPA.Windows.Get Text      Conf. Modelos Impressão de Processos (1)
    repetidor de teclas       Tab         2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Conf. Modelos Impressão de Processos (1)    ${Caminho_Screenshots}Conf. Modelos Impressao de Processos
    RPA.Windows.Click         Confirmar
    Fechar janela
    RPA.Windows.Click         Sim

Conf. Movimentação de Estoque de Produtos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Conf. Movimentação de Estoque de Produtos
    Cadastros
    RPA.Windows.Click         Conf. Movimentação de Estoque de Produto
    RPA.Windows.Get Text      Configuração de Movimentação de Estoque de Produto (1)
    repetidor de teclas       Tab         3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Configuração de Movimentação de Estoque de Produto (1)    ${Caminho_Screenshots}Conf. Movimentação de Estoque de Produtos
    RPA.Windows.Click         Confirmar
    Fechar janela

Configuração de Troca de Produto p/ emissão de NF
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Configuração de Troca de Produto p_ emissão de NF
    Cadastros
    RPA.Windows.Click         Configuração de Troca de Produto p/ emissão de NF
    RPA.Windows.Get Text      Configuração de Troca de Produto p/ emissão de NF (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Configuração de Troca de Produto p/ emissão de NF (1)    ${Caminho_Screenshots}Configuração de Troca de Produto p_ emissão de NF
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Empresas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                        ERRO Empresas
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Estabelecimentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                        ERRO Estabelecimentos
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Usuários
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                        ERRO Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    U
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    BaseDesktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela

Parâmetros > Grupo de Usuários
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                        ERRO Grupo de Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupo de Usuários
    Fechar janela
    RPA.Windows.Click         Sim

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