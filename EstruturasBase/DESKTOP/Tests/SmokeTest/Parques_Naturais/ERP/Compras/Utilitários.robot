*** Settings ***
Documentation    Smoke Test: Compras
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_compras
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Compras/Utilitários/    
${nome_print}
${nome_exe}=    cde_win_compras

*** Keywords ***

Utilitários
    Cadastros
    repetidor de teclas    Right    6

*** Test Cases ***

Configurar Nota Fiscal
    ${nome_print}=     Set Variable     Configurar Nota Fiscal
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurar Nota Fiscal
    RPA.Windows.Get Text    Configuração da Nota Fiscal (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configuração da Nota Fiscal (1)    ${Caminho_Screenshots}Configurar Nota Fiscal
    Fechar janela

Favoritos
    ${nome_print}=     Set Variable     Favoritos
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Favoritos
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar

Papel de Parede
    ${nome_print}=     Set Variable     Papel de Parede
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Papel de Parede
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Configurar Menu Principal
    ${nome_print}=     Set Variable     Configurar Menu Principal
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurar Menu Principal
    RPA.Windows.Get Text    Configurador de Menus (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configurador de Menus (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Configurar Barra de Atalhos
    ${nome_print}=     Set Variable     Configurar Barra de Atalhos
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurar Barra de Atalhos
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar com Sim

Estilo do Menu Principal
    ${nome_print}=     Set Variable     Estilo do Menu Principal
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Estilo do Menu Principal
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    RPA.Windows.Click       Standard
    BaseDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    ${nome_print}=     Set Variable     Controle de Acessos
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Controle de Acessos
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    RPA.Windows.Click       Confirmar
    BaseDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    RPA.Windows.Click       OK
    Fechar janela

Configuração de Liberação
    ${nome_print}=     Set Variable     Configuração de Liberação
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configuração de Liberação
    RPA.Windows.Get Text    Configurações de Liberação (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configurações de Liberação (1)    ${Caminho_Screenshots}Configuração de Liberação
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Relatórios Personalizados > Cadastro de Categorias
    ${nome_print}=     Set Variable     Cadastro de Categorias
    [Tags]     Compras    Utilitários   SmokeTest
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
    ${nome_print}=     Set Variable     Cadastro de Relatórios
    [Tags]     Compras    Utilitários   SmokeTest
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
    ${nome_print}=     Set Variable     Ordem se Serviço
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Configurador de Impressões - Ordem de Serviço (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Impressões - Ordem de Serviço (1)    ${Caminho_Screenshots}Configurador de Impressões/Ordem se Serviço
    Fechar com Sim

Configurador de Impressões > Saídas Vendas
    ${nome_print}=     Set Variable     Saídas Vendas
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Configurador de Impressões - Saídas/Vendas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Impressões - Saídas/Vendas (1)    ${Caminho_Screenshots}Configurador de Impressões/Saídas Vendas
    Fechar com Sim

Configurador de Impressões > Ordem de Fixação
    ${nome_print}=     Set Variable     Ordem de Fixação
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Configurador de Impressões - Ordem de Fixação (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Impressões - Ordem de Fixação (1)    ${Caminho_Screenshots}Configurador de Impressões/Ordem de Fixação
    Fechar com Sim

Configurador de Impressões > Fixação de Produtos
    ${nome_print}=     Set Variable     Fixação de Produtos
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  F
    RPA.Windows.Get Text    Configurador de Impressões - Fixação de Produtos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Impressões - Fixação de Produtos (1)    ${Caminho_Screenshots}Configurador de Impressões/Fixação de Produtos
    Fechar com Sim

Configurador de Impressões > Entradas/Compras
    ${nome_print}=     Set Variable     Entradas_Compras
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Configurador de Impressões - Entradas/Compras (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Impressões - Entradas/Compras (1)    ${Caminho_Screenshots}Configurador de Impressões/Entradas_Compras
    Fechar com Sim

Configurador de Impressões > Transferência entre Terceiros
    ${nome_print}=     Set Variable     Transferência entre Terceiros
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Configurador de Impressões - Transferência entre Terceiros - Compras (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Impressões - Transferência entre Terceiros - Compras (1)    ${Caminho_Screenshots}Configurador de Impressões/Transferência entre Terceiros
    Fechar com Sim

Verifica transações abertas
    ${nome_print}=     Set Variable     Verifica transações abertas
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Verifica transações abertas
    RPA.Windows.Get Text    Verifica transações abertas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Verifica transações abertas (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Etiquetas
    ${nome_print}=     Set Variable     Etiquetas
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Etiquetas
    RPA.Windows.Get Text    Emissão de Etiquetas (1)
    RPA.Windows.Click       Imprimir Etiquetas
    BaseDesktop.Screenshot  Emissão de Etiquetas (1)    ${Caminho_Screenshots}Etiquetas
    RPA.Windows.Click       OK
    Fechar janela

Etiquetas (Terceiros)
    ${nome_print}=     Set Variable     Etiquetas (Terceiros)
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Etiquetas (Terceiros)
    RPA.Windows.Get Text    Emissão de Etiquetas (1)
    RPA.Windows.Click       Adicionar
    BaseDesktop.Screenshot  Emissão de Etiquetas (1)   ${Caminho_Screenshots}Etiquetas (Terceiros)
    RPA.Windows.Click       OK
    Fechar janela

Registro Magnético
    ${nome_print}=     Set Variable     Registro Magnético
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Registro Magnético
    RPA.Windows.Get Text    Registro Magnético (1)
    RPA.Windows.Click       Gerar
    BaseDesktop.Screenshot  Registro Magnético (1)    ${Caminho_Screenshots}Registro Magnético
    RPA.Windows.Click       OK
    Fechar janela

Agenda Telefônica
    ${nome_print}=     Set Variable     Agenda Telefônica
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Agenda Telefônica
    RPA.Windows.Get Text    Agenda Telefônica (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Agenda Telefônica (1)    ${Caminho_Screenshots}Agenda Telefônica
    Fechar com Sim

Exportação de Arquivos > Salvar arquivo XML NFe de Terceiros
    ${nome_print}=     Set Variable     Salvar arquivo XML NFe de Terceiros
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Exportação de Arquivos
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Salvar arquivo XML NFe de Terceiros (1)
    RPA.Windows.Click       Salvar
    BaseDesktop.Screenshot  Salvar arquivo XML NFe de Terceiros (1)   ${Caminho_Screenshots}Exportação de Arquivos/Salvar arquivo XML NFe de Terceiros
    RPA.Windows.Click       OK
    Fechar janela

Exportação de Arquivos > Salvar o Arquivo XML NFe Própria
    ${nome_print}=     Set Variable     Salvar o Arquivo XML NFe Própria
    [Tags]     Compras    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Exportação de Arquivos
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Salvar arquivo XML NF-e / NFS-e / CT-e / SAT própria(o) (1)
    RPA.Windows.Click       Salvar
    BaseDesktop.Screenshot  Salvar arquivo XML NF-e / NFS-e / CT-e / SAT própria(o) (1)   ${Caminho_Screenshots}Exportação de Arquivos/Salvar o arquivo XML NFe Própria
    RPA.Windows.Click       OK
    Fechar janela

Integração Royalties Monsanto > Consulta de Entregas/Cancelamentos
    ${nome_print}=     Set Variable     Consulta de Entregas_Cancelamentos
    [Tags]     Balancas    Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Integração Royalties Monsanto
    RPA.Desktop.Press Keys  C
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Get Text    Consulta de Entregas/Cancelamentos - Monsanto (1)
    BaseDesktop.Screenshot  Consulta de Entregas/Cancelamentos - Monsanto (1)    ${Caminho_Screenshots}Integração Royalties Monsanto/Consulta de Entregas_Cancelamentos
    RPA.Windows.Click       Confirmar
    Fechar Janela

Integração Royalties Monsanto > Consulta Lista de Pendências
    ${nome_print}=     Set Variable     Consulta Lista de Pendências
    [Tags]     Balancas    Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Integração Royalties Monsanto
    RPA.Desktop.Press Keys  O
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Get Text    Consulta Lista de Pendências - Monsanto (1)
    BaseDesktop.Screenshot  Consulta Lista de Pendências - Monsanto (1)    ${Caminho_Screenshots}Integração Royalties Monsanto/Consulta Lista de Pendências
    RPA.Windows.Click       Confirmar
    Fechar Janela