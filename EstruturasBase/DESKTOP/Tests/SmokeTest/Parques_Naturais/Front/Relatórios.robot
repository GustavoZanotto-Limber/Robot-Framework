*** Settings ***
Documentation    Smoke Test: Front
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao Front


*** Variables ***
${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/Front/Relatórios/



*** Keywords ***

#TODO: Da pra usar essa bomba aqui nos outros pra otimizar :)
Relatorios
    [Arguments]            ${janela}
    SikuliLibrary.Click    Cadastros
    repetidor de teclas    right        3
    RPA.Windows.Click      ${janela}

*** Test Cases ***
Resumo Geral
    [Teardown]              Caso aconteça erro            ${Caminho_Screenshots}                          ERRO Resumo Geral  
    Relatorios              Resumo Geral
    RPA.Windows.Get Text    Resumo de Movimentação (1)
    repetidor de teclas     Tab    3
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Resumo de Movimentação (1)    ${Caminho_Screenshots}Resumo de Movimentação
    RPA.Windows.Click       Confirmar
    Fechar janela

Fechamento de Caixa
    [Teardown]              Caso aconteça erro         ${Caminho_Screenshots}                       ERRO Fechamento de Caixa   
    Relatorios              Fechamento de Caixa
    RPA.Windows.Get Text    Fechamento de Caixa (1)
    repetidor de teclas     Tab    2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Fechamento de Caixa (1)    ${Caminho_Screenshots}Fechamento de Caixa
    Fechar janela

Formas de Pagamento
    [Teardown]              Caso aconteça erro                      ${Caminho_Screenshots}                                    ERRO Formas de Pagamento  
    Relatorios              Formas de Pagamento
    RPA.Windows.Get Text    Relatório de Formas de Pagamento (1)
    repetidor de teclas     Tab    3
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Formas de Pagamento (1)    ${Caminho_Screenshots}Relatório de Formas de Pagamento
    RPA.Windows.Click       Confirmar
    Fechar janela

Formas de Pagamento Agrupada
    [Teardown]              Caso aconteça erro                                ${Caminho_Screenshots}                                              ERRO Formas de Pagamento Agrupada   
    Relatorios              Formas de Pagamento Agrupada
    RPA.Windows.Get Text    Relatório de Formas de Pagamento Agrupadas (1)
    repetidor de teclas     Tab    2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Formas de Pagamento Agrupadas (1)    ${Caminho_Screenshots}Relatório de Formas de Pagamento Agrupadas
    RPA.Windows.Click       Confirmar
    Fechar janela

Bilhetes Isentos
    [Teardown]              Caso aconteça erro                   ${Caminho_Screenshots}                                 ERRO Catracas_Terminais de Acesso    
    Relatorios              Bilhetes Isentos
    RPA.Windows.Get Text    Relátorio de Bilhetes Isentos (1)
    repetidor de teclas     Tab    2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relátorio de Bilhetes Isentos (1)    ${Caminho_Screenshots}Relátorio de Bilhetes Isentos
    RPA.Windows.Click       Confirmar
    Fechar janela

Lançamento de Isenções
    [Teardown]              Caso aconteça erro                          ${Caminho_Screenshots}                                        ERRO Lançamentos de Isenções    
    Relatorios              Lançamentos de Isenções
    RPA.Windows.Get Text    Relatório de Lançamentos de Isenções (1)
    repetidor de teclas     Tab    2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Lançamentos de Isenções (1)    ${Caminho_Screenshots}Relatório de Lançamentos de Isenções
    RPA.Windows.Click       Cancelar
    Fechar janela

Lançamentos de Reservas
    [Teardown]              Caso aconteça erro                          ${Caminho_Screenshots}                                       ERRO Lançamentos de Reservas    
    Sleep                   1s
    Relatorios              Lançamentos de Reservas
    RPA.Windows.Get Text    Relatório de Lançamentos de Reservas (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Lançamentos de Reservas (1)    ${Caminho_Screenshots}Relatório de Lançamentos de Reservas
    RPA.Windows.Click       Cancelar
    Fechar janela

Bilhetes Reimpressos
    [Teardown]              Caso aconteça erro                       ${Caminho_Screenshots}                                     ERRO Bilhetes Reimpressos   
    Relatorios              Bilhetes Reimpressos
    RPA.Windows.Get Text    Relatório de Bilhetes Reimpressos (1)
    repetidor de teclas     Tab    2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Bilhetes Reimpressos (1)    ${Caminho_Screenshots}Relatório de Bilhetes Reimpressos
    RPA.Windows.Click       Confirmar
    Fechar janela

Bilhetes Cancelados
    [Teardown]              Caso aconteça erro                      ${Caminho_Screenshots}                                    ERRO Bilhetes Cancelados    
    Relatorios              Bilhetes Cancelados
    RPA.Windows.Get Text    Relatório de Bilhetes Cancelados (1)
    repetidor de teclas     Tab    2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Bilhetes Cancelados (1)    ${Caminho_Screenshots}Relatório de Bilhetes Cancelados
    RPA.Windows.Click       Confirmar
    Fechar janela

Desconto de Venda
    [Teardown]              Caso aconteça erro                     ${Caminho_Screenshots}                                   ERRO Desconto de Venda    
    Relatorios              Desconto de Venda
    RPA.Windows.Get Text    Relatório de Desconto por Venda (1)
    repetidor de teclas     Tab    2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Desconto por Venda (1)    ${Caminho_Screenshots}Relatório de Desconto por Venda
    RPA.Windows.Click       Confirmar
    Fechar janela

Bilhetes por Tipo de Autorização
    [Teardown]              Caso aconteça erro                                                       ${Caminho_Screenshots}               ERRO Bilhetes por Tipo de Autorização 
    Sleep                   1s
    Relatorios              Bilhetes por Tipo de Autorização
    RPA.Windows.Get Text    Relatório de Bilhetes Isentos por Tipo de Isenção/Grupo/Categoria (1)
    repetidor de teclas     Tab    2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Bilhetes Isentos por Tipo de Isenção/Grupo/Categoria (1)    ${Caminho_Screenshots}Relatório de Bilhetes Isentos por Tipo de Isenção/Grupo/Categoria
    RPA.Windows.Click       Confirmar
    Fechar janela

Guias
    [Teardown]              Caso aconteça erro        ${Caminho_Screenshots}                     ERRO: Guias
    Relatorios              Guias
    RPA.Windows.Get Text    Relatório de Guias (1)
    repetidor de teclas     Tab    2    
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Relatório de Guias (1)    ${Caminho_Screenshots}Relatório de Guias
    RPA.Windows.Click       Confirmar
    Fechar janela

Encerrar
    Encerrar tudo