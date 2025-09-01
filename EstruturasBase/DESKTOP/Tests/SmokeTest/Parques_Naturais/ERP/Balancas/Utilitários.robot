*** Settings ***
Documentation    Smoke Test: Balança
Resource         ../../../../../Resources/BaseDesktop.robot
Suite Setup         Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Balanças/Utilitários/    
${nome_print}
${nome_exe}=    cde_win_Balanca
*** Keywords ***

Utilitários

    Cadastros
    repetidor de teclas    right    5

*** Test Cases ***

Favoritos
    ${nome_print}=     Set Variable     Favoritos
    [Tags]     Balancas    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Favoritos
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar
    
Papel de Parede
    ${nome_print}=     Set Variable     Papel de Parede
    [Tags]     Balancas    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Papel de Parede
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Configurar Menu Principal
    ${nome_print}=     Set Variable     Configurar Menu Principal
    [Tags]     Balancas    Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Configurar Menu Principal
    RPA.Windows.Get Text    Configurador de Menus (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configurador de Menus (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    RPA.Windows.Click       Confirmar
    Fechar Janela

Configurar Barra de Atalhos
    ${nome_print}=     Set Variable     Configurar Barra de Atalhos
    [Tags]     Balancas    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurar Barra de Atalhos
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar com Sim

Estilo do Menu Principal
    ${nome_print}=     Set Variable     Estilo do Menu Principal
    [Tags]     Balancas    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Estilo do Menu Principal
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    RPA.Windows.Click       Standard
    BaseDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    ${nome_print}=     Set Variable     Controle de Acessos
    [Tags]     Balancas    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Controle de Acessos
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    RPA.Windows.Click       Confirmar
    BaseDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    RPA.Windows.Click       OK
    Fechar janela

Configuração de Liberação
    ${nome_print}=     Set Variable     Configuração de Liberação
    [Tags]     Balancas    Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Configuração de Liberação
    RPA.Windows.Get Text    Configurações de Liberação (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configurações de Liberação (1)    ${Caminho_Screenshots}Configuração de Liberação
    RPA.Windows.Click       Confirmar
    Sleep                   1s
    Fechar com Sim

Relatórios Personalizados > Cadastro de Categorias
    ${nome_print}=     Set Variable     Cadastro de Categorias
    [Tags]     Balancas    Utilitários   SmokeTest        
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  c
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Categorias
    RPA.Windows.Click       Confirmar
    Fechar Janela
    
Relatórios Personalizados > Cadastro de Relatórios
    ${nome_print}=     Set Variable     Cadastro de Relatórios
    [Tags]     Balancas    Utilitários   SmokeTest    
    Utilitários    
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  a
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    BaseDesktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    RPA.Windows.Click       Confirmar
    Fechar Janela

Verifica transações abertas
    ${nome_print}=     Set Variable     Verifica transações abertas
    [Tags]     Balancas    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Verifica transações abertas
    RPA.Windows.Get Text    Verifica transações abertas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Verifica transações abertas (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Configuração da Balança
    ${nome_print}=     Set Variable     Configuração da Balança
    [Tags]     Balancas    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configuração da Balança
    RPA.Windows.Get Text    Configuração da Balança (1)
    BaseDesktop.Screenshot  Configuração da Balança (1)    ${Caminho_Screenshots}Verifica transações abertas
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