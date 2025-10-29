*** Settings ***
Documentation    Smoke Test: Frotas
Resource          ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Frotas/Frotas/     
${nome_print}
${nome_exe}=    cde_win_frotas
*** Keywords ***

Frotas
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    3
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Lançamento de Viagem
    ${nome_print}=     Set Variable     Lançamento de Viagem
    [Tags]    Frotas   Frotas   SmokeTest
    Frotas                  Lançamento de Viagem    
    RPA.Windows.Get Text    Lançamento de Viagem (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Lançamento de Viagem (1)                             ${Caminho_Screenshots}Lançamento de Viagem
    Fechar com Sim

Adiantamentos/Devoluções > Adiantamentos
    ${nome_print}=     Set Variable     Adiantamentos
    [Tags]    Frotas   Frotas   SmokeTest
    Frotas                  Adiantamentos/Devoluções
    RPA.Desktop.Press Keys  A    
    RPA.Windows.Get Text    Cadastro de Adiantamentos - Motorista (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Adiantamentos - Motorista (1)       ${Caminho_Screenshots}Adiantamentos_Devoluções\Adiantamentos
    Fechar com Sim

Adiantamentos/Devoluções > Devoluções
    ${nome_print}=     Set Variable     Devoluções
    [Tags]    Frotas   Frotas   SmokeTest
    Frotas                  Adiantamentos/Devoluções
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Cadastro de Devolução - Motorista (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Devolução - Motorista (1)       ${Caminho_Screenshots}Adiantamentos_Devoluções\Devoluções
    Fechar com Sim

Acerto de Viagens
    ${nome_print}=     Set Variable     Acerto de Viagens
    [Tags]    Frotas   Frotas   SmokeTest
    Frotas                  Acerto de Viagens
    RPA.Windows.Get Text    Acerto de Viagens (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Acerto de Viagens (1)       ${Caminho_Screenshots}Acerto de Viagens
    Fechar com Sim

Ordem de Carregamento
    ${nome_print}=     Set Variable     Ordem de Carregamento
    [Tags]    Frotas   Frotas   SmokeTest
    Frotas                  Ordem de carregamento    
    RPA.Windows.Get Text    Ordem de Carregamento (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Ordem de Carregamento (1)                             ${Caminho_Screenshots}Ordem de Carregamento
    Fechar com Sim

Gerenciamento de Ordem De Carregamento
    ${nome_print}=     Set Variable     Gerenciamento de Ordem De Carregamento
    [Tags]    Frotas   Frotas   SmokeTest
    Frotas                  Gerenciamento de Ordem de Carregamento    
    RPA.Windows.Get Text    Gerenciamento de Ordem de Carregamento (1)
    repetidor de 2 teclas   Shift    tab    9
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Gerenciamento de Ordem de Carregamento (1)                             ${Caminho_Screenshots}Gerenciamento de Ordem De Carregamento
    RPA.Windows.Click       Confirmar
    Fechar Janela

CRT
    ${nome_print}=     Set Variable     CRT
    [Tags]    Frotas   Frotas   SmokeTest
    Frotas                  CRT    
    RPA.Windows.Get Text    CRT (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  CRT (1)                             ${Caminho_Screenshots}CRT
    Fechar com Sim

Enlastre
    ${nome_print}=     Set Variable     Enlastre
    [Tags]    Frotas   Frotas   SmokeTest
    Frotas                  Enlastre    
    RPA.Windows.Get Text    Enlastre 
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Enlastre                              ${Caminho_Screenshots}Enlastre
    Fechar com Sim

Conferência de Lançamentos de Viagem 
    ${nome_print}=     Set Variable     Conferência de Lançamentos de Viagem 
    [Tags]    Frotas   Frotas   SmokeTest
    Frotas                  Conferência de Lançamentos de Viagem     
    RPA.Windows.Get Text    Geração de Viagem - Selecionar Registros (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Geração de Viagem - Selecionar Registros (1)                             ${Caminho_Screenshots}Conferência de Lançamentos de Viagem 
    RPA.Windows.Click       Confirmar
    Fechar Janela

Revisões Preventivas
    ${nome_print}=     Set Variable     Revisões Preventivas
    [Tags]    Frotas   Frotas   SmokeTest
    Frotas                  Revisões Preventivas    
    RPA.Windows.Get Text    Manutenção de Revisões Preventivas (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Manutenção de Revisões Preventivas (1)                             ${Caminho_Screenshots}Revisões Preventivas
    Fechar com Sim

Lançamentos de Infrações
    ${nome_print}=     Set Variable     Lançamentos de Infrações
    [Tags]    Frotas   Frotas   SmokeTest
    Frotas                  Lançamento de Infrações    
    RPA.Windows.Get Text    Infrações de Trânsito (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Infrações de Trânsito (1)                             ${Caminho_Screenshots}Lançamentos de Infrações
    RPA.Windows.Click       Confirmar
    Fechar Janela

Agenciamento Transporte > Propostas de Transporte
    ${nome_print}=     Set Variable     Propostas de Transporte
    [Tags]    Frotas   Frotas   SmokeTest
    Frotas                  Agenciamento Transporte
    RPA.Desktop.Press Keys  P   
    RPA.Windows.Get Text    Proposta (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Proposta (1)                             ${Caminho_Screenshots}Agenciamento Transporte\Propostas de Transporte
    Fechar com Sim

Agenciamento Transporte > Pedidos de Transporte
    ${nome_print}=     Set Variable     Pedidos de Transporte
    [Tags]    Frotas   Frotas   SmokeTest
    Frotas                  Agenciamento Transporte   
    RPA.Desktop.Press Keys  E    
    RPA.Windows.Get Text    Pedido (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Pedido (1)                             ${Caminho_Screenshots}Agenciamento Transporte\Pedidos de Transporte
    Fechar com Sim