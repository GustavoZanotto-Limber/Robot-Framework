*** Settings ***
Documentation    Smoke Test: Frotas
Resource          C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_frotas

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Frotas/Projeto EDI Transportes/    

*** Keywords ***

Projeto EDI Transportes
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    10
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Importação NOTFIS
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Importação NOTFIS
    Projeto EDI Transportes                  Importação NOTFIS
    RPA.Windows.Get Text   	Importação de Dados do Projeto EDI Transporte (NOTFIS - Dados de Notas Fiscais) (1) 
    RPA.Windows.Click       Iniciar Importação
    BaseDesktop.Screenshot 	Importação de Dados do Projeto EDI Transporte (NOTFIS - Dados de Notas Fiscais) (1)                              ${Caminho_Screenshots}Importação NOTFIS
    RPA.Windows.Click       OK                             
    Fechar Janela

Exportação CONEMB
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Exportação CONEMB
    Projeto EDI Transportes                  Exportação CONEMB
    RPA.Windows.Get Text    bbbbb 

    BaseDesktop.Screenshot  bbbbb                              ${Caminho_Screenshots}Exportação CONEMB
    Fechar Janela

Exportação DOCCOB
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Exportação DOCCOB
    Projeto EDI Transportes                  Exportação DOCCOB
    RPA.Windows.Get Text    bbbbb 

    BaseDesktop.Screenshot  bbbbb                              ${Caminho_Screenshots}Exportação DOCCOB
    Fechar Janela

Exportação OCOREN
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Exportação OCOREN
    Projeto EDI Transportes                  Exportação OCOREN
    RPA.Windows.Get Text    bbbbb 

    BaseDesktop.Screenshot  bbbbb                              ${Caminho_Screenshots}Exportação OCOREN
    Fechar Janela


    