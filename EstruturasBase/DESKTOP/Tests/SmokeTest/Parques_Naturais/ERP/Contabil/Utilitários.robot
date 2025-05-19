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
    RPA.Windows.Click       Sim

Configurar Barra de Atalhos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Configurar Barra de Atalhos
    Utilitários
    RPA.Windows.Click       Configurar Barra de Atalhos
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar Janela
    RPA.Windows.Click       Sim

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
    Fechar janela
    RPA.Windows.Click       Sim


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
    Fechar janela
    RPA.Windows.Click       Sim
    
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
    Fechar janela
    RPA.Windows.Click       Sim

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

Integrações > SCPH
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Integrações/                             SCPH
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Integração Contábil SCPH (1)
    RPA.Windows.Click       Identificar conta do Cliente/Fornecedor
    BaseDesktop.Screenshot  Integração Contábil SCPH (1)    ${Caminho_Screenshots}Integrações/SCPH
    Fechar janela

Integrações > Sênior > Importação
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Integrações/Sênior/                             Importação
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Windows.Click       Sênior
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Sênior - Integração Folha de Pagamento (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Sênior - Integração Folha de Pagamento (1)    ${Caminho_Screenshots}Integrações/Sênior/Importação
    RPA.Windows.Click         OK
    Fechar janela

Integrações > Sênior > Configuração
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Integrações/Sênior/                             Configuração
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Windows.Click       Sênior
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro Configuração Integração Sênior (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Cadastro Configuração Integração Sênior (1)    ${Caminho_Screenshots}Integrações/Sênior/Configuração
    RPA.Windows.Click       Confirmar
    Fechar janela
    RPA.Windows.Click       Sim

Integrações > DPPH > Lançamentos Funcionários
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Integrações/DPPH/                             Lançamentos Funcionários
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Windows.Click       DPPH
    RPA.Desktop.Press Keys  L
    Sleep                   1s
    RPA.Windows.Get Text    Lançamentos Funcionários (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Lançamentos Funcionários (1)    ${Caminho_Screenshots}Integrações/DPPH/Lançamentos Funcionários
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar

Integrações > Folhas de Pagamento
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Integrações/                             Folhas de Pagamento
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Desktop.Press Keys  F
    RPA.Windows.Get Text    Integrações de Folha de Pagamentos (1)
    RPA.Windows.Click       Mostrar Arquivo Exemplo
    BaseDesktop.Screenshot  Integrações de Folha de Pagamentos (1)    ${Caminho_Screenshots}Integrações/Folhas de Pagamento
    RPA.Windows.Click       Fechar
    Fechar janela

Integrações > Ocepar
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Integrações/                             Ocepar
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Geração de Arquivo Ocepar (1)
    RPA.Windows.Click       Gerar Arquivo
    BaseDesktop.Screenshot  Geração de Arquivo Ocepar (1)    ${Caminho_Screenshots}Integrações/Ocepar
    RPA.Windows.Click       OK
    Fechar janela

Agenda Telefônica
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Agenda Telefônica
    Utilitários
    RPA.Windows.Click       Agenda Telefônica
    RPA.Windows.Get Text    Agenda Telefônica (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Agenda Telefônica (1)    ${Caminho_Screenshots}Agenda Telefônica
    RPA.Windows.Click         Confirmar
    Fechar janela
    RPA.Windows.Click         Sim

Upload de Arquivos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Upload de Arquivos
    Utilitários
    RPA.Windows.Click       Upload de Arquivos
    RPA.Windows.Get Text    Upload de Arquivos (1)
    RPA.Windows.Click       Importar
    BaseDesktop.Screenshot  Upload de Arquivos (1)    ${Caminho_Screenshots}Upload de Arquivos
    RPA.Windows.Click         OK
    RPA.Windows.Click       Fechar

Encerrar
    Encerrar tudo