*** Settings ***
Documentation    Smoke Test: Balança
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_Balanca


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Balanças/Manutenções/    

*** Keywords ***

Manutenções

    Cadastros
    repetidor de teclas    right    1

*** Test Cases ***

Romaneios Entrada/Saída > Inclusão de Romaneios
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Romaneios Entrada_Saída/                         Inclusão de Romaneios
    Manutenções
    RPA.Windows.Click         Romaneios Entrada/Saída
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Balança - Inclusão de Romaneios (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Balança - Inclusão de Romaneios (1)    ${Caminho_Screenshots}Romaneios Entrada_Saída/Inclusão de Romaneios
    RPA.Windows.Click         OK
    Fechar janela

Romaneios Entrada/Saída > Alteração de Romaneios
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Romaneios Entrada_Saída/                         Alteração de Romaneios
    Manutenções
    RPA.Windows.Click         Romaneios Entrada/Saída
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Balança - Alteração de Romaneios (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Balança - Alteração de Romaneios (1)    ${Caminho_Screenshots}Romaneios Entrada_Saída/Alteração de Romaneios
    RPA.Windows.Click         OK
    Fechar janela

Romaneios Entrada/Saída > Consulta de Romaneios
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Romaneios Entrada_Saída/                         Consulta de Romaneios
    Manutenções
    RPA.Windows.Click         Romaneios Entrada/Saída
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Balança - Consulta de Romaneios (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Balança - Consulta de Romaneios (1)    ${Caminho_Screenshots}Romaneios Entrada_Saída/Consulta de Romaneios
    RPA.Windows.Click         OK
    Fechar janela

Romaneios Entrada/Saída > Alteração de Romaneios - Classificação
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Romaneios Entrada_Saída/                         Alteração de Romaneios - Classificação
    Manutenções
    RPA.Windows.Click         Romaneios Entrada/Saída
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Balança - Alteração de Romaneios - Classificação (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Balança - Alteração de Romaneios - Classificação (1)    ${Caminho_Screenshots}Romaneios Entrada_Saída/Alteração de Romaneios - Classificação
    RPA.Windows.Click         OK
    Fechar janela

Romaneios Entrada/Saída > Alteração de Romaneios - Endereço
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Romaneios Entrada_Saída/                         Alteração de Romaneios - Endereço
    Manutenções
    RPA.Windows.Click         Romaneios Entrada/Saída
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Alterar Informações do Romaneio - Entrada (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Alterar Informações do Romaneio - Entrada (1)    ${Caminho_Screenshots}Romaneios Entrada_Saída/Alteração de Romaneios - Endereço
    Fechar janela

Romaneios Entrada/Saída > Gerenciamentos de Romaneios
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Romaneios Entrada_Saída/                         Gerenciamentos de Romaneios
    Manutenções
    RPA.Windows.Click         Romaneios Entrada/Saída
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Gerenciamento de Romaneios (1)
    RPA.Windows.Click         Atualizar
    BaseDesktop.Screenshot    Gerenciamento de Romaneios (1)    ${Caminho_Screenshots}Romaneios Entrada_Saída/Gerenciamentos de Romaneios
    Fechar janela

Pesagem para Terceiros
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Pesagem para Terceiros
    Manutenções
    RPA.Windows.Click         Pesagem para Terceiros
    RPA.Windows.Get Text      Pesagem para Terceiros (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Pesagem para Terceiros (1)    ${Caminho_Screenshots}Pesagem para Terceiros
    RPA.Windows.Click         Cancelar
    Fechar janela

Emissão de Nota Fiscal
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Emissão de Nota Fiscal
    Manutenções
    RPA.Windows.Click         Emissão de Nota Fiscal
    RPA.Windows.Get Text      Emissão de Nota Fiscal (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Emissão de Nota Fiscal (1)    ${Caminho_Screenshots}Emissão de Nota Fiscal
    Fechar janela

Documentos emitidos contra o estabelecimento p/ entrada
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Documentos emitidos contra o estabelecimento p_ entrada
    Manutenções
    RPA.Windows.Click         Documentos emitidos contra o estabelecimento p/ entrada
    RPA.Windows.Get Text      Documentos emitidos contra o estabelecimento p/ entrada (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Documentos emitidos contra o estabelecimento p/ entrada (1)    ${Caminho_Screenshots}Documentos emitidos contra o estabelecimento p_ entrada
    Fechar janela

Pesagem Geral
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Pesagem Geral
    Manutenções
    RPA.Windows.Click         Pesagem Geral
    RPA.Windows.Get Text      Pesagem Geral (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Pesagem Geral (1)    ${Caminho_Screenshots}Pesagem Geral
    Fechar janela
    RPA.Windows.Click         Sim

Processos Personalizados
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Processos Personalizados
    Manutenções
    RPA.Windows.Click         Processos Personalizados
    RPA.Windows.Get Text      Processos Personalizados (1)
    RPA.Windows.Click         Cadastrar Novo Processo
    BaseDesktop.Screenshot    Processos Personalizados (1)    ${Caminho_Screenshots}Processos Personalizados
    RPA.Windows.Click         Fechar
    Fechar janela

Pesagem de Descarga - Romaneio
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Pesagem de Descarga - Romaneio
    Manutenções
    RPA.Windows.Click         Pesagem de Descarga - Romaneio
    RPA.Windows.Get Text      Pesagem Romaneio Descarga (1)
    RPA.Desktop.Press Keys    1
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Pesagem Romaneio Descarga (1)    ${Caminho_Screenshots}Pesagem de Descarga - Romaneio
    RPA.Windows.Click         OK
    Fechar janela

Consulta/Manutenção Ordem Tickets Descarga
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Consulta_Manutenção Ordem Tickets Descarga
    Manutenções
    RPA.Windows.Click         Consulta/Manutenção Ordem Tickets Descarga
    RPA.Windows.Get Text      Consulta/Manutenção Ordem Ticket Descarga (1)
    RPA.Windows.Click         Confirmar
    BaseDesktop.Screenshot    Consulta/Manutenção Ordem Ticket Descarga (1)    ${Caminho_Screenshots}Consulta_Manutenção Ordem Tickets Descarga
    Fechar janela

Pesagem de Descarga - Venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Pesagem de Descarga - Venda
    Manutenções
    RPA.Windows.Click         Pesagem de Descarga - Venda
    RPA.Windows.Get Text      Pesagem Romaneio Descarga - Venda (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Pesagem Romaneio Descarga - Venda (1)    ${Caminho_Screenshots}Pesagem de Descarga - Venda
    Fechar janela
    RPA.Windows.Click         Sim

Pesagem - Ordem de Carregamento
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Pesagem - Ordem de Carregamento
    Manutenções
    RPA.Windows.Click         Pesagem - Ordem de Carregamento
    RPA.Windows.Get Text      Pesagem - Ordem de Carregamento (1)
    RPA.Desktop.Press Keys    1
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Pesagem - Ordem de Carregamento (1)    ${Caminho_Screenshots}Pesagem - Ordem de Carregamento
    RPA.Windows.Click         OK
    Fechar janela
    


Encerrar
    Encerrar tudo


