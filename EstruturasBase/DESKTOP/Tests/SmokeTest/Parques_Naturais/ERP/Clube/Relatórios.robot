*** Settings ***
Documentation    Smoke Test: Clube
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup         Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteça erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Clube/Relatórios/    
${nome_print}
${nome_exe}=    cde_win_clube

*** Keywords ***

Relatórios
    Cadastros
    repetidor de teclas    right    6

*** Test Cases ***

Sócios
    ${nome_print}=     Set Variable     Sócios
    [Tags]     Clube    Relatórios   SmokeTest
    Relatórios 
    RPA.Windows.Click       Sócios
    RPA.Windows.Get Text    Relação de Sócios (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relação de Sócios (1)   ${Caminho_Screenshots}Sócios
    RPA.Windows.Click       Confirmar
    Fechar janela

Sócios/Agências Bancárias
    ${nome_print}=     Set Variable     Sócios_Agências Bancárias
    [Tags]     Clube    Relatórios   SmokeTest
    Relatórios 
    RPA.Windows.Click       Sócios/Agências Bancárias
    RPA.Windows.Get Text    Sócios/Agências Bancárias (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Sócios/Agências Bancárias (1)   ${Caminho_Screenshots}Sócios_Agências Bancárias
    RPA.Windows.Click       Confirmar
    Fechar janela      

Sócios/Aniversariantes
    ${nome_print}=     Set Variable     Sócios_Aniversariantes
    [Tags]     Clube    Relatórios   SmokeTest
    Relatórios 
    RPA.Windows.Click       Sócios/Aniversariantes
    RPA.Windows.Get Text    Relatório de Sócios Aniversariantes (1)
    RPA.Windows.Click       Data Nascimento
    BaseDesktop.Screenshot  Relatório de Sócios Aniversariantes (1)   ${Caminho_Screenshots}Sócios_Aniversariantes
    Fechar janela

Sócios/Atividades
    ${nome_print}=     Set Variable     Sócios_Atividades
    [Tags]     Clube    Relatórios   SmokeTest
    Relatórios 
    RPA.Windows.Click       Sócios/Atividades
    RPA.Windows.Get Text    Relatório de Atividades (1)
    RPA.Windows.Click       Nome/Sócio
    BaseDesktop.Screenshot  Relatório de Atividades (1)   ${Caminho_Screenshots}Sócios_Atividades
    Fechar janela  

Sócios/Local Acesso
    ${nome_print}=     Set Variable     Sócios_Local Acesso
    [Tags]     Clube    Relatórios   SmokeTest
    Relatórios 
    RPA.Windows.Click       Sócios/Local Acesso
    RPA.Windows.Get Text    Relatório de Sócios Presentes/Local de Acesso (1)
    RPA.Windows.Click       Nome/Sócio
    BaseDesktop.Screenshot  Relatório de Sócios Presentes/Local de Acesso (1)   ${Caminho_Screenshots}Sócios_Local Acesso
    Fechar janela    

Sócios/Contagem de Acessos
    ${nome_print}=     Set Variable     Sócios_Contagem de Acessos
    [Tags]     Clube    Relatórios   SmokeTest
    Relatórios 
    RPA.Windows.Click       Sócios/Contagem de Acessos
    RPA.Windows.Get Text    Relatório de Contagem de Acessos (1)
    RPA.Windows.Click       Listar Dependentes
    BaseDesktop.Screenshot  Relatório de Contagem de Acessos (1)   ${Caminho_Screenshots}Sócios_Contagem de Acessos
    Fechar janela   

Reservas
    ${nome_print}=     Set Variable     Reservas
    [Tags]     Clube    Relatórios   SmokeTest
    Relatórios 
    RPA.Windows.Click       Reservas
    RPA.Windows.Get Text    Relatório de Reservas (1)
    RPA.Windows.Click       Código
    BaseDesktop.Screenshot  Relatório de Reservas (1)   ${Caminho_Screenshots}Reservas
    Fechar janela   

Relatório de Exames
    ${nome_print}=     Set Variable     Relatório de Exames
    [Tags]     Clube    Relatórios   SmokeTest
    Relatórios 
    RPA.Windows.Click       Relatório de Exames
    RPA.Windows.Get Text    Relatório de Exames (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Exames (1)   ${Caminho_Screenshots}Relatório de Exames
    RPA.Windows.Click       OK
    Fechar janela
    RPA.Windows.Click       OK   

Relatório de Mensalidades Recebidas
    ${nome_print}=     Set Variable     Relatório de Mensalidades Recebidas
    [Tags]     Clube    Relatórios   SmokeTest
    Relatórios 
    RPA.Windows.Click       Relatório de Mensalidades Recebidas
    RPA.Windows.Get Text    Relatório de Mensalidades Recebidas (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Mensalidades Recebidas (1)   ${Caminho_Screenshots}Relatório de Mensalidades Recebidas
    RPA.Windows.Click       Confirmar
    Fechar janela   

Quadro Social
    ${nome_print}=     Set Variable     Quadro Social
    [Tags]     Clube    Relatórios   SmokeTest
    Relatórios 
    RPA.Windows.Click       Quadro Social
    RPA.Windows.Get Text    Quadro Social (1)
    BaseDesktop.Screenshot  Quadro Social (1)   ${Caminho_Screenshots}Quadro Social
    Fechar janela   

Lista de Presença de Atividades
    ${nome_print}=     Set Variable     Lista de Presença de Atividades
    [Tags]     Clube    Relatórios   SmokeTest
    Relatórios 
    RPA.Windows.Click       Lista de Presença de Atividades
    RPA.Windows.Get Text    Relatório de Presença de Atividades (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Presença de Atividades (1)   ${Caminho_Screenshots}Lista de Presença de Atividades
    RPA.Windows.Click       Confirmar
    Fechar janela