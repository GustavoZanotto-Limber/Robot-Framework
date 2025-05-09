*** Settings ***
Documentation    Smoke Test: Front
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao Front

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/Front/Caixa Operador/ 

*** Keywords ***

Caixa Operador
    Cadastros
    repetidor de teclas    right    4

Fechar caixa caso esteja aberto
    ${caixa_aberto}=          Run Keyword And Ignore Error                                                                         RPA.Windows.Get Text    Fechar Caixa
    IF                        ${caixa_aberto} != (\'FAIL\', "ElementNotFound: Element not found with locator \'Fechar Caixa\'")
    RPA.Windows.Click         Fechar Caixa
    RPA.Windows.Click         Sim
    Sleep                     2s
    RPA.Desktop.Press Keys    Esc
    Sleep                     2s
    RPA.Desktop.Press Keys    Enter                                                                                                
    Caixa Operador            
    RPA.Windows.Click         Abertura / Fechamento                                                                                

    END

*** Test Cases    ***

Abertura / Fechamento

    [Teardown]                          Caso aconteça erro       ${Caminho_Screenshots}                       ERRO Abertura_Fechamento
    Caixa Operador
    RPA.Windows.Click                   Abertura / Fechamento
    Fechar caixa caso esteja aberto 
    RPA.Desktop.Press Keys              Enter
    RPA.Windows.Click                   Abrir Caixa
    RPA.Desktop.Press Keys              Enter
    BaseDesktop.Screenshot                          Controle de Caixa (1)    ${Caminho_Screenshots}Abertura_Fechamento
    RPA.Windows.Click                   OK


Suprimento / Sangria
    [Teardown]              Caso aconteça erro        ${Caminho_Screenshots}                            ERRO Suprimento_Sangria
    Caixa Operador
    RPA.Windows.Click       Suprimento / Sangria
    RPA.Windows.Get Text    Movimento de Caixa (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Movimento de Caixa (1)    ${Caminho_Screenshots}Consultas Personalizadas
    Fechar janela
    RPA.Windows.Click       Sim


Encerrar
    Encerrar tudo