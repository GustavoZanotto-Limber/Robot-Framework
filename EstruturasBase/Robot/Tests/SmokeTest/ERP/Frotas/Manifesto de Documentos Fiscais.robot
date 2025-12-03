*** Settings ***
Documentation    Smoke Test: Frotas
Resource          ../../../../Resources/Base/Base_Desktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/SmokeTest/Bilheteria/ERP/Frotas/Manifesto de Documentos Fiscais/    
${nome_print}
${nome_exe}=    cde_win_frotas
*** Keywords ***

Manifesto de Documentos Fiscais
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    6
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Manifesto de Documentos Fiscais (CONFIGURAÇÂO)
    ${nome_print}=     Set Variable     Manifesto de Documentos Fiscais
    [Tags]   SmokeERP   Frotas   Manifesto de Documentos Fiscais   SmokeTest    
    Manifesto de Documentos Fiscais                 Manifesto de Documentos Fiscais
    RPA.Windows.Get Text    Manifesto Eletrônico de Documentos Fiscais (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Manifesto Eletrônico de Documentos Fiscais (1)                             ${Caminho_Screenshots}Manifesto de Documentos Fiscais
    Fechar com Sim

Monitor - MDF-E
    ${nome_print}=     Set Variable     Monitor - MDF-E
    [Tags]   SmokeERP   Frotas   Manifesto de Documentos Fiscais   SmokeTest    
    Manifesto de Documentos Fiscais                 	Monitor - MDF-e
    RPA.Windows.Get Text    Monitor MDF-e (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    Base_Desktop.Screenshot  Monitor MDF-e (1)                              ${Caminho_Screenshots}Monitor - MDF-E
    RPA.Windows.Click       Confirmar
    Fechar Janela

Importar CT-e/NF-e para MDF-e
    ${nome_print}=     Set Variable     Importar CT-e/NF-e para MDF-e
    [Tags]   SmokeERP   Frotas   Manifesto de Documentos Fiscais   SmokeTest
    Manifesto de Documentos Fiscais                  Importar CT-e/NF-e para MDF-e
    RPA.Windows.Get Text    Importador MDF-e (1) 
    RPA.Windows.Click       Marcar Todos
    RPA.Windows.Click       OK
    Base_Desktop.Screenshot  Importador MDF-e (1)                              ${Caminho_Screenshots}Importar CT-e/NF-e para MDF-e
    Fechar Janela