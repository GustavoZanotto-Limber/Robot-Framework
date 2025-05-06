*** Settings ***
Documentation    Smoke Test: Contábil
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_ctb

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Contábil/Utilitários/    

*** Keywords ***

Utilitários
    Cadastros
    repetidor de teclas    right    4

*** Test Cases ***

Favoritos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Favoritos
    Utilitários
    RPA.Windows.Click       Favoritos
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    BaseDesktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       Fechar

Papel de Parede
    [Teardown]              Caso aconteça erro            ${Caminho_Screenshots}                   ERRO Papel de Parede
    Utilitários
    RPA.Windows.Click       Papel de Parede
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Configurar Menu Principal
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Configurar Menu Principal
    Utilitários
    RPA.Windows.Click       Configurar Menu Principal
    RPA.Windows.Get Text    Configurador de Menus (1)
    BaseDesktop.Screenshot  Configurador de Menus (1)    ${Caminho_Screenshots}Configurar Menu Principal
    Fechar janela

Configurar Barra de Atalhos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Configurar Barra de Atalhos
    Utilitários
    RPA.Windows.Click       Configurar Barra de Atalhos
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    BaseDesktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar Janela

Estilo do Menu Principal
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Estilo do Menu Principal
    Utilitários
    RPA.Windows.Click       Estilo do Menu Principal
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    BaseDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Controle de Acessos
    Utilitários
    RPA.Windows.Click       Controle de Acessos
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    BaseDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    Fechar janela

Configuração de Liberação
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Configuração de Liberação
    Utilitários
    RPA.Windows.Click       Configuração de Liberação
    RPA.Windows.Get Text    Configurações de Liberação (1)
    BaseDesktop.Screenshot  Configurações de Liberação (1)    ${Caminho_Screenshots}Configuração de Liberação
    Fechar janela

Relatórios Personalizados > Cadastro de Categorias
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Relatórios Personalizados/                            ERRO Cadastro de Categorias
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  c
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    BaseDesktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Categorias
    Fechar janela
    
Relatórios Personalizados > Cadastro de Relatórios
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Relatórios Personalizados/                              ERRO Cadastro de Relatórios
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  a
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    BaseDesktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    Fechar janela

Criar Usuario de Log
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Criar Usuario de Log
    Utilitários
    RPA.Windows.Click       Criar Usuário de Log
    RPA.Windows.Get Text    Cadastro Usuario de Log (1)
    BaseDesktop.Screenshot  Cadastro Usuario de Log (1)    ${Caminho_Screenshots}Criar Usuario de Log
    Fechar janela

Verifica transações abertas
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Verifica transações abertas
    Utilitários
    RPA.Windows.Click       Verifica transações abertas
    RPA.Windows.Get Text    Verifica transações abertas (1)
    BaseDesktop.Screenshot  Verifica transações abertas (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Integrações > SCPH
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Integrações/                            ERRO SCPH
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Integração Contábil SCPH (1)
    BaseDesktop.Screenshot  Integração Contábil SCPH (1)    ${Caminho_Screenshots}Integrações/SCPH
    Fechar janela

Integrações > Sênior > Importação
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Integrações/Sênior/                            ERRO Importação
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Windows.Click       Sênior
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Sênior - Integração Folha de Pagamento (1)
    BaseDesktop.Screenshot  Sênior - Integração Folha de Pagamento (1)    ${Caminho_Screenshots}Integrações/Sênior/Importação
    Fechar janela

Integrações > Sênior > Configuração
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Integrações/Sênior/                            ERRO Configuração
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Windows.Click       Sênior
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro Configuração Integração Sênior (1)
    BaseDesktop.Screenshot  Cadastro Configuração Integração Sênior (1)    ${Caminho_Screenshots}Integrações/Sênior/Configuração
    Fechar janela

Integrações > DPPH > Lançamentos Funcionários
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Integrações/DPPH/                            ERRO Lançamentos Funcionários
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Windows.Click       DPPH
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Lançamentos Funcionários (1)
    BaseDesktop.Screenshot  Lançamentos Funcionários (1)    ${Caminho_Screenshots}Integrações/DPPH/Lançamentos Funcionários
    RPA.Windows.Click       Fechar

Integrações > Folhas de Pagamento
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Integrações/                            ERRO Folhas de Pagamento
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Desktop.Press Keys  F
    RPA.Windows.Get Text    Integrações de Folha de Pagamentos (1)
    BaseDesktop.Screenshot  Integrações de Folha de Pagamentos (1)    ${Caminho_Screenshots}Integrações/Folhas de Pagamento
    Fechar janela

Integrações > Ocepar
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Integrações/                            ERRO Ocepar
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Geração de Arquivo Ocepar (1)
    BaseDesktop.Screenshot  Geração de Arquivo Ocepar (1)    ${Caminho_Screenshots}Integrações/Ocepar
    Fechar janela

Agenda Telefônica
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Agenda Telefônica
    Utilitários
    RPA.Windows.Click       Agenda Telefônica
    RPA.Windows.Get Text    Agenda Telefônica (1)
    BaseDesktop.Screenshot  Agenda Telefônica (1)    ${Caminho_Screenshots}Agenda Telefônica
    Fechar janela

Upload de Arquivos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Upload de Arquivos
    Utilitários
    RPA.Windows.Click       Upload de Arquivos
    RPA.Windows.Get Text    Upload de Arquivos (1)
    BaseDesktop.Screenshot  Upload de Arquivos (1)    ${Caminho_Screenshots}Upload de Arquivos
    RPA.Windows.Click       Fechar

Encerrar
    Encerrar tudo