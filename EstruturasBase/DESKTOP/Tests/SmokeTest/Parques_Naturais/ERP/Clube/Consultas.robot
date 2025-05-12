*** Settings ***
Documentation    Smoke Test: Clube
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_clube

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Clube/Consultas/    

*** Keywords ***

Consultas
    Cadastros
    repetidor de teclas    right    2

*** Test Cases ***

Mensalidades Pendentes/Pagas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Mensalidades Pendentes_Pagas
    Consultas 
    RPA.Windows.Click       Mensalidades Pendentes/Pagas
    RPA.Windows.Get Text    Consulta do Contas a Receber (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta do Contas a Receber (1)   ${Caminho_Screenshots}Mensalidades Pendentes_Pagas
    Fechar janela
    RPA.Windows.Click       Não

Sócios/Dependentes
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Sócios_Dependentes
    Consultas
    RPA.Windows.Click       Sócios/Dependentes
    RPA.Windows.Get Text    Sócios/Dependentes
    BaseDesktop.Screenshot  Sócios/Dependentes   ${Caminho_Screenshots}Sócios_Dependentes
    RPA.Windows.Click       Fechar
    

Controle Acessos > Status do Cartão
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Controle Acessos/             ERRO Status do Cartão
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
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Controle Acessos/             ERRO Extrato/Local Acesso
    Consultas
    RPA.Windows.Click       Controle Acessos 
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Sócios Presentes (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Sócios Presentes (1)   ${Caminho_Screenshots}Controle Acessos/Extrato/Local Acesso 
    RPA.Windows.Click       Fechar
    Fechar janela

Controle Acessos > Extrato do Cartão
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Controle Acessos/             ERRO Extrato do Cartão
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
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Reservas (Listagem)
    Consultas
    RPA.Windows.Click       Reservas (Listagem)
    RPA.Windows.Get Text    Consulta de Reservas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Reservas (1)   ${Caminho_Screenshots}Reservas (Listagem)
    Fechar janela

Reservas (Calendário)
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Reservas (Calendário)
    Consultas
    RPA.Windows.Click       Reservas (Calendário)
    RPA.Windows.Get Text    Consulta Reservas/Dependência (1)
    RPA.Windows.Click       Executar
    RPA.Windows.Click       OK
    BaseDesktop.Screenshot  Consulta Reservas/Dependência (1)   ${Caminho_Screenshots}Reservas (Calendário)
    RPA.Windows.Click       Fechar
    
Consultas Personalizadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Consultas Personalizadas
    Consultas
    RPA.Windows.Click         Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1)
    RPA.Windows.Click         Cadastrar Nova Consulta
    BaseDesktop.Screenshot    Consultas Personalizadas (1)    ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click         Fechar
    Fechar janela

Encerrar
    Encerrar tudo