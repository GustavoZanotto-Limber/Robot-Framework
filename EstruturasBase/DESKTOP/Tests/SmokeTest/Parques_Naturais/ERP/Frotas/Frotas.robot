*** Settings ***
Documentation    Smoke Test: Frotas
Resource          C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_frotas

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Frotas/Frotas/     

*** Keywords ***

Frotas
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    2
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Lançamento de Viagem
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}             Lançamento de Viagem
    Frotas                  Lançamento de Viagem    
    RPA.Windows.Get Text    Lançamento de Viagem (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Lançamento de Viagem (1)                             ${Caminho_Screenshots}Lançamento de Viagem
    Fechar com Sim

Adiantamentos/Devoluções > Adiantamentos
    [Teardown]              Caso aconteça erro                                ${Caminho_Screenshots}Adiantamentos_Devoluções\             Adiantamentos
    Frotas                  Adiantamentos/Devoluções
    RPA.Desktop.Press Keys  A    
    RPA.Windows.Get Text    Cadastro de Adiantamentos - Motorista (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Adiantamentos - Motorista (1)       ${Caminho_Screenshots}Adiantamentos_Devoluções\Adiantamentos
    Fechar com Sim

Adiantamentos/Devoluções > Devoluções
    [Teardown]              Caso aconteça erro                            ${Caminho_Screenshots}Adiantamentos_Devoluções\             Devoluções
    Frotas                  Adiantamentos/Devoluções
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Cadastro de Devolução - Motorista (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Devolução - Motorista (1)       ${Caminho_Screenshots}Adiantamentos_Devoluções\Devoluções
    Fechar com Sim

Acerto de Viagens
    [Teardown]              Caso aconteça erro                            ${Caminho_Screenshots}           Acerto de Viagens
    Frotas                  Acerto de Viagens
    RPA.Windows.Get Text    Acerto de Viagens (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Acerto de Viagens (1)       ${Caminho_Screenshots}Acerto de Viagens
    Fechar com Sim

Ordem de Carregamento
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}             Ordem de Carregamento
    Frotas                  Ordem de carregamento    
    RPA.Windows.Get Text    Ordem de Carregamento (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Ordem de Carregamento (1)                             ${Caminho_Screenshots}Ordem de Carregamento
    Fechar com Sim

Gerenciamento de Ordem De Carregamento
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}             Gerenciamento de Ordem De Carregamento
    Frotas                  Gerenciamento de Ordem de Carregamento    
    RPA.Windows.Get Text    Gerenciamento de Ordem de Carregamento (1)
    repetidor de 2 teclas   Shift    tab    9
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Gerenciamento de Ordem de Carregamento (1)                             ${Caminho_Screenshots}Gerenciamento de Ordem De Carregamento
    RPA.Windows.Click       Confirmar
    Fechar Janela

CRT
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}             CRT
    Frotas                  CRT    
    RPA.Windows.Get Text    CRT (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  CRT (1)                             ${Caminho_Screenshots}CRT
    Fechar com Sim

Enlastre
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}             Enlastre
    Frotas                  Enlastre    
    RPA.Windows.Get Text    Enlastre 
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Enlastre                              ${Caminho_Screenshots}Enlastre
    Fechar com Sim

Conferência de Lançamentos de Viagem 
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}             Conferência de Lançamentos de Viagem 
    Frotas                  Conferência de Lançamentos de Viagem     
    RPA.Windows.Get Text    Geração de Viagem - Selecionar Registros (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Geração de Viagem - Selecionar Registros (1)                             ${Caminho_Screenshots}Conferência de Lançamentos de Viagem 
    RPA.Windows.Click       Confirmar
    Fechar Janela

Revisões Preventivas
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}             Revisões Preventivas
    Frotas                  Revisões Preventivas    
    RPA.Windows.Get Text    Manutenção de Revisões Preventivas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Manutenção de Revisões Preventivas (1)                             ${Caminho_Screenshots}Revisões Preventivas
    Fechar com Sim

Lançamentos de Infrações
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}             Lançamentos de Infrações
    Frotas                  Lançamento de Infrações    
    RPA.Windows.Get Text    Infrações de Trânsito (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Infrações de Trânsito (1)                             ${Caminho_Screenshots}Lançamentos de Infrações
    RPA.Windows.Click       Confirmar
    Fechar Janela

Agenciamento Transporte > Propostas de Transporte
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Agenciamento Transporte\             Propostas de Transporte
    Frotas                  Agenciamento Transporte
    RPA.Desktop.Press Keys  P   
    RPA.Windows.Get Text    Proposta (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Proposta (1)                             ${Caminho_Screenshots}Agenciamento Transporte\Propostas de Transporte
    Fechar com Sim

Agenciamento Transporte > Pedidos de Transporte
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Agenciamento Transporte\             Pedidos de Transporte
    Frotas                  Agenciamento Transporte   
    RPA.Desktop.Press Keys  E    
    RPA.Windows.Get Text    Pedido (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Pedido (1)                             ${Caminho_Screenshots}Agenciamento Transporte\Pedidos de Transporte
    Fechar com Sim


    