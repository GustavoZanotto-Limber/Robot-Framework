*** Settings ***
Documentation    Smoke Test: Frotas
Resource          ../../../../../Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Frotas/Consultas/    
${nome_print}
${nome_exe}=    cde_win_frotas
*** Keywords ***

Consultas
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    8
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Consultas Personalizadas
    ${nome_print}=     Set Variable     Consultas Personalizadas
    [Tags]    Frotas   Consultas   SmokeTest
    Consultas               Consultas Personalizadas
    RPA.Windows.Get Text   	Consultas Personalizadas (1) 
    RPA.Windows.Click       Cadastrar Nova Consulta
    BaseDesktop.Screenshot 	Consultas Personalizadas (1)                              ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click       Sair
    Fechar Janela

Consulta de Pneus
    ${nome_print}=     Set Variable     Consulta de Pneus
    [Tags]    Frotas   Consultas   SmokeTest
    Consultas               Consulta de Pneus
    RPA.Windows.Get Text    Consulta de Pneus (1) 
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Pneus (1)                              ${Caminho_Screenshots}Consulta de Pneus
    RPA.Windows.Click       Fechar

Consulta de Avisos
    ${nome_print}=     Set Variable     Consulta de Avisos
    [Tags]    Frotas   Consultas   SmokeTest    
    Consultas               Consulta de Avisos
    RPA.Windows.Get Text    Consulta de Avisos (1) 
    BaseDesktop.Screenshot  Consulta de Avisos (1)                              ${Caminho_Screenshots}Consulta de Avisos
    Fechar Janela

Consulta de Receitas e Despesas
    ${nome_print}=     Set Variable     Consulta de Receitas e Despesas
    [Tags]    Frotas   Consultas   SmokeTest
    Consultas               Consulta de Receitas e Despesas
    RPA.Windows.Get Text   	Consulta de Receitas e Despesas (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Consulta de Receitas e Despesas (1)                              ${Caminho_Screenshots}Consulta de Receitas e Despesas
    RPA.Windows.Click       Confirmar
    Fechar Janela

Consulta de Mov. de Veículos
    ${nome_print}=     Set Variable     Consulta de Mov. de Veículos
    [Tags]    Frotas   Consultas   SmokeTest
    Consultas               Consulta de Mov. de Veículos
    RPA.Windows.Get Text   	Consulta de Movimentação de Veículos (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Consulta de Movimentação de Veículos (1)                              ${Caminho_Screenshots}Consulta de Mov. de Veículos
    RPA.Windows.Click       Confirmar
    Fechar Janela

Consulta de Infrações de Trânsito
    ${nome_print}=     Set Variable     Consulta de Infrações de Trânsito
    [Tags]    Frotas   Consultas   SmokeTest
    Consultas               Consulta de Infrações de Trânsito
    RPA.Windows.Get Text   	Consulta de Infrações de Trânsito (1) 
    RPA.Desktop.Press Keys  tab
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Click       Confirmar
    BaseDesktop.Screenshot 	Consulta de Infrações de Trânsito (1)                              ${Caminho_Screenshots}Consulta de Infrações de Trânsito
    Fechar Janela

Consulta de Abastecimentos(PoliFrotas)
    ${nome_print}=     Set Variable     Consulta de Abastecimentos(PoliFrotas)
    [Tags]    Frotas   Consultas   SmokeTest    
    Consultas               Consulta de Abastecimentos(PoliFrotas)
    RPA.Windows.Get Text   	Consulta de Abastecidas PoliFrotas (1) 
    repetidor de teclas     tab      2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Consulta de Abastecidas PoliFrotas (1)                              ${Caminho_Screenshots}Consulta de Abastecimentos(PoliFrotas)
    RPA.Windows.Click       Confirmar
    RPA.Windows.Click       Fechar

Consulta de Conhecimento de Transporte
    ${nome_print}=     Set Variable     Consulta de Conhecimento de Transporte
    [Tags]    Frotas   Consultas   SmokeTest              
    Consultas               Consulta de Conhecimento de Transporte
    RPA.Windows.Get Text   	Consulta de Conhecimento de Transporte (1)
    repetidor de teclas     tab      3
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Consulta de Conhecimento de Transporte (1)                             ${Caminho_Screenshots}Consulta de Conhecimento de Transporte
    Fechar Janela