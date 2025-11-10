*** Settings ***
Documentation    Smoke Test: Balança
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup         Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Balanças/Manutenções/    
${nome_print}
${nome_exe}=    cde_win_Balanca

*** Keywords ***

Manutenções
    Cadastros
    repetidor de teclas    right    1

*** Test Cases ***

Romaneios Entrada/Saída > Inclusão de Romaneios
    ${nome_print}=     Set Variable     Inclusão de Romaneios
    [Tags]   SmokeERP    Balancas    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Romaneios Entrada/Saída
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Balança - Inclusão de Romaneios (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Balança - Inclusão de Romaneios (1)    ${Caminho_Screenshots}Romaneios Entrada_Saída/Inclusão de Romaneios
    RPA.Windows.Click         OK
    Fechar janela

Romaneios Entrada/Saída > Alteração de Romaneios
    ${nome_print}=     Set Variable     Alteração de Romaneios
    [Tags]   SmokeERP    Balancas    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Romaneios Entrada/Saída
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Balança - Alteração de Romaneios (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Balança - Alteração de Romaneios (1)    ${Caminho_Screenshots}Romaneios Entrada_Saída/Alteração de Romaneios
    RPA.Windows.Click         OK
    Fechar janela

Romaneios Entrada/Saída > Consulta de Romaneios
    ${nome_print}=     Set Variable     Consulta de Romaneios
    [Tags]   SmokeERP    Balancas    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Romaneios Entrada/Saída
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Balança - Consulta de Romaneios (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Balança - Consulta de Romaneios (1)    ${Caminho_Screenshots}Romaneios Entrada_Saída/Consulta de Romaneios
    RPA.Windows.Click         OK
    Fechar janela

Romaneios Entrada/Saída > Alteração de Romaneios - Classificação
    ${nome_print}=     Set Variable     Alteração de Romaneios - Classificação
    [Tags]   SmokeERP    Balancas    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Romaneios Entrada/Saída
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Balança - Alteração de Romaneios - Classificação (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Balança - Alteração de Romaneios - Classificação (1)    ${Caminho_Screenshots}Romaneios Entrada_Saída/Alteração de Romaneios - Classificação
    RPA.Windows.Click         OK
    Fechar janela

Romaneios Entrada/Saída > Alteração de Romaneios - Endereço
    ${nome_print}=     Set Variable     Alteração de Romaneios - Endereço
    [Tags]   SmokeERP    Balancas    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Romaneios Entrada/Saída
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Alterar Informações do Romaneio - Entrada (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Alterar Informações do Romaneio - Entrada (1)    ${Caminho_Screenshots}Romaneios Entrada_Saída/Alteração de Romaneios - Endereço
    Fechar janela

Romaneios Entrada/Saída > Gerenciamentos de Romaneios
    ${nome_print}=     Set Variable     Gerenciamentos de Romaneios
    [Tags]   SmokeERP    Balancas    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Romaneios Entrada/Saída
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Gerenciamento de Romaneios (1)
    RPA.Windows.Click         Atualizar
    BaseKeywordsDesktop.Screenshot    Gerenciamento de Romaneios (1)    ${Caminho_Screenshots}Romaneios Entrada_Saída/Gerenciamentos de Romaneios
    Fechar janela

Pesagem para Terceiros
    ${nome_print}=     Set Variable     Pesagem para Terceiros
    [Tags]   SmokeERP    Balancas    Manutenções   SmokeTest    
    Manutenções
    RPA.Windows.Click         Pesagem para Terceiros
    RPA.Windows.Get Text      Pesagem para Terceiros (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Pesagem para Terceiros (1)    ${Caminho_Screenshots}Pesagem para Terceiros
    RPA.Windows.Click         Cancelar
    Fechar janela

Emissão de Nota Fiscal
    ${nome_print}=     Set Variable     Emissão de Nota Fiscal
    [Tags]   SmokeERP    Balancas    Manutenções   SmokeTest    
    Manutenções
    RPA.Windows.Click         Emissão de Nota Fiscal
    RPA.Windows.Get Text      Emissão de Nota Fiscal (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Emissão de Nota Fiscal (1)    ${Caminho_Screenshots}Emissão de Nota Fiscal
    Fechar janela

Documentos emitidos contra o estabelecimento p/ entrada
    ${nome_print}=     Set Variable     Documentos emitidos contra o estabelecimento p_ entrada
    [Tags]   SmokeERP    Balancas    Manutenções   SmokeTest    
    Manutenções
    RPA.Windows.Click         Documentos emitidos contra o estabelecimento p/ entrada
    RPA.Windows.Get Text      Documentos emitidos contra o estabelecimento p/ entrada (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Documentos emitidos contra o estabelecimento p/ entrada (1)    ${Caminho_Screenshots}Documentos emitidos contra o estabelecimento p_ entrada
    Fechar janela

Pesagem Geral
    ${nome_print}=     Set Variable     Pesagem Geral
    [Tags]   SmokeERP    Balancas    Manutenções   SmokeTest    
    Manutenções
    RPA.Windows.Click         Pesagem Geral
    RPA.Windows.Get Text      Pesagem Geral (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Pesagem Geral (1)    ${Caminho_Screenshots}Pesagem Geral
    Fechar com Sim

Processos Personalizados
    ${nome_print}=     Set Variable     Processos Personalizados
    [Tags]   SmokeERP    Balancas    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Processos Personalizados
    RPA.Windows.Get Text      Processos Personalizados (1)
    RPA.Windows.Click         Cadastrar Novo Processo
    BaseKeywordsDesktop.Screenshot    Processos Personalizados (1)    ${Caminho_Screenshots}Processos Personalizados
    RPA.Windows.Click         Fechar
    Fechar janela

Pesagem de Descarga - Romaneio
    ${nome_print}=     Set Variable     Pesagem de Descarga - Romaneio
    [Tags]   SmokeERP    Balancas    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pesagem de Descarga - Romaneio
    RPA.Windows.Get Text      Pesagem Romaneio Descarga (1)
    RPA.Desktop.Press Keys    1
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Pesagem Romaneio Descarga (1)    ${Caminho_Screenshots}Pesagem de Descarga - Romaneio
    RPA.Windows.Click         OK
    Fechar janela

Consulta/Manutenção Ordem Tickets Descarga
    ${nome_print}=     Set Variable     Consulta_Manutenção Ordem Tickets Descarga
    [Tags]   SmokeERP    Balancas    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Consulta/Manutenção Ordem Tickets Descarga
    RPA.Windows.Get Text      Consulta/Manutenção Ordem Ticket Descarga (1)
    RPA.Windows.Click         Confirmar
    BaseKeywordsDesktop.Screenshot    Consulta/Manutenção Ordem Ticket Descarga (1)    ${Caminho_Screenshots}Consulta_Manutenção Ordem Tickets Descarga
    Fechar janela

Pesagem de Descarga - Venda
    ${nome_print}=     Set Variable     Pesagem de Descarga - Venda
    [Tags]   SmokeERP    Balancas    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pesagem de Descarga - Venda
    RPA.Windows.Get Text      Pesagem Romaneio Descarga - Venda (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Pesagem Romaneio Descarga - Venda (1)    ${Caminho_Screenshots}Pesagem de Descarga - Venda
    Fechar com Sim

Pesagem - Ordem de Carregamento
    ${nome_print}=     Set Variable     Pesagem - Ordem de Carregamento
    [Tags]   SmokeERP    Balancas    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pesagem - Ordem de Carregamento
    RPA.Windows.Get Text      Pesagem - Ordem de Carregamento (1)
    RPA.Desktop.Press Keys    1
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Pesagem - Ordem de Carregamento (1)    ${Caminho_Screenshots}Pesagem - Ordem de Carregamento
    RPA.Windows.Click         OK
    Fechar janela