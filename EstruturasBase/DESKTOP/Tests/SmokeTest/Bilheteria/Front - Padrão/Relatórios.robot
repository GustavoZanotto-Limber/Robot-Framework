*** Settings ***
Documentation    Smoke Test: Front
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao     ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}


*** Variables ***
${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/Front - Padrao/Relatórios/
${nome_print}
${nome_exe}=    cde_win_bca_front
${ESPAÇO}=    ${SPACE}
*** Keywords ***

#TODO: Da pra usar essa bomba aqui nos outros pra otimizar :)
Relatorios
    [Arguments]            ${janela}
    Cadastros
    repetidor de teclas    right        3
    RPA.Windows.Click      ${janela}

*** Test Cases ***
Resumo Geral
    [Tags]    Relatórios    Front    SmokeTest  SmokeTestERP  
    ${nome_print}=     Set Variable     Resumo Geral
    Relatorios              Resumo Geral
    RPA.Windows.Get Text    Resumo de Movimentação (1)
    repetidor de teclas     Tab    3
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Resumo de Movimentação (1)    ${Caminho_Screenshots}Resumo de Movimentação
    RPA.Windows.Click       Confirmar
    Fechar janela

Fechamento de Caixa
    [Tags]    Relatórios    Front    SmokeTest  SmokeTestERP  
    ${nome_print}=     Set Variable     Fechamento de Caixa
    Relatorios              Fechamento de Caixa
    RPA.Windows.Get Text    Fechamento de Caixa $ESPAÇO(1)
    repetidor de teclas     Tab    2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Fechamento de Caixa $ESPAÇO(1)    ${Caminho_Screenshots}Fechamento de Caixa
    Fechar janela

Formas de Pagamento
    [Tags]    Relatórios    Front    SmokeTest  SmokeTestERP  
    ${nome_print}=     Set Variable     Formas de Pagamento
    Relatorios              Formas de Pagamento
    RPA.Windows.Get Text    Relatório de Formas de Pagamento (1)
    repetidor de teclas     Tab    3
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de Formas de Pagamento (1)    ${Caminho_Screenshots}Relatório de Formas de Pagamento
    RPA.Windows.Click       Confirmar
    Fechar janela

Formas de Pagamento Agrupada
    [Tags]    Relatórios    Front    SmokeTest  SmokeTestERP  
    ${nome_print}=     Set Variable     Formas de Pagamento Agrupada
    Relatorios              Formas de Pagamento Agrupada
    RPA.Windows.Get Text    Relatório de Formas de Pagamento Agrupadas (1)
    repetidor de teclas     Tab    2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de Formas de Pagamento Agrupadas (1)    ${Caminho_Screenshots}Relatório de Formas de Pagamento Agrupadas
    RPA.Windows.Click       Confirmar
    Fechar janela

Bilhetes Isentos
    [Tags]    Relatórios    Front    SmokeTest  SmokeTestERP  
    ${nome_print}=     Set Variable     Bilhetes Isentos
    Relatorios              Bilhetes Isentos
    RPA.Windows.Get Text    Relátorio de Bilhetes Isentos (1)
    repetidor de teclas     Tab    2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relátorio de Bilhetes Isentos (1)    ${Caminho_Screenshots}Relátorio de Bilhetes Isentos
    RPA.Windows.Click       Confirmar
    Fechar janela

Lançamento de Isenções
    [Tags]    Relatórios    Front    SmokeTest  SmokeTestERP  
    ${nome_print}=     Set Variable     Lançamento de Isenções
    Relatorios              Lançamentos de Isenções
    RPA.Windows.Get Text    Relatório de Lançamentos de Isenções (1)
    repetidor de teclas     Tab    2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de Lançamentos de Isenções (1)    ${Caminho_Screenshots}Relatório de Lançamentos de Isenções
    RPA.Windows.Click       Cancelar
    Fechar janela

Lançamentos de Reservas
    [Tags]    Relatórios    Front    SmokeTest  SmokeTestERP  
    ${nome_print}=     Set Variable     Lançamentos de Reservas
    Sleep                   1s
    Relatorios              Lançamentos de Reservas
    RPA.Windows.Get Text    Relatório de Lançamentos de Reservas (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de Lançamentos de Reservas (1)    ${Caminho_Screenshots}Relatório de Lançamentos de Reservas
    RPA.Windows.Click       Cancelar
    Fechar janela

Bilhetes Reimpressos
    [Tags]    Relatórios    Front    SmokeTest  SmokeTestERP  
    ${nome_print}=     Set Variable     Bilhetes Reimpressos
    Relatorios              Bilhetes Reimpressos
    RPA.Windows.Get Text    Relatório de Bilhetes Reimpressos (1)
    repetidor de teclas     Tab    2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de Bilhetes Reimpressos (1)    ${Caminho_Screenshots}Relatório de Bilhetes Reimpressos
    RPA.Windows.Click       Confirmar
    Fechar janela

Bilhetes Cancelados
    [Tags]    Relatórios    Front    SmokeTest  SmokeTestERP  
    ${nome_print}=     Set Variable     Bilhetes Cancelados
    Relatorios              Bilhetes Cancelados
    RPA.Windows.Get Text    Relatório de Bilhetes Cancelados (1)
    repetidor de teclas     Tab    2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de Bilhetes Cancelados (1)    ${Caminho_Screenshots}Relatório de Bilhetes Cancelados
    RPA.Windows.Click       Confirmar
    Fechar janela

Desconto de Venda
    [Tags]    Relatórios    Front    SmokeTest  SmokeTestERP  
    ${nome_print}=     Set Variable     Desconto de Venda
    Relatorios              Desconto de Venda
    RPA.Windows.Get Text    Relatório de Desconto por Venda (1)
    repetidor de teclas     Tab    2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de Desconto por Venda (1)    ${Caminho_Screenshots}Relatório de Desconto por Venda
    RPA.Windows.Click       Confirmar
    Fechar janela

Bilhetes por Tipo de Autorização
    [Tags]    Relatórios    Front    SmokeTest  SmokeTestERP  
    ${nome_print}=     Set Variable     Bilhetes por Tipo de Autorização
    Sleep                   1s
    Relatorios              Bilhetes por Tipo de Autorização
    RPA.Windows.Get Text    Relatório de Bilhetes Isentos por Tipo de Isenção/Grupo/Categoria (1)
    repetidor de teclas     Tab    2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de Bilhetes Isentos por Tipo de Isenção/Grupo/Categoria (1)    ${Caminho_Screenshots}Relatório de Bilhetes Isentos por Tipo de Isenção/Grupo/Categoria
    RPA.Windows.Click       Confirmar
    Fechar janela

Guias
    [Tags]    Relatórios    Front    SmokeTest  SmokeTestERP  
    ${nome_print}=     Set Variable     Guias
    Relatorios              Guias
    RPA.Windows.Get Text    Relatório de Guias (1)
    repetidor de teclas     Tab    2    
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório de Guias (1)    ${Caminho_Screenshots}Relatório de Guias
    RPA.Windows.Click       Confirmar
    Fechar janela