*** Settings ***
Documentation    Smoke Test: Front
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao Front

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/Front/Consultas/ 

*** Keywords ***

Manutenções
    Cadastros
    repetidor de teclas    right    2

*** Test Cases ***

Consulta de Vendas
    [Teardown]              Caso aconteça erro        ${Caminho_Screenshots}                       Consulta de Vendas
    Manutenções
    RPA.Windows.Click       Consulta de Vendas
    RPA.Windows.Get Text    Consulta de Vendas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Vendas (1)    ${Caminho_Screenshots}Consulta de Vendas
    Fechar janela

Consulta de Reservas
    [Teardown]              Caso aconteça erro          ${Caminho_Screenshots}                         Consulta de Reservas
    Manutenções
    RPA.Windows.Click       Consulta de Reservas
    RPA.Windows.Get Text    Consulta de Reservas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Reservas (1)    ${Caminho_Screenshots}Consulta de Reservas
    Fechar janela

Consulta de Voucher
    [Teardown]              Caso aconteça erro         ${Caminho_Screenshots}                        Consulta de Voucher
    Manutenções
    RPA.Windows.Click       Consulta de Voucher
    RPA.Windows.Get Text    Consulta de Voucher (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Voucher (1)    ${Caminho_Screenshots}Consulta de Voucher
    Fechar janela

Consulta de Lançamento de Veículos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                                       Consulta de Lançamento de Veículos
    Manutenções
    RPA.Windows.Click       Consulta de Lançamento de Veículos
    RPA.Windows.Get Text    Consulta de Lançamentos de Veículos (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Lançamentos de Veículos (1)    ${Caminho_Screenshots}Consulta de Lançamento de Veículos
    Fechar janela

Consulta de Bilhetes
    [Teardown]              Caso aconteça erro          ${Caminho_Screenshots}                         Consulta de Bilhetes
    Manutenções
    RPA.Windows.Click       Consulta de Bilhetes
    RPA.Windows.Get Text    Consulta de Bilhetes (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Consulta de Bilhetes (1)    ${Caminho_Screenshots}Consulta de Bilhetes
    RPA.Windows.Click       Cancelar
    Fechar janela

Leitor de Bilhetes
    [Teardown]              Caso aconteça erro        ${Caminho_Screenshots}                       Leitor de Bilhetes
    Manutenções
    RPA.Windows.Click       Leitor de Bilhetes
    RPA.Windows.Get Text    Leitor de Bilhetes (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Leitor de Bilhetes (1)    ${Caminho_Screenshots}Leitor de Bilhetes
    RPA.Windows.Click       Fechar

Consulta Passaporte
    [Teardown]              Caso aconteça erro            ${Caminho_Screenshots}                        Consulta Passaporte
    Manutenções
    RPA.Windows.Click       Consulta Passaporte
    Sleep                   1s
    RPA.Windows.Get Text    Consulta de Passaporte (1)
    RPA.Windows.Click       LOCALIZAR PASSAPORTE
    BaseDesktop.Screenshot  Consulta de Passaporte (1)    ${Caminho_Screenshots}Consulta Passaporte
    RPA.Windows.Click       OK
    Sleep                   1s
    RPA.Windows.Click       Fechar

Consultas Personalizadas
    [Teardown]              Caso aconteça erro              ${Caminho_Screenshots}                             Consultas Personalizadas
    Manutenções
    RPA.Windows.Click       Consultas Personalizadas
    RPA.Windows.Get Text    Consultas Personalizadas (1)
    RPA.Windows.Click       Cadastrar Nova Consulta
    BaseDesktop.Screenshot  Consultas Personalizadas (1)    ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click       Fechar
    Fechar janela

Encerrar
    Encerrar tudo