*** Settings ***
Documentation    Smoke Test: Frotas
Resource          C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_frotas

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Frotas/Consultas/    

*** Keywords ***

Consultas
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    7
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Consultas Personalizadas
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Consultas Personalizadas
    Consultas               Consultas Personalizadas
    RPA.Windows.Get Text   	Consultas Personalizadas (1) 
    RPA.Windows.Click       Cadastrar Nova Consulta
    BaseDesktop.Screenshot 	Consultas Personalizadas (1)                              ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click       Sair
    Fechar Janela

Consulta de Pneus
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Consulta de Pneus
    Consultas               Consulta de Pneus
    RPA.Windows.Get Text    Consulta de Pneus (1) 
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Pneus (1)                              ${Caminho_Screenshots}Consulta de Pneus
    RPA.Windows.Click       Fechar

Consulta de Avisos
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Consulta de Avisos
    Consultas               Consulta de Avisos
    RPA.Windows.Get Text    Consulta de Avisos (1) 
    BaseDesktop.Screenshot  Consulta de Avisos (1)                              ${Caminho_Screenshots}Consulta de Avisos
    Fechar Janela

Consulta de Receitas e Despesas
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Consulta de Receitas e Despesas
    Consultas               Consulta de Receitas e Despesas
    RPA.Windows.Get Text   	Consulta de Receitas e Despesas (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Consulta de Receitas e Despesas (1)                              ${Caminho_Screenshots}Consulta de Receitas e Despesas
    RPA.Windows.Click       Confirmar
    Fechar Janela

Consulta de Mov. de Veículos
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Consulta de Mov. de Veículos
    Consultas               Consulta de Mov. de Veículos
    RPA.Windows.Get Text   	Consulta de Movimentação de Veículos (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Consulta de Movimentação de Veículos (1)                              ${Caminho_Screenshots}Consulta de Mov. de Veículos
    RPA.Windows.Click       Confirmar
    Fechar Janela

Consulta de Infrações de Trânsito
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Consulta de Infrações de Trânsito
    Consultas               Consulta de Infrações de Trânsito
    RPA.Windows.Get Text   	Consulta de Infrações de Trânsito (1) 
    RPA.Desktop.Press Keys  tab
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Click       Confirmar
    BaseDesktop.Screenshot 	Consulta de Infrações de Trânsito (1)                              ${Caminho_Screenshots}Consulta de Infrações de Trânsito
    Fechar Janela

Consulta de Abastecimentos(PoliFrotas)
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Consulta de Abastecimentos(PoliFrotas)
    Consultas               Consulta de Abastecimentos(PoliFrotas)
    RPA.Windows.Get Text   	Consulta de Abastecidas PoliFrotas (1) 
    repetidor de teclas     tab      2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Consulta de Abastecidas PoliFrotas (1)                              ${Caminho_Screenshots}Consulta de Abastecimentos(PoliFrotas)
    RPA.Windows.Click       Fechar


    