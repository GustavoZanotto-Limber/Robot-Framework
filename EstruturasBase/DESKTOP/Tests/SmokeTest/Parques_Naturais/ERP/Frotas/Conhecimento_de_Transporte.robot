*** Settings ***
Documentation    Smoke Test: Frotas
Resource          ../../../../../Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Frotas/Conhecimento de Transporte/    
${nome_print}
${nome_exe}=    cde_win_frotas
*** Keywords ***

Conhecimento de Transporte
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    4
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Conhecimento de Transporte > Emissão
    ${nome_print}=     Set Variable     Emissão
    [Tags]    Frotas   Conhecimento de Transporte   SmokeTest
    Conhecimento de Transporte                  Conhecimento de Transporte
    RPA.Desktop.Press Keys  E  
    RPA.Windows.Get Text    Conhecimento de Transporte (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Conhecimento de Transporte (1)                             ${Caminho_Screenshots}Conhecimento de Transporte/Emissão
    Fechar com Sim

Conhecimento de Transporte > Cancelamento
    ${nome_print}=     Set Variable     Cancelamento
    [Tags]    Frotas   Conhecimento de Transporte   SmokeTest
    Conhecimento de Transporte                  Conhecimento de Transporte
    RPA.Desktop.Press Keys  C  
    RPA.Windows.Get Text    Conhecimento de Transporte Eletrônico - Cancelamento (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Conhecimento de Transporte Eletrônico - Cancelamento (1)                             ${Caminho_Screenshots}Conhecimento de Transporte/Cancelamento
    RPA.Windows.Click       Confirmar
    Fechar Janela

Conhecimento de Transporte > Carta de Correção
    ${nome_print}=     Set Variable     Carta de Correção
    [Tags]    Frotas   Conhecimento de Transporte   SmokeTest
    Conhecimento de Transporte                  Conhecimento de Transporte
    RPA.Desktop.Press Keys  A  
    RPA.Windows.Click       OK
    RPA.Windows.Get Text    Carta de Correção Eletrônica (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Carta de Correção Eletrônica (1)                             ${Caminho_Screenshots}Conhecimento de Transporte/Carta de Correção
    RPA.Windows.Click       Confirmar
    Fechar Janela

Conhecimento de Transporte > Cálculo Desconto Quebra
    ${nome_print}=     Set Variable     Cálculo Desconto Quebra
    [Tags]    Frotas   Conhecimento de Transporte   SmokeTest
    Conhecimento de Transporte                  Conhecimento de Transporte
    RPA.Desktop.Press Keys  L  
    RPA.Windows.Get Text    Cálculo Desconto Quebra (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Cálculo Desconto Quebra (1)                             ${Caminho_Screenshots}Conhecimento de Transporte/Cálculo Desconto Quebra
    RPA.Windows.Click       Confirmar
    Fechar Janela

Envio de Lote
    ${nome_print}=     Set Variable     Envio em Lote
    [Tags]    Frotas   Conhecimento de Transporte   SmokeTest
    Conhecimento de Transporte                  Envio em Lote
    RPA.Windows.Click       OK
    RPA.Windows.Get Text    Emissão em Lote - Conhecimento de Transporte Eletrônico (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Emissão em Lote - Conhecimento de Transporte Eletrônico (1)                             ${Caminho_Screenshots}Envio em Lote
    Fechar Janela

Monitor de CT-e
    ${nome_print}=     Set Variable     Monitor de CT-e
    [Tags]    Frotas   Conhecimento de Transporte   SmokeTest
    Conhecimento de Transporte                  Monitor de CT-e
    RPA.Windows.Get Text    Monitor - CT-e (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Monitor - CT-e (1)                             ${Caminho_Screenshots}Monitor de CT-e
    RPA.Windows.Click       Confirmar
    Fechar Janela

Insucesso/Cancelar Insucesso
    ${nome_print}=     Set Variable     Insucesso_Cancelar Insucesso
    [Tags]    Frotas   Conhecimento de Transporte   SmokeTest
    Conhecimento de Transporte                  Insucesso/Cancelar Insucesso
    RPA.Windows.Get Text    CT-e Insucesso/Cancelamento de Insucesso (1)
    RPA.Windows.Click       Selecionar CTe
    BaseDesktop.Screenshot  CT-e Insucesso/Cancelamento de Insucesso (1)                             ${Caminho_Screenshots}Insucesso_Cancelar Insucesso
    RPA.Windows.Click       Confirmar
    RPA.Windows.Click       OK
    Fechar Janela

Averbação Online
    ${nome_print}=     Set Variable     Averbação Online
    [Tags]    Frotas   Conhecimento de Transporte   SmokeTest    
    Conhecimento de Transporte                  Averbação Online
    RPA.Windows.Get Text    Averbação Online (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Averbação Online (1)                             ${Caminho_Screenshots}Averbação Online
    RPA.Windows.Click       Confirmar
    Fechar Janela

Notas Fiscais Pendentes de Emissão de CT-e
    ${nome_print}=     Set Variable     Notas Fiscais Pendentes de Emissão de CT-e
    [Tags]    Frotas   Conhecimento de Transporte   SmokeTest
    Conhecimento de Transporte                  Notas Fiscais Pendentes de Emissão de CT-e
    RPA.Windows.Get Text   	Notas Fiscais Pendentes de Emissão de CTe. (1)
    RPA.Windows.Click       Atualizar
    BaseDesktop.Screenshot  Notas Fiscais Pendentes de Emissão de CTe. (1)                             ${Caminho_Screenshots}Notas Fiscais Pendentes de Emissão de CT-e
    Fechar Janela

Subcontratação de CT-e
    ${nome_print}=     Set Variable     Subcontratação de CT-e
    [Tags]    Frotas   Conhecimento de Transporte   SmokeTest
    Conhecimento de Transporte                  Subcontratação de CT-e
    RPA.Windows.Get Text   	Subcontratação de CT-e (1)
    RPA.Windows.Click       Atualizar
    BaseDesktop.Screenshot 	Subcontratação de CT-e (1)                             ${Caminho_Screenshots}Subcontratação de CT-e
    Fechar Janela

Recibo de Pagamento a Autônomo (RPA) > Emissão
    ${nome_print}=     Set Variable     Emissão
    [Tags]    Frotas   Conhecimento de Transporte   SmokeTest
    Conhecimento de Transporte                  Recibo de Pagamento a Autônomo (RPA)
    RPA.Desktop.Press Keys       E
    RPA.Windows.Get Text    Emissão de RPA (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Emissão de RPA (1)                             ${Caminho_Screenshots}Recibo de Pagamento a Autônomo (RPA)/Emissão
    Fechar Janela

Recibo de Pagamento a Autônomo (RPA) > Exclusão/Reimpressão
    ${nome_print}=     Set Variable     Exclusão_Reimpressão
    [Tags]    Frotas   Conhecimento de Transporte   SmokeTest
    Conhecimento de Transporte                  Recibo de Pagamento a Autônomo (RPA)
    RPA.Desktop.Press Keys       X  
    RPA.Windows.Get Text   	Reimpressão/Exclusão de RPAs (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot 	Reimpressão/Exclusão de RPAs (1)                             ${Caminho_Screenshots}Recibo de Pagamento a Autônomo (RPA)/Exclusão_Reimpressão
    Fechar Janela

Recibo de Pagamento a Autônomo (RPA) > Consulta/Conferência de Conhecimento de Transporte
    ${nome_print}=     Set Variable     Consulta_Conferência de Conhecimento de Transporte
    [Tags]    Frotas   Conhecimento de Transporte   SmokeTest    
    Conhecimento de Transporte                  Recibo de Pagamento a Autônomo (RPA)
    RPA.Desktop.Press Keys      C  
    RPA.Windows.Get Text     	Consulta/Conferência de CTEs (1)
    RPA.Desktop.Press Keys      0
    RPA.Desktop.Press Keys      Enter
    BaseDesktop.Screenshot  	Consulta/Conferência de CTEs (1)                             ${Caminho_Screenshots}Recibo de Pagamento a Autônomo (RPA)/Consulta_Conferência de Conhecimento de Transporte
    RPA.Windows.Click           Confirmar
    Fechar Janela

Documentos emitidos contra o estabelecimento para CT-e
    ${nome_print}=     Set Variable     Documentos emitidos contra o estabelecimento para CT-e
    [Tags]    Frotas   Conhecimento de Transporte   SmokeTest    
    Conhecimento de Transporte                  Documentos emitidos contra o estabelecimento para CT-e
    RPA.Windows.Get Text   	Documentos emitidos contra o estabelecimento para CT-e (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot 	Documentos emitidos contra o estabelecimento para CT-e (1)                             ${Caminho_Screenshots}Documentos emitidos contra o estabelecimento para CT-e
    Fechar Janela