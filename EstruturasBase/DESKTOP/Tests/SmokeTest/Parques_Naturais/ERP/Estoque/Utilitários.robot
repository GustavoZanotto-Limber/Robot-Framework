*** Settings ***
Documentation    Smoke Test: Estoque
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}
*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Estoque/Utilitários/ 
${nome_print}
${nome_exe}=    cde_win_est
*** Keywords ***

Utilitários
    Cadastros
    repetidor de teclas    right   5

*** Test Cases    ***

Favoritos
    ${nome_print}=     Set Variable     Favoritos
    [Tags]     Estoque    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Favoritos
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar
    
Papel de Parede
    ${nome_print}=     Set Variable     Papel de Parede
    [Tags]     Estoque    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Papel de Parede
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Configurar Menu Pincipal
    ${nome_print}=     Set Variable     Configurar Barra de Atalhos
    [Tags]     Estoque    Utilitários   SmokeTest
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
    [Tags]     Estoque    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurar Barra de Atalhos
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar com Sim

Estilo do Menu Principal
    ${nome_print}=     Set Variable     Estilo do Menu Principal
    [Tags]     Estoque    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Estilo do Menu Principal
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    RPA.Windows.Click       Standard
    BaseDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    ${nome_print}=     Set Variable     Controle de Acessos
    [Tags]     Estoque    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Controle de Acessos
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    RPA.Windows.Click       Confirmar
    BaseDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    RPA.Windows.Click       OK
    Fechar janela

Configuração de Liberação
    ${nome_print}=     Set Variable     Configuração de Liberação
    [Tags]     Estoque    Utilitários   SmokeTest
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
    [Tags]     Estoque    Utilitários   SmokeTest
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
    [Tags]     Estoque    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  a
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    BaseDesktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Configurador de Impressões > Transferência entre Terceiros
    ${nome_print}=     Set Variable     Transferência entre Terceiros
    [Tags]     Estoque    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Configurador de Impressões - Transferência entre Terceiros - Estoque (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Impressões - Transferência entre Terceiros - Estoque (1)    ${Caminho_Screenshots}Configurador de Impressões/Transferência entre Terceiros
    Fechar com Sim

Verifica transações abertas
    ${nome_print}=     Set Variable     Verifica transações abertas
    [Tags]     Estoque    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Verifica transações abertas
    RPA.Windows.Get Text    Verifica transações abertas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Verifica transações abertas (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Registro Magnético
    ${nome_print}=     Set Variable     Registro Magnético
    [Tags]     Estoque    Utilitários   SmokeTest
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

Configurador de Etiquetas
    ${nome_print}=     Set Variable     Configurador de Etiquetas
    [Tags]     Estoque    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurador de Etiquetas
    RPA.Windows.Get Text    Configurador de Etiqueta (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Etiqueta (1)    ${Caminho_Screenshots}Configurador de Etiquetas
    Fechar com Sim

Etiquetas de Produtos para Transporte > Etiqueta de produtos naturais para transporte
    ${nome_print}=     Set Variable     Etiqueta de produtos naturais para transporte
    [Tags]     Estoque    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Etiquetas de Produtos para Transporte
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Etiqueta de produtos naturais para transporte (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Etiqueta de produtos naturais para transporte (1)    ${Caminho_Screenshots}Etiquetas de Produtos para Transporte/Etiqueta de produtos naturais para transporte
    Fechar com Sim

Etiquetas de Produtos para Transporte > Monitor de Envio de Etiquetas 
    ${nome_print}=     Set Variable     Monitor de Envio de Etiquetas
    [Tags]     Estoque    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Etiquetas de Produtos para Transporte
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Envio de Etiquetas de produtos naturais para transporte (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Envio de Etiquetas de produtos naturais para transporte (1)    ${Caminho_Screenshots}Etiquetas de Produtos para Transporte/Monitor de Envio de Etiquetas
    Fechar janela

Reprocessamento de disponibilidade de itens
    ${nome_print}=     Set Variable     Reprocessamento de disponibilidade de itens
    [Tags]     Estoque    Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Reprocessamento de disponibilidade de itens
    RPA.Windows.Get Text    Reprocessamento de Itens (1)
    repetidor de teclas     tab      1
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Reprocessamento de Itens (1)    ${Caminho_Screenshots}Reprocessamento de disponibilidade de itens
    RPA.Windows.Click       Confirmar
    RPA.Windows.Click       Fechar