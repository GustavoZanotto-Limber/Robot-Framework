*** Settings ***
Documentation    Smoke Test: Front
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao     cde_win_bca_frontR30
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2    ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/Front/Consultas/ 
${nome_print}
${nome_exe}=    cde_win_bca_frontR30

*** Keywords ***


*** Test Cases ***

Consulta de Vendas
    [Tags]    Consultas    Front    SmokeTest  
    ${nome_print}=          Set Variable    Consulta de Vendas    Teste
    Consultas Front         Consulta de Vendas    
    RPA.Windows.Get Text    Consulta de Vendas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Vendas (1)    ${Caminho_Screenshots}Consulta de Vendas
    Fechar janela

Consulta de Reservas
    [Tags]    Consultas    Front    SmokeTest      Teste
    ${nome_print}=          Set Variable    Consulta de Reservas        
    Consultas Front         Consulta de Reservas
    RPA.Windows.Get Text    Consulta de Reservas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Reservas (1)    ${Caminho_Screenshots}Consulta de Reservas
    Fechar janela

Consulta de Voucher
    [Tags]    Consultas    Front    SmokeTest  
    ${nome_print}=          Set Variable    Consulta de Voucher
    Consultas Front         Consulta de Voucher     
    RPA.Windows.Get Text    Consulta de Voucher (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Voucher (1)    ${Caminho_Screenshots}Consulta de Voucher
    Fechar janela

Consulta de Lançamento de Veículos
    [Tags]    Consultas    Front    SmokeTest  
    ${nome_print}=          Set Variable    Consulta de Lançamento de Veículos   
    Consultas Front         Consulta de Lançamento de Veículos   
    RPA.Windows.Get Text    Consulta de Lançamentos de Veículos (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Lançamentos de Veículos (1)    ${Caminho_Screenshots}Consulta de Lançamento de Veículos
    Fechar janela

Consulta de Bilhetes
    [Tags]    Consultas    Front    SmokeTest  
    ${nome_print}=          Set Variable    Consulta de Bilhetes    
    Consultas Front         Consulta de Bilhetes   
    RPA.Windows.Get Text    Consulta de Bilhetes (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Consulta de Bilhetes (1)    ${Caminho_Screenshots}Consulta de Bilhetes
    RPA.Windows.Click       Cancelar
    Fechar janela

Leitor de Bilhetes
    [Tags]    Consultas    Front    SmokeTest  
    ${nome_print}=          Set Variable    Leitor de Bilhetes    
    Consultas Front         Leitor de Bilhetes
    RPA.Windows.Get Text    Leitor de Bilhetes (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Leitor de Bilhetes (1)    ${Caminho_Screenshots}Leitor de Bilhetes
    RPA.Windows.Click       Fechar

Consulta Passaporte
    [Tags]    Consultas    Front    SmokeTest  
    ${nome_print}=          Set Variable    Consulta Passaporte    
    Consultas Front         Consulta Passaporte    
    Sleep                   1s
    RPA.Windows.Get Text    Consulta de Passaporte (1)
    RPA.Windows.Click       LOCALIZAR PASSAPORTE
    BaseDesktop.Screenshot  Consulta de Passaporte (1)    ${Caminho_Screenshots}Consulta Passaporte
    RPA.Windows.Click       OK
    Sleep                   1s
    RPA.Windows.Click       Fechar

Consultas Personalizadas
    [Tags]    Consultas    Front    SmokeTest  
    ${nome_print}=          Set Variable    Consultas Personalizadas
    Consultas Front         Consultas Personalizadas   
    RPA.Windows.Get Text    Consultas Personalizadas (1)
    RPA.Windows.Click       Cadastrar Nova Consulta
    BaseDesktop.Screenshot  Consultas Personalizadas (1)    ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click       Fechar
    Fechar janela


    