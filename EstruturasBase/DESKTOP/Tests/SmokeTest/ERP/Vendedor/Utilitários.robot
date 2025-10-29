*** Settings ***
Documentation    Smoke Test: Vendedor
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Vendedor/Utilitários/    
${nome_print}
${nome_exe}=    cde_win_VENDEDOR
*** Keywords ***

Utilitários
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    4
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Favoritos
    ${nome_print}=     Set Variable     Favoritos
    [Tags]   SmokeERP   Vendedor   Utilitários   SmokeTest
    Utilitários             Favoritos       
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar
    
Papel de Parede
    ${nome_print}=     Set Variable     Papel de Parede
    [Tags]   SmokeERP   Vendedor   Utilitários   SmokeTest
    Utilitários             Papel de Parede     
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseKeywordsDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Estilo do Menu Principal
    ${nome_print}=     Set Variable     Estilo do Menu Principal
    [Tags]   SmokeERP   Vendedor   Utilitários   SmokeTest
    Utilitários             Estilo do Menu Principal       
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    RPA.Windows.Click       Standard
    BaseKeywordsDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    ${nome_print}=     Set Variable     Controle de Acessos
    [Tags]   SmokeERP   Vendedor   Utilitários   SmokeTest
    Utilitários             Controle de Acessos   
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    RPA.Windows.Click       Confirmar
    BaseKeywordsDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    RPA.Windows.Click       OK
    Fechar janela

Configuração de Liberação
    ${nome_print}=     Set Variable     Configuração de Liberação
    [Tags]   SmokeERP   Vendedor   Utilitários   SmokeTest
    Utilitários             Configuração de Liberação   
    RPA.Windows.Get Text    Configurações de Liberação (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Configurações de Liberação (1)    ${Caminho_Screenshots}Configuração de Liberação
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Relatórios Personalizados > Cadastro de Categorias
    ${nome_print}=     Set Variable     Cadastro de Categorias
    [Tags]   SmokeERP   Vendedor   Utilitários   SmokeTest    
    Utilitários             Relatórios Personalizados      
    RPA.Desktop.Press Keys  c
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Categorias
    RPA.Windows.Click       Confirmar
    Fechar janela
    
Relatórios Personalizados > Cadastro de Relatórios
    ${nome_print}=     Set Variable     Cadastro de Relatórios
    [Tags]   SmokeERP   Vendedor   Utilitários   SmokeTest    
    Utilitários             Relatórios Personalizados      
    RPA.Desktop.Press Keys  a
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    BaseKeywordsDesktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    RPA.Windows.Click       Confirmar
    Fechar janela
    
Verificar Transações Abertas
    ${nome_print}=     Set Variable     Verificar Transações Abertas
    [Tags]   SmokeERP   Vendedor   Utilitários   SmokeTest
    Utilitários             Verificar Transações Abertas  
    RPA.Windows.Get Text    Verificar Transações Abertas (1)
    RPA.Windows.Click      Carregar
    BaseKeywordsDesktop.Screenshot  Verificar Transações Abertas (1)    ${Caminho_Screenshots}Verificar Transações Abertas
    Fechar janela