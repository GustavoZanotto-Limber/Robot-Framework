*** Settings ***
Documentation    Smoke Test: Frotas
Resource          C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_frotas

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Frotas/Relatórios/    

*** Keywords ***

Relatórios
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    8
    RPA.Windows.Click    ${nome}

*** Test Cases ***

CT-e > CT-e Emitidos
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}CT-e\        CT-e Emitidos
    Relatórios              CT-e
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text   	Relatório de CT'es Emitidos (1) 
    repetidor de teclas     tab      2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Relatório de CT'es Emitidos (1)                              ${Caminho_Screenshots}CT-e\CT-e Emitidos
    RPA.Windows.Click       Confirmar
    Fechar Janela

CT-e > CT-e Inutilizados
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}CT-e\        CT-e Inutilizados
    Relatórios              CT-e
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Relatório de Conhecimento de Transporte Inutilizados (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Conhecimento de Transporte Inutilizados (1)                              ${Caminho_Screenshots}CT-e\CT-e Inutilizados
    RPA.Windows.Click       Confirmar
    Fechar Janela

Jornada de Trabalho
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Jornada de Trabalho
    Relatórios              Jornada de Trabalho
    RPA.Windows.Get Text    Controle de Horário de Trabalho Externo (1) 
    RPA.Desktop.Press Keys  Shift    tab
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Controle de Horário de Trabalho Externo (1)                              ${Caminho_Screenshots}Jornada de Trabalho
    RPA.Windows.Click       Confirmar
    RPA.Windows.Click       Fechar

Viagens
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Viagens
    Relatórios              Viagens
    RPA.Windows.Get Text    Relatório de Viagens (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Viagens (1)                              ${Caminho_Screenshots}Viagens
    RPA.Windows.Click       Confirmar
    Fechar Janela

Ordem de Serviço
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Ordem de Serviço
    Relatórios                  Ordem de Serviço
    RPA.Windows.Get Text    Relatório de Ordens de Serviços (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Ordens de Serviços (1)                              ${Caminho_Screenshots}Ordem de Serviço
    RPA.Windows.Click       Confirmar
    RPA.Windows.Click       OK
    Fechar Janela

Check-list
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Check-list
    Relatórios                  Check-list
    RPA.Windows.Get Text    Relatório Checklist (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório Checklist (1)                              ${Caminho_Screenshots}Check-list
    RPA.Windows.Click       Confirmar
    Fechar Janela


Abastecimentos
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Abastecimentos
    Relatórios                  Abastecimentos
    RPA.Windows.Get Text    Relatório de Abastecimentos (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Abastecimentos (1)                              ${Caminho_Screenshots}Abastecimentos
    RPA.Windows.Click       Confirmar
    Fechar Janela

Pneus > Pneus
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Pneus\     Pneus
    Relatórios              Pneus
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Relatório de Pneus (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Pneus (1)                              ${Caminho_Screenshots}Pneus\Pneus
    RPA.Windows.Click       Confirmar
    Fechar Janela

Pneus > Estoque de Pneus
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Pneus\     Estoque de Pneus
    Relatórios              Pneus
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Relatório de Estoque de Pneus (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Estoque de Pneus (1)                              ${Caminho_Screenshots}Pneus\Estoque de Pneus
    RPA.Windows.Click       Confirmar
    Fechar Janela

Pneus > Histórico de Movimentações
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Pneus\     Histórico de Movimentações
    Relatórios              Pneus
    RPA.Desktop.Press Keys  H
    RPA.Windows.Get Text    Histórico de Movimentações (1) 
    repetidor de teclas     tab      2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Histórico de Movimentações (1)                              ${Caminho_Screenshots}Pneus\Histórico de Movimentações
    RPA.Windows.Click       Confirmar
    Fechar Janela

Resumo Frotas
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Resumo Frotas
    Relatórios                  Resumo Frotas
    RPA.Windows.Get Text    Resumo de Frota (1) 
    repetidor de teclas     tab      1
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Resumo de Frota (1)                              ${Caminho_Screenshots}Resumo Frotas
    RPA.Windows.Click       Confirmar
    Fechar Janela

Relatório de Alertas
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Relatório de Alertas
    Relatórios                  Relatório de Alertas
    RPA.Windows.Get Text    Relatório De Alertas (1) 
    repetidor de teclas     tab      3
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório De Alertas (1)                              ${Caminho_Screenshots}Relatório de Alertas
    RPA.Windows.Click       Confirmar
    Fechar Janela

Fechamento de Viagem
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Fechamento de Viagem
    Relatórios              Fechamento de Viagem
    RPA.Windows.Get Text    Relatório de Fechamento de Viagens (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Fechamento de Viagens (1)                              ${Caminho_Screenshots}Fechamento de Viagem
    RPA.Windows.Click       Confirmar
    RPA.Windows.Click       OK
    Fechar Janela


    