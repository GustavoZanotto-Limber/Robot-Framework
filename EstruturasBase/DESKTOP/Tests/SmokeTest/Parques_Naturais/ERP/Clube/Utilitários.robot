*** Settings ***
Documentation    Smoke Test: Clube
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup         Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteça erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Clube/Utilitários/    
${nome_print}
${nome_exe}=    cde_win_clube

*** Keywords ***

Utilitários
    Cadastros
    repetidor de teclas    right    7

*** Test Cases ***

Favoritos
    ${nome_print}=     Set Variable     Favoritos
    [Tags]     Clube    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Favoritos
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar
    
Papel de Parede
    ${nome_print}=     Set Variable     Papel de Parede
    [Tags]     Clube    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Papel de Parede
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Estilo do Menu Principal
    ${nome_print}=     Set Variable     Estilo do Menu Principal
    [Tags]     Clube    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Estilo do Menu Principal
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    RPA.Windows.Click       Standard
    BaseDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    ${nome_print}=     Set Variable     Controle de Acessos
    [Tags]     Clube    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Controle de Acessos
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    RPA.Windows.Click       Confirmar
    BaseDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    RPA.Windows.Click       OK
    Fechar janela

Configuração de Liberação
    ${nome_print}=     Set Variable     Configuração de Liberação
    [Tags]     Clube    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configuração de Liberação
    RPA.Windows.Get Text    Configurações de Liberação (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configurações de Liberação (1)    ${Caminho_Screenshots}Configuração de Liberação
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Cadastro de Categorias
    ${nome_print}=     Set Variable     Cadastro de Categorias
    [Tags]     Clube    Utilitários   SmokeTest
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
    [Tags]     Clube    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  a
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    BaseDesktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Criar Usuario de Log
    ${nome_print}=     Set Variable     Criar Usuario de Log
    [Tags]     Clube    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Criar Usuário de Log
    RPA.Windows.Get Text    Cadastro Usuario de Log (1)
    BaseDesktop.Screenshot  Cadastro Usuario de Log (1)    ${Caminho_Screenshots}Criar Usuario de Log
    Fechar janela

Verifica transações abertas
    ${nome_print}=     Set Variable     Verifica transações abertas
    [Tags]     Clube    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Verifica transações abertas
    RPA.Windows.Get Text    Verifica transações abertas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Verifica transações abertas (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Email de Terceiros
    ${nome_print}=     Set Variable     Email de Terceiros
    [Tags]     Clube    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Email de Terceiros
    RPA.Windows.Get Text    E-mails de Terceiros (1)
    RPA.Windows.Click       Listar
    BaseDesktop.Screenshot  E-mails de Terceiros (1)    ${Caminho_Screenshots}Email de Terceiros
    RPA.Windows.Click       Fechar

Testador de Cartão
    ${nome_print}=     Set Variable     Testador de Cartão
    [Tags]     Clube    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Testador de Cartão
    RPA.Windows.Get Text    Teste de Cartões (1)
    BaseDesktop.Screenshot  Teste de Cartões (1)    ${Caminho_Screenshots}Testador de Cartão
    RPA.Windows.Click       Fechar

Leitura de Cartão
    ${nome_print}=     Set Variable     Leitura de Cartão
    [Tags]     Clube    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Leitura de Cartão
    RPA.Windows.Get Text    Leitura de Cartão (1)
    BaseDesktop.Screenshot  Leitura de Cartão (1)    ${Caminho_Screenshots}Leitura de Cartão
    Fechar janela