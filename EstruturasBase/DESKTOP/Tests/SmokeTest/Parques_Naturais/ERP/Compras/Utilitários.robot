*** Settings ***
Documentation    Smoke Test: Compras
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_compras


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Compras/Utilitários/    

*** Keywords ***

Utilitários
    Cadastros
    repetidor de teclas    Right    6

*** Test Cases ***

Configurar Nota Fiscal
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Configurar Nota Fiscal
    Utilitários
    RPA.Windows.Click       Configurar Nota Fiscal
    RPA.Windows.Get Text    Configuração da Nota Fiscal (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configuração da Nota Fiscal (1)    ${Caminho_Screenshots}Configurar Nota Fiscal
    Fechar janela

Favoritos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Utilitários
    Utilitários
    RPA.Windows.Click       Favoritos
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar
    
Papel de Parede
    [Teardown]              Caso aconteça erro            ${Caminho_Screenshots}                    Papel de Parede
    Utilitários
    RPA.Windows.Click       Papel de Parede
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Configurar Menu Pincipal
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Configurar Barra de Atalhos
    Utilitários
    RPA.Windows.Click       Configurar Menu Principal
    RPA.Windows.Get Text    Configurador de Menus (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configurador de Menus (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    RPA.Windows.Click       Confirmar
    Fechar Janela

Configurar Barra de Atalhos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Configurar Barra de Atalhos
    Utilitários
    RPA.Windows.Click       Configurar Barra de Atalhos
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar com Sim

Estilo do Menu Principal
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Estilo do Menu Principal
    Utilitários
    RPA.Windows.Click       Estilo do Menu Principal
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    RPA.Windows.Click       Standard
    BaseDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Controle de Acessos
    Utilitários
    RPA.Windows.Click       Controle de Acessos
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    RPA.Windows.Click       Confirmar
    BaseDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    RPA.Windows.Click       OK
    Fechar janela

Configuração de Liberação
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Configuração de Liberação
    Utilitários
    RPA.Windows.Click       Configuração de Liberação
    RPA.Windows.Get Text    Configurações de Liberação (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configurações de Liberação (1)    ${Caminho_Screenshots}Configuração de Liberação
    RPA.Windows.Click       Confirmar
    Fechar com Sim


Relatórios Personalizados > Cadastro de Categorias
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Relatórios Personalizados/                             Cadastro de Categorias
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  c
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Categorias
    RPA.Windows.Click       Confirmar
    Fechar com Sim
    
Relatórios Personalizados > Cadastro de Relatórios
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Relatórios Personalizados/                               Cadastro de Relatórios
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  a
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    BaseDesktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Configurador de Impressões > Ordem se Serviço
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Configurador de Impressões/                               Ordem se Serviço
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Configurador de Impressões - Ordem de Serviço (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Impressões - Ordem de Serviço (1)    ${Caminho_Screenshots}Configurador de Impressões/Ordem se Serviço
    Fechar com Sim

Configurador de Impressões > Saídas Vendas
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Configurador de Impressões/                               Saídas Vendas
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Configurador de Impressões - Saídas/Vendas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Impressões - Saídas/Vendas (1)    ${Caminho_Screenshots}Configurador de Impressões/Saídas Vendas
    Fechar com Sim

Configurador de Impressões > Ordem de Fixação
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Configurador de Impressões/                               Ordem de Fixação
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Configurador de Impressões - Ordem de Fixação (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Impressões - Ordem de Fixação (1)    ${Caminho_Screenshots}Configurador de Impressões/Ordem de Fixação
    Fechar com Sim

Configurador de Impressões > Fixação de Produtos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Configurador de Impressões/                               Fixação de Produtos
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  F
    RPA.Windows.Get Text    Configurador de Impressões - Fixação de Produtos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Impressões - Fixação de Produtos (1)    ${Caminho_Screenshots}Configurador de Impressões/Fixação de Produtos
    Fechar com Sim

Configurador de Impressões > Entradas/Compras
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Configurador de Impressões/                               Entradas_Compras
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Configurador de Impressões - Entradas/Compras (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Impressões - Entradas/Compras (1)    ${Caminho_Screenshots}Configurador de Impressões/Entradas_Compras
    Fechar com Sim

Configurador de Impressões > Transferência entre Terceiros
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Configurador de Impressões/                               Transferência entre Terceiros
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Configurador de Impressões - Transferência entre Terceiros - Compras (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Impressões - Transferência entre Terceiros - Compras (1)    ${Caminho_Screenshots}Configurador de Impressões/Transferência entre Terceiros
    Fechar com Sim

Criar Usuario de Log
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Criar Usuario de Log
    Utilitários
    RPA.Windows.Click       Criar Usuário de Log
    RPA.Windows.Get Text    Cadastro Usuario de Log (1)
    BaseDesktop.Screenshot  Cadastro Usuario de Log (1)    ${Caminho_Screenshots}Criar Usuario de Log
    Fechar janela

Verifica transações abertas
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Verifica transações abertas
    Utilitários
    RPA.Windows.Click       Verifica transações abertas
    RPA.Windows.Get Text    Verifica transações abertas (1)
     RPA.Windows.Click      Carregar
    BaseDesktop.Screenshot  Verifica transações abertas (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Etiquetas
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Etiquetas
    Utilitários
    RPA.Windows.Click       Etiquetas
    RPA.Windows.Get Text    Emissão de Etiquetas (1)
    RPA.Windows.Click       Imprimir Etiquetas
    BaseDesktop.Screenshot  Emissão de Etiquetas (1)    ${Caminho_Screenshots}Etiquetas
    RPA.Windows.Click       OK
    Fechar janela
    

Etiquetas (Terceiros)
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Etiquetas (Terceiros)
    Utilitários
    RPA.Windows.Click       Etiquetas (Terceiros)
    RPA.Windows.Get Text    Emissão de Etiquetas (1)
    RPA.Windows.Click       Adicionar
    BaseDesktop.Screenshot  Emissão de Etiquetas (1)   ${Caminho_Screenshots}Etiquetas (Terceiros)
    RPA.Windows.Click       OK
    Fechar janela

Registro Magnético
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Registro Magnético
    Utilitários
    RPA.Windows.Click       Registro Magnético
    RPA.Windows.Get Text    Registro Magnético (1)
    RPA.Windows.Click       Gerar
    BaseDesktop.Screenshot  Registro Magnético (1)    ${Caminho_Screenshots}Registro Magnético
    RPA.Windows.Click       OK
    Fechar janela

Agenda Telefônica
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Agenda Telefônica
    Utilitários
    RPA.Windows.Click       Agenda Telefônica
    RPA.Windows.Get Text    Agenda Telefônica (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Agenda Telefônica (1)    ${Caminho_Screenshots}Agenda Telefônica
    Fechar com Sim

Exportação de Arquivos > Salvar arquivo XML NFe de Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Exportação de Arquivos/             Salvar arquivo XML NFe de Terceiros
    Utilitários
    RPA.Windows.Click       Exportação de Arquivos
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Salvar arquivo XML NFe de Terceiros (1)
    RPA.Windows.Click       Salvar
    BaseDesktop.Screenshot  Salvar arquivo XML NFe de Terceiros (1)   ${Caminho_Screenshots}Exportação de Arquivos/Salvar arquivo XML NFe de Terceiros
    RPA.Windows.Click       OK
    Fechar janela

Exportação de Arquivos > Salvar o Arquivo XML NFe Própria
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Exportação de Arquivos/             Salvar o arquivo XML NFe Própria
    Utilitários
    RPA.Windows.Click       Exportação de Arquivos
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Salvar arquivo XML NF-e / NFS-e / CT-e / SAT própria(o) (1)
    RPA.Windows.Click       Salvar
    BaseDesktop.Screenshot  Salvar arquivo XML NF-e / NFS-e / CT-e / SAT própria(o) (1)   ${Caminho_Screenshots}Exportação de Arquivos/Salvar o arquivo XML NFe Própria
    RPA.Windows.Click       OK
    Fechar janela


    