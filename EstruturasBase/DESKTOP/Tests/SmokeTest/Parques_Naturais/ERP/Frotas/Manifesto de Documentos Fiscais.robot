*** Settings ***
Documentation    Smoke Test: Frotas
Resource          C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_frotas

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Frotas/Manifesto de Documentos Fiscais/    

*** Keywords ***

Manifesto de Documentos Fiscais
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    5
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Manifesto de Documentos Fiscais
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Manifesto de Documentos Fiscais
    Manifesto de Documentos Fiscais                 Manifesto de Documentos Fiscais
    RPA.Windows.Get Text    Manifesto Eletrônico de Documentos Fiscais (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Manifesto Eletrônico de Documentos Fiscais (1)                             ${Caminho_Screenshots}Manifesto de Documentos Fiscais
    Fechar Janela

Monitor - MDF-E
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Monitor - MDF-E
    Manifesto de Documentos Fiscais                 	Monitor - MDF-e
    RPA.Windows.Get Text    Monitor MDF-e (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Monitor MDF-e (1)                              ${Caminho_Screenshots}Monitor - MDF-E
    RPA.Windows.Click       Confirmar
    Fechar Janela

Importar CT-e/NF-e para MDF-e
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Importar CT-e/NF-e para MDF-e
    Manifesto de Documentos Fiscais                  Importar CT-e/NF-e para MDF-e
    RPA.Windows.Get Text    Importador MDF-e (1) 
    RPA.Windows.Click       Marcar Todos
    RPA.Windows.Click       OK
    BaseDesktop.Screenshot  Importador MDF-e (1)                              ${Caminho_Screenshots}Importar CT-e/NF-e para MDF-e
    Fechar Janela


    