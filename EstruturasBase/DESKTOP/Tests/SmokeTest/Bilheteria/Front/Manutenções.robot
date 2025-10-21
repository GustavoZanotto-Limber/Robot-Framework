*** Settings ***
Documentation    Smoke Test: Front
Resource         ../../../../Resources/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao     ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***
${Caminho_Screenshots}=   ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/Front/Manutenções/
${nome_print}
${nome_exe}=    cde_win_bca_front

*** Keywords ***

Manutenções
    Cadastros
    repetidor de teclas    right    1

*** Test Cases    ***

Emissão de Bilhetes
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Emissão de Bilhetes
    Manutenções
    RPA.Windows.Click         Emissão de Bilhetes
    Sleep                     10s
    RPA.Windows.Get Text      Emissão de Bilhetes (1)
    RPA.Windows.Click         (F8) Novo
    BaseKeywordsDesktop.Screenshot    Emissão de Bilhetes (1)    ${Caminho_Screenshots}Emissão de Bilhetes
    Fechar janela
    Sleep                     1s
    RPA.Windows.Click         Sim

Reimpressão de Bilhetes
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Reimpressão de Bilhetes
    Manutenções
    RPA.Windows.Click       Reimpressão de Bilhetes
    RPA.Windows.Get Text    Reimpressão de Bilhetes (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Reimpressão de Bilhetes (1)    ${Caminho_Screenshots}Reimpressão de Bilhetes
    RPA.Windows.Click       Fechar
    Fechar janela

Cancelamentos de Bilhetes
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Cancelamento de Bilhetes
    Manutenções
    RPA.Windows.Click       Cancelamento de Bilhetes
    Sleep                   4s
    RPA.Windows.Get Text    Cancelamento de Bilhetes (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    Sleep                   1s
    RPA.Windows.Click       Cancelar
    BaseKeywordsDesktop.Screenshot  Cancelamento de Bilhetes (1)   ${Caminho_Screenshots}Cancelamento de Bilhetes
    RPA.Windows.Click       Fechar

Remarcações de Visitas
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Remarcação de Vendas
    Manutenções
    RPA.Windows.Click       Remarcação de Visitas
    Sleep                   4s
    RPA.Windows.Get Text    Remarcação de Vendas
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Remarcação de Vendas     ${Caminho_Screenshots}Remarcações de Visitas
    RPA.Windows.Click       Fechar

Reservas -> Lançamentos
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Lançamento de Reservas
    Manutenções
    RPA.Windows.Click         Reservas
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Lançamento de Reservas (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Lançamento de Reservas (1)    ${Caminho_Screenshots}Reservas/Lançamento de Reservas
    Fechar com Sim

Reservas -> Cancelamento
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Cancelamento de Reservas
    Manutenções
    RPA.Windows.Click       Reservas
    RPA.Desktop.Press Keys  c
    RPA.Windows.Get Text    Cancelamento de Reservas (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Cancelamento de Reservas (1)    ${Caminho_Screenshots}Reservas/Cancelamento de Reservas
    RPA.Windows.Click       Fechar
    Fechar janela

Reservas -> Alteração
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Alteração de Reservas
    Manutenções
    RPA.Windows.Click         Reservas
    RPA.Desktop.Press Keys    a
    RPA.Windows.Get Text      Alteração de Reservas/Isenções/Web (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Alteração de Reservas/Isenções/Web (1)    ${Caminho_Screenshots}Reservas/Alteração de Reservas
    RPA.Windows.Click       Fechar
    Fechar janela

Reservas -> Remarcação de Visitas
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Remarcação de Visitas
    Manutenções
    RPA.Windows.Click         Reservas
    RPA.Desktop.Press Keys    r
    Sleep                     2s
    RPA.Windows.Get Text      Consulta de Reservas (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta de Reservas (1)    ${Caminho_Screenshots}Reservas/Remarcação de Visitas
    RPA.Windows.Click         Fechar

Lançamento de Isenções
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Lançamento de Isenções
    Manutenções
    RPA.Windows.Click       Lançamento de Isenções
    RPA.Windows.Get Text    Lançamento de Isenção (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Lançamento de Isenção (1)    ${Caminho_Screenshots}Lançamento de Isenções
    Fechar com Sim


Lançamento de Veículos
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Lançamento de Veículos
    Manutenções
    RPA.Windows.Click       Lançamento de Veículos
    RPA.Windows.Get Text    Lançamento de Veiculos (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Lançamento de Veiculos (1)    ${Caminho_Screenshots}Lançamento de Veículos
    RPA.Windows.Click       OK
    Fechar com Sim

Lançamento de Vouchers Pendentes
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Lançamento de Vouchers Pendentes
    Manutenções
    RPA.Windows.Click       Lançamento de Vouchers Pendentes
    Sleep                   1s
    RPA.Windows.Get Text    Alteração de Vouchers Bilhete
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Alteração de Vouchers Bilhete       ${Caminho_Screenshots}Lançamento de Vouchers Pendentes
    RPA.Windows.Click       Fechar

Comissões de Guias -> Pagamento
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Pagamento de Comissões
    Manutenções
    RPA.Windows.Click         Comissões de Guias
    RPA.Desktop.Press Keys    p
    RPA.Windows.Get Text      Comissões de Guias (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Comissões de Guias (1)    ${Caminho_Screenshots}Pagamento
    RPA.Windows.Click         OK
    Fechar janela

Comissões de Guias -> Estorno
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Estorno de Comissões
    Manutenções
    RPA.Windows.Click         Comissões de Guias
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Estorno de Comissões (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Estorno de Comissões (1)    ${Caminho_Screenshots}Estorno
    Fechar janela

Comissões de Guias -> Vincular Guia em Venda
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Vincular Guia em Venda
    Manutenções
    RPA.Windows.Click         Comissões de Guias
    RPA.Desktop.Press Keys    v
    RPA.Windows.Get Text      Vincular Guia em Venda (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Vincular Guia em Venda (1)    ${Caminho_Screenshots}Vincular Guia em Venda
    Fechar janela

Comissões de Guias -> Relatório
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Relatório de Comissões
    Manutenções
    RPA.Windows.Click         Comissões de Guias
    RPA.Desktop.Press Keys    r
    RPA.Windows.Get Text      Relatório de Comissões (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot    Relatório de Comissões (1)    ${Caminho_Screenshots}Relatório
    RPA.Windows.Click       Fechar
    Fechar janela

Consulta/Manutenção Consumo Interno
    [Tags]    Manutenções    Front    SmokeTest     
    ${nome_print}=          Set Variable    Consulta/Manutenção Consumo Interno
    Manutenções
    RPA.Windows.Click       Consulta/Manutenção Consumo Interno
    RPA.Windows.Get Text    Consulta da Movimentação de Crédito Interno (1)
    RPA.Windows.Click       Carregar Dados
    BaseKeywordsDesktop.Screenshot  Consulta da Movimentação de Crédito Interno (1)    ${Caminho_Screenshots}Consulta/Manutenção Consumo Interno
    Fechar janela

Bloqueio/Desbloqueio Consumo Interno
    [Tags]    Manutenções    Front    SmokeTest     
    ${nome_print}=          Set Variable    Bloqueio/Desbloqueio Consumo Interno
    Manutenções
    RPA.Windows.Click       Bloqueio/Desbloqueio Consumo Interno
    RPA.Windows.Get Text    Bloqueio/Desbloqueio de RFID (1)
    RPA.Windows.Click       Carregar Dados
    BaseKeywordsDesktop.Screenshot  Bloqueio/Desbloqueio de RFID (1)    ${Caminho_Screenshots}Bloqueio/Desbloqueio Consumo Interno
    RPA.Windows.Click       OK
    Fechar janela

Devoluções de Vendas
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Devoluções de Vendas
    Manutenções
    RPA.Windows.Click       Devoluções de Vendas
    RPA.Windows.Get Text    Devolução de Vendas (1)
    RPA.Windows.Click       (F5) Confirmar
    BaseKeywordsDesktop.Screenshot  Devolução de Vendas (1)    ${Caminho_Screenshots}Devoluções de Vendas
    Fechar janela

Configurações Totem
    [Tags]    Manutenções    Front    SmokeTest  
    ${nome_print}=          Set Variable    Configurações Totem
    Manutenções
    RPA.Windows.Click       Configurações Totem
    RPA.Windows.Get Text    Configurações Totem (1)
    RPA.Windows.Click       Categorias
    BaseKeywordsDesktop.Screenshot  Configurações Totem (1)    ${Caminho_Screenshots}Configurações Totem
    Fechar janela


    
