*** Settings ***
Documentation    Smoke Test: Contábil
Resource         ../../../../../Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Corretagem/Utilitários/    
${nome_print}
${nome_exe}=    cde_win_crt

*** Keywords ***

Utilitários
    Cadastros
    repetidor de teclas    right    5

*** Test Cases ***

Inicializar sistema patrimonial
    ${nome_print}=     Set Variable     Inicializar sistema patrimonial
    [Tags]     Corretagem    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Inicializar sistema patrimonial
    RPA.Windows.Get Text    Inicializar sistema patrimonial (1)
    BaseDesktop.Screenshot  Inicializar sistema patrimonial (1)    ${Caminho_Screenshots}Inicializar sistema patrimonial
    RPA.Windows.Click       Fechar

Favoritos
    ${nome_print}=     Set Variable     Favoritos
    [Tags]     Corretagem    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Favoritos
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar
    
Papel de Parede
    ${nome_print}=     Set Variable     Papel de Parede
    [Tags]     Corretagem    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Papel de Parede
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Configurar Menu Pincipal
    ${nome_print}=     Set Variable     Configurar Barra de Atalhos
    [Tags]     Corretagem    Utilitários   SmokeTest
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
    [Tags]     Corretagem    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurar Barra de Atalhos
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar com Sim

Estilo do Menu Principal
    ${nome_print}=     Set Variable     Estilo do Menu Principal
    [Tags]     Corretagem    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Estilo do Menu Principal
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    RPA.Windows.Click       Standard
    BaseDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    ${nome_print}=     Set Variable     Controle de Acessos
    [Tags]     Corretagem    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Controle de Acessos
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    RPA.Windows.Click       Confirmar
    BaseDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    RPA.Windows.Click       OK
    Fechar janela

Configuração de Liberação
    ${nome_print}=     Set Variable     Configuração de Liberação
    [Tags]     Corretagem    Utilitários   SmokeTest
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
    [Tags]     Corretagem    Utilitários   SmokeTest
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
    [Tags]     Corretagem    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  a
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    BaseDesktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Verifica transações abertas
    ${nome_print}=     Set Variable     Verifica transações abertas
    [Tags]     Corretagem    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Verifica transações abertas
    RPA.Windows.Get Text    Verifica transações abertas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Verifica transações abertas (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Pendências
    ${nome_print}=     Set Variable     Pendências
    [Tags]     Corretagem    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Pendências
    RPA.Windows.Get Text    Configuração de Pendências (1)
    BaseDesktop.Screenshot  Configuração de Pendências (1)    ${Caminho_Screenshots}Pendências
    RPA.Windows.Click       Fechar