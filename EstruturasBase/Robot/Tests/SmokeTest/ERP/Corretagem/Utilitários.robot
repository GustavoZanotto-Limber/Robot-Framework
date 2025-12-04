*** Settings ***
Documentation    Smoke Test: Contabil
Resource         ../../../../Resources/Base/Base_Desktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/SmokeTest/Bilheteria/ERP/Corretagem/Utilitários/    
${nome_print}
${nome_exe}=    cde_win_crt

*** Keywords ***

Utilitários
    Cadastros
    repetidor de teclas    right    5

*** Test Cases ***

Favoritos
    ${nome_print}=     Set Variable     Favoritos
    [Tags]   SmokeERP    Corretagem    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Favoritos
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    RPA.Desktop.Press Keys  Enter
    Base_Desktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar
    
Papel de Parede
    ${nome_print}=     Set Variable     Papel de Parede
    [Tags]   SmokeERP    Corretagem    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Papel de Parede
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    Base_Desktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Configurar Menu Pincipal
    ${nome_print}=     Set Variable     Configurar Menu Principal
    [Tags]   SmokeERP    Corretagem    Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Configurar Menu Principal
    RPA.Windows.Get Text    Configurador de Menus (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    Base_Desktop.Screenshot  Configurador de Menus (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    RPA.Windows.Click       Confirmar
    Fechar janela

Configurar Barra de Atalhos
    ${nome_print}=     Set Variable     Configurar Barra de Atalhos
    [Tags]   SmokeERP    Corretagem    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurar Barra de Atalhos
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar com Sim

Estilo do Menu Principal
    ${nome_print}=     Set Variable     Estilo do Menu Principal
    [Tags]   SmokeERP    Corretagem    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Estilo do Menu Principal
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    RPA.Windows.Click       Standard
    Base_Desktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    ${nome_print}=     Set Variable     Controle de Acessos
    [Tags]   SmokeERP    Corretagem    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Controle de Acessos
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    RPA.Windows.Click       Confirmar
    Base_Desktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    RPA.Windows.Click       OK
    Fechar janela

Configuração de Liberação
    ${nome_print}=     Set Variable     Configuração de Liberação
    [Tags]   SmokeERP    Corretagem    Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Configuração de Liberação
    Sleep                   2s
    RPA.Windows.Get Text    Configurações de Liberação (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    Base_Desktop.Screenshot  Configurações de Liberação (1)    ${Caminho_Screenshots}Configuração de Liberação
    Sleep                   2s
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Relatórios Personalizados > Cadastro de Categorias
    ${nome_print}=     Set Variable     Cadastro de Categorias
    [Tags]   SmokeERP    Corretagem    Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  c
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    Base_Desktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Categorias
    RPA.Windows.Click       Confirmar
    Fechar janela
    
Relatórios Personalizados > Cadastro de Relatórios
    ${nome_print}=     Set Variable     Cadastro de Relatórios
    [Tags]   SmokeERP    Corretagem    Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  a
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    Base_Desktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    RPA.Windows.Click       Confirmar
    Fechar janela

Verificar Transações Abertas
    ${nome_print}=     Set Variable     Verificar Transações Abertas
    [Tags]   SmokeERP    Corretagem    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Verificar Transações Abertas
    RPA.Windows.Get Text    Verificar Transações Abertas (1)
    RPA.Windows.Click       Carregar
    Base_Desktop.Screenshot  Verificar Transações Abertas (1)    ${Caminho_Screenshots}Verificar Transações Abertas
    Fechar janela

Configurador de Consulta
    ${nome_print}=     Set Variable     Configurador de Consulta
    [Tags]   SmokeERP    Corretagem    Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Configurador de Consulta
    RPA.Windows.Get Text    Cadastro Configuração Filtros Rotinas (1)
    Base_Desktop.Screenshot  Cadastro Configuração Filtros Rotinas (1)    ${Caminho_Screenshots}Configurador de Consulta
    RPA.Windows.Click       Fechar