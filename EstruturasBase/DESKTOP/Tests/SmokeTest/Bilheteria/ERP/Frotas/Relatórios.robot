*** Settings ***
Documentation    Smoke Test: Frotas
Resource          ../../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Frotas/Relatórios/    
${nome_print}
${nome_exe}=    cde_win_frotas
${ESPAÇO}=    ${SPACE}
*** Keywords ***

Relatórios
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    9
    sleep                0.5
    RPA.Windows.Click    ${nome}

*** Test Cases ***

CT-e > CT-e Emitidos
    ${nome_print}=     Set Variable     CT-e Emitidos
    [Tags]    Frotas   Relatórios   SmokeTest    Testes
    Relatórios              CT-e
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text   	Relatório de CT'es Emitidos (1) 
    repetidor de teclas     tab      2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot 	Relatório de CT'es Emitidos (1)                              ${Caminho_Screenshots}CT-e\CT-e Emitidos
    RPA.Windows.Click       Confirmar
    Fechar Janela

CT-e > CT-e Inutilizados
    ${nome_print}=     Set Variable     CT-e Inutilizados
    [Tags]    Frotas   Relatórios   SmokeTest    Testes
    Relatórios              CT-e
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Relatório de Conhecimento de Transporte Inutilizados (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de Conhecimento de Transporte Inutilizados (1)                              ${Caminho_Screenshots}CT-e\CT-e Inutilizados
    RPA.Windows.Click       Confirmar
    Fechar Janela

Jornada de Trabalho
    ${nome_print}=     Set Variable     Jornada de Trabalho
    [Tags]    Frotas   Relatórios   SmokeTest
    Relatórios              Jornada de Trabalho
    RPA.Windows.Get Text    Controle de Horário de Trabalho Externo (1) 
    RPA.Desktop.Press Keys  Shift    tab
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Controle de Horário de Trabalho Externo (1)                              ${Caminho_Screenshots}Jornada de Trabalho
    RPA.Windows.Click       Confirmar
    RPA.Windows.Click       Fechar

Viagens
    ${nome_print}=     Set Variable     Viagens
    [Tags]    Frotas   Relatórios   SmokeTest
    Relatórios              Viagens
    RPA.Windows.Get Text    Relatório de Viagens (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de Viagens (1)                              ${Caminho_Screenshots}Viagens
    RPA.Windows.Click       Confirmar
    Fechar Janela

Ordem de Serviço
    ${nome_print}=     Set Variable     Ordem de Serviço
    [Tags]    Frotas   Relatórios   SmokeTest
    Relatórios              Ordem de Serviço
    RPA.Windows.Get Text    Relatório de Ordens de Serviços (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de Ordens de Serviços (1)                              ${Caminho_Screenshots}Ordem de Serviço
    RPA.Windows.Click       Confirmar
    RPA.Windows.Click       OK
    Fechar Janela

Check-list
    ${nome_print}=     Set Variable     Check-list
    [Tags]    Frotas   Relatórios   SmokeTest
    Relatórios              Check-list
    RPA.Windows.Get Text    Relatório Checklist (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório Checklist (1)                              ${Caminho_Screenshots}Check-list
    RPA.Windows.Click       Confirmar
    Fechar Janela

Abastecimentos
    ${nome_print}=     Set Variable     Abastecimentos
    [Tags]    Frotas   Relatórios   SmokeTest
    Relatórios              Abastecimentos
    RPA.Windows.Get Text    Relatório de Abastecimentos (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de Abastecimentos (1)                              ${Caminho_Screenshots}Abastecimentos
    RPA.Windows.Click       Confirmar
    Fechar Janela

Pneus > Pneus
    ${nome_print}=     Set Variable     Pneus
    [Tags]    Frotas   Relatórios   SmokeTest
    Relatórios              Pneus
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Relatório de Pneus $ESPAÇO(1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de Pneus $ESPAÇO(1)                              ${Caminho_Screenshots}Pneus\Pneus
    RPA.Windows.Click       Confirmar
    Fechar Janela

Pneus > Estoque de Pneus
    ${nome_print}=     Set Variable     Estoque de Pneus
    [Tags]    Frotas   Relatórios   SmokeTest
    Relatórios              Pneus
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Relatório de Estoque de Pneus (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de Estoque de Pneus (1)                              ${Caminho_Screenshots}Pneus\Estoque de Pneus
    RPA.Windows.Click       Confirmar
    Fechar Janela

Pneus > Histórico de Movimentações
    ${nome_print}=     Set Variable     Histórico de Movimentações
    [Tags]    Frotas   Relatórios   SmokeTest
    Relatórios              Pneus
    RPA.Desktop.Press Keys  H
    RPA.Windows.Get Text    Histórico de Movimentações (1) 
    repetidor de teclas     tab      2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Histórico de Movimentações (1)                              ${Caminho_Screenshots}Pneus\Histórico de Movimentações
    RPA.Windows.Click       Confirmar
    Fechar Janela

Resumo Frotas
    ${nome_print}=     Set Variable     Resumo Frotas
    [Tags]    Frotas   Relatórios   SmokeTest
    Relatórios              Resumo Frotas
    RPA.Windows.Get Text    Resumo de Frota (1) 
    repetidor de teclas     tab      1
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Resumo de Frota (1)                              ${Caminho_Screenshots}Resumo Frotas
    RPA.Windows.Click       Confirmar
    Fechar Janela

Relatório de Alertas
    ${nome_print}=     Set Variable     Relatório de Alertas
    [Tags]    Frotas   Relatórios   SmokeTest
    Relatórios              Relatório de Alertas
    RPA.Windows.Get Text    Relatório De Alertas (1) 
    repetidor de teclas     tab      3
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório De Alertas (1)                              ${Caminho_Screenshots}Relatório de Alertas
    RPA.Windows.Click       Confirmar
    Fechar Janela

Fechamento de Viagem
    ${nome_print}=     Set Variable     Fechamento de Viagem
    [Tags]    Frotas   Relatórios   SmokeTest
    Relatórios              Fechamento de Viagem
    RPA.Windows.Get Text    Relatório de Fechamento de Viagens (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de Fechamento de Viagens (1)                              ${Caminho_Screenshots}Fechamento de Viagem
    RPA.Windows.Click       Confirmar
    RPA.Windows.Click       OK
    Fechar Janela