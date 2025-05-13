*** Settings ***
Documentation    Smoke Test: Clube
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_clube

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Clube/Relatórios/    

*** Keywords ***

Relatórios
    Cadastros
    repetidor de teclas    right    6

*** Test Cases ***

Sócios
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Sócios
    Relatórios 
    RPA.Windows.Click       Sócios
    RPA.Windows.Get Text    Relação de Sócios (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relação de Sócios (1)   ${Caminho_Screenshots}Sócios
    RPA.Windows.Click       Confirmar
    Fechar janela

Sócios/Agências Bancárias
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Sócios_Agências Bancárias
    Relatórios 
    RPA.Windows.Click       Sócios/Agências Bancárias
    RPA.Windows.Get Text    Sócios/Agências Bancárias (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Sócios/Agências Bancárias (1)   ${Caminho_Screenshots}Sócios_Agências Bancárias
    RPA.Windows.Click       Confirmar
    Fechar janela      

Sócios/Aniversariantes
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Sócios_Aniversariantes
    Relatórios 
    RPA.Windows.Click       Sócios/Aniversariantes
    RPA.Windows.Get Text    Relatório de Sócios Aniversariantes (1)
    RPA.Windows.Click       Data Nascimento
    BaseDesktop.Screenshot  Relatório de Sócios Aniversariantes (1)   ${Caminho_Screenshots}Sócios_Aniversariantes
    Fechar janela

Sócios/Atividades
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Sócios_Atividades
    Relatórios 
    RPA.Windows.Click       Sócios/Atividades
    RPA.Windows.Get Text    Relatório de Atividades (1)
    RPA.Windows.Click       Nome/Sócio
    BaseDesktop.Screenshot  Relatório de Atividades (1)   ${Caminho_Screenshots}Sócios_Atividades
    Fechar janela  

Sócios/Local Acesso
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Sócios_Local Acesso
    Relatórios 
    RPA.Windows.Click       Sócios/Local Acesso
    RPA.Windows.Get Text    Relatório de Sócios Presentes/Local de Acesso (1)
    RPA.Windows.Click       Nome/Sócio
    BaseDesktop.Screenshot  Relatório de Sócios Presentes/Local de Acesso (1)   ${Caminho_Screenshots}Sócios_Local Acesso
    Fechar janela    

Sócios/Contagem de Acessos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Sócios_Contagem de Acessos
    Relatórios 
    RPA.Windows.Click       Sócios/Contagem de Acessos
    RPA.Windows.Get Text    Relatório de Contagem de Acessos (1)
    RPA.Windows.Click       Listar Dependentes
    BaseDesktop.Screenshot  Relatório de Contagem de Acessos (1)   ${Caminho_Screenshots}Sócios_Contagem de Acessos
    Fechar janela   

Reservas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Reservas
    Relatórios 
    RPA.Windows.Click       Reservas
    RPA.Windows.Get Text    Relatório de Reservas (1)
    RPA.Windows.Click       Código
    BaseDesktop.Screenshot  Relatório de Reservas (1)   ${Caminho_Screenshots}Reservas
    Fechar janela   

Relatório de Exames
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Relatório de Exames
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
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Relatório de Mensalidades Recebidas
    Relatórios 
    RPA.Windows.Click       Relatório de Mensalidades Recebidas
    RPA.Windows.Get Text    Relatório de Mensalidades Recebidas (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Mensalidades Recebidas (1)   ${Caminho_Screenshots}Relatório de Mensalidades Recebidas
    RPA.Windows.Click       Confirmar
    Fechar janela   

Quadro Social
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Quadro Social
    Relatórios 
    RPA.Windows.Click       Quadro Social
    RPA.Windows.Get Text    Quadro Social (1)
    BaseDesktop.Screenshot  Quadro Social (1)   ${Caminho_Screenshots}Quadro Social
    Fechar janela   

Lista de Presença de Atividades
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Lista de Presença de Atividades
    Relatórios 
    RPA.Windows.Click       Lista de Presença de Atividades
    RPA.Windows.Get Text    Relatório de Presença de Atividades (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Presença de Atividades (1)   ${Caminho_Screenshots}Lista de Presença de Atividades
    RPA.Windows.Click       Confirmar
    Fechar janela   

Encerrar
    Encerrar tudo