*** Settings ***
Documentation    Smoke Test: Frotas
Resource          C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_frotas

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Frotas/Manutenções/    

*** Keywords ***

Manutenções
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    1
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Requisição contra Almoxarifado
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Requisição contra Almoxarifado
    Manutenções             Requisição contra Almoxarifado    
    RPA.Windows.Get Text    Requisição Contra Almoxarifado (1)
    RPA.Windows.Click       Novo
    RPA.Windows.Click       OK
    BaseDesktop.Screenshot  Requisição Contra Almoxarifado (1)    ${Caminho_Screenshots}Requisição contra Almoxarifado
    Fechar Janela
    RPA.Windows.Click       Sim

Incluir/Alterar Entradas/Compras
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Incluir_Alterar Entradas_Compras
    Manutenções             Incluir/Alterar Entradas/Compras    
    RPA.Windows.Get Text    Entradas/Compras - Incluir/Alterar (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Entradas/Compras - Incluir/Alterar (1)    ${Caminho_Screenshots}Incluir_Alterar Entradas_Compras
    Fechar Janela
    RPA.Windows.Click       Sim

Manutenção Manual de Pneus
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Manutenção Manual de Pneus
    Manutenções              Manutenção Manual de Pneus    
    RPA.Windows.Get Text    Consulta de Pneus (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Pneus (1)    ${Caminho_Screenshots}Manutenção Manual de Pneus
    RPA.Windows.Click       Fechar

Ordem de Serviço Interna
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Ordem de Serviço Interna
    Manutenções              Ordem de Serviço Interna    
    RPA.Windows.Get Text    Ordem de Serviço Interna (1)
    RPA.Windows.Click       Novo
    RPA.Windows.Click       OK
    BaseDesktop.Screenshot  Ordem de Serviço Interna (1)    ${Caminho_Screenshots}Ordem de Serviço Interna
    Fechar Janela
    RPA.Windows.Click       Sim

Ordem de Serviço Externa
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             Ordem de Serviço Externa
    Manutenções             Ordem de Serviço Externa    
    RPA.Windows.Get Text    Ordem de Serviço Externa
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Ordem de Serviço Externa          ${Caminho_Screenshots}Ordem de Serviço Externa
    Fechar Janela
    RPA.Windows.Click       Sim

Encerrar
    Encerrar tudo