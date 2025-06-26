*** Settings ***
Documentation    Smoke Test: Clube
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteça erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Clube/Consultas/    
${nome_print}
${nome_exe}=    cde_win_clube

*** Keywords ***

Consultas
    Cadastros
    repetidor de teclas    right    2

*** Test Cases ***

Mensalidades Pendentes/Pagas
    ${nome_print}=     Set Variable     Mensalidades Pendentes_Pagas
    [Tags]     Clube    Consultas   SmokeTest
    Consultas 
    RPA.Windows.Click       Mensalidades Pendentes/Pagas
    RPA.Windows.Get Text    Consulta do Contas a Receber (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta do Contas a Receber (1)   ${Caminho_Screenshots}Mensalidades Pendentes_Pagas
    Fechar janela
    RPA.Windows.Click       OK

Sócios/Dependentes
    ${nome_print}=     Set Variable     Sócios_Dependentes
    [Tags]     Clube    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Sócios/Dependentes
    RPA.Windows.Get Text    Sócios/Dependentes
    BaseDesktop.Screenshot  Sócios/Dependentes   ${Caminho_Screenshots}Sócios_Dependentes
    RPA.Windows.Click       Fechar

Controle Acessos > Status do Cartão
    ${nome_print}=     Set Variable     Status do Cartão
    [Tags]     Clube    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Controle Acessos 
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Status de Acesso do Cartão (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Status de Acesso do Cartão (1)   ${Caminho_Screenshots}Controle Acessos/Status do Cartão 
    RPA.Windows.Click       Fechar
    Fechar janela

Controle Acessos > Extrato/Local Acesso
    ${nome_print}=     Set Variable     Extrato/Local Acesso
    [Tags]     Clube    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Controle Acessos 
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Sócios Presentes (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Sócios Presentes (1)   ${Caminho_Screenshots}Controle Acessos/Extrato_Local Acesso 
    RPA.Windows.Click       Fechar
    Fechar janela

Extrato do Cartão
    ${nome_print}=     Set Variable     Extrato do Cartão
    [Tags]     Clube    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Controle Acessos 
    RPA.Desktop.Press Keys  X
    RPA.Windows.Get Text    Extrato de Acessos do Cartão (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Extrato de Acessos do Cartão (1)   ${Caminho_Screenshots}Controle Acessos/Extrato do Cartão 
    RPA.Windows.Click       Fechar
    Fechar janela

Reservas (Listagem)
    ${nome_print}=     Set Variable     Reservas (Listagem)
    [Tags]     Clube    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Reservas (Listagem)
    RPA.Windows.Get Text    Consulta de Reservas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Reservas (1)   ${Caminho_Screenshots}Reservas (Listagem)
    Fechar janela

Reservas (Calendário)
    ${nome_print}=     Set Variable     Reservas (Calendário)
    [Tags]     Clube    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click       Reservas (Calendário)
    RPA.Windows.Get Text    Consulta Reservas/Dependência (1)
    RPA.Windows.Click       Executar
    RPA.Windows.Click       OK
    BaseDesktop.Screenshot  Consulta Reservas/Dependência (1)   ${Caminho_Screenshots}Reservas (Calendário)
    RPA.Windows.Click       Fechar

Consultas Personalizadas
    ${nome_print}=     Set Variable     Consultas Personalizadas
    [Tags]     Clube    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1)
    RPA.Windows.Click         Cadastrar Nova Consulta
    BaseDesktop.Screenshot    Consultas Personalizadas (1)    ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click         Fechar
    Fechar janela