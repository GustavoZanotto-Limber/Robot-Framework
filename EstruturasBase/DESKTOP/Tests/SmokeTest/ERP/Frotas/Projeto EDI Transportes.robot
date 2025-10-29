*** Settings ***
Documentation    Smoke Test: Frotas
Resource          ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Frotas/Projeto EDI Transportes/    
${nome_print}
${nome_exe}=    cde_win_frotas
*** Keywords ***

Projeto EDI Transportes
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    11
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Importação NOTFIS
    ${nome_print}=     Set Variable     Importação NOTFIS
    [Tags]    Frotas   Projeto EDI Transportes   SmokeTest
    Projeto EDI Transportes                  Importação NOTFIS
    RPA.Windows.Get Text   	Importação de Dados do Projeto EDI Transporte (NOTFIS - Dados de Notas Fiscais) (1) 
    RPA.Windows.Click       Iniciar Importação
    BaseKeywordsDesktop.Screenshot 	Importação de Dados do Projeto EDI Transporte (NOTFIS - Dados de Notas Fiscais) (1)                              ${Caminho_Screenshots}Importação NOTFIS
    RPA.Windows.Click       OK                             
    Fechar Janela

Exportação CONEMB
    ${nome_print}=     Set Variable     Exportação CONEMB
    [Tags]    Frotas   Projeto EDI Transportes   SmokeTest
    Projeto EDI Transportes                  Exportação CONEMB
    RPA.Windows.Get Text    bbbbb 
    BaseKeywordsDesktop.Screenshot  bbbbb                              ${Caminho_Screenshots}Exportação CONEMB
    Fechar Janela

Exportação DOCCOB
    ${nome_print}=     Set Variable     Exportação DOCCOB
    [Tags]    Frotas   Projeto EDI Transportes   SmokeTest
    Projeto EDI Transportes                  Exportação DOCCOB
    RPA.Windows.Get Text    bbbbb 
    BaseKeywordsDesktop.Screenshot  bbbbb                              ${Caminho_Screenshots}Exportação DOCCOB
    Fechar Janela

Exportação OCOREN
    ${nome_print}=     Set Variable     Exportação OCOREN
    [Tags]    Frotas   Projeto EDI Transportes   SmokeTest
    Projeto EDI Transportes                  Exportação OCOREN
    RPA.Windows.Get Text    bbbbb 
    BaseKeywordsDesktop.Screenshot  bbbbb                              ${Caminho_Screenshots}Exportação OCOREN
    Fechar Janela