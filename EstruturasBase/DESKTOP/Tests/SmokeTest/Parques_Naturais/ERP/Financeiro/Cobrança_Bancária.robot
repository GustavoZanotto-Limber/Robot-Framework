*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_fin


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Financeiro/Cobrança Bancária/ 


*** Keywords ***

Cobrança Bancária
    Cadastros
    repetidor de teclas    right    8


*** Test Cases ***
Emissão de Boletos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Emissão de Boletos
    Cobrança Bancária
    RPA.Windows.Click         Emissão de Boletos
    RPA.Windows.Get Text      Emissão de Duplicatas/Boletos/Carnês (1)
    RPA.Windows.Click         Executar
    BaseDesktop.Screenshot    Emissão de Duplicatas/Boletos/Carnês (1)    ${Caminho_Screenshots}Emissão de Boletos
    RPA.Windows.Click       Sim
    RPA.Windows.Click       OK
    Fechar janela

Carteiras de Cobrança
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Carteiras de Cobrança
    Cobrança Bancária
    RPA.Windows.Click         Carteiras de Cobrança
    RPA.Windows.Get Text      Cadastro de Carteiras de Cobranças (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Carteiras de Cobranças (1)    ${Caminho_Screenshots}Carteiras de Cobrança
    Fechar com Sim

Tipos de Cobrança
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Tipos de Cobrança
    Cobrança Bancária
    RPA.Windows.Click         Tipos de Cobrança
    RPA.Windows.Get Text      Cadastro de Tipos de Cobrança (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Tipos de Cobrança (1)    ${Caminho_Screenshots}Tipos de Cobrança
    Fechar com Sim

Geração de Remessas > Débito em C_C
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Geração de Remessas/                         Débito em C_C
    Cobrança Bancária
    RPA.Windows.Click         Geração de Remessas
    RPA.Desktop.Press Keys    d
    RPA.Windows.Get Text      Geração de Arquivos Remessa (1) - DÉBITO EM CONTA
    RPA.Windows.Click         Executar
    BaseDesktop.Screenshot    Geração de Arquivos Remessa (1) - DÉBITO EM CONTA    ${Caminho_Screenshots}Geração de Remessas/Débito em C_C
    RPA.Windows.Click       OK
    Fechar janela

Geração de Remessas > Cobrança
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Geração de Remessas/                         Cobrança
    Cobrança Bancária
    RPA.Windows.Click         Geração de Remessas
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Geração de Arquivos Remessa (1) - COBRANÇA
    RPA.Windows.Click         Executar
    BaseDesktop.Screenshot    Geração de Arquivos Remessa (1) - COBRANÇA    ${Caminho_Screenshots}Geração de Remessas/Cobrança
    RPA.Windows.Click       OK
    Fechar janela

Geração de Remessas > Consulta
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Geração de Remessas/                         Consulta
    Cobrança Bancária
    RPA.Windows.Click         Geração de Remessas
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Consulta de remessa de boletos (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de remessa de boletos (1)    ${Caminho_Screenshots}Geração de Remessas/Consulta
    Fechar janela

Geração de Remessas > Manutenção
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Geração de Remessas/                         Manutenção
    Cobrança Bancária
    RPA.Windows.Click         Geração de Remessas
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Manutenção de Remessas (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Manutenção de Remessas (1)    ${Caminho_Screenshots}Geração de Remessas/Manutenção
    RPA.Windows.Click         Confirmar
    Fechar janela

Recepção de Arquivos Retornos > Débito em C_C
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Recepção de Arquivos Retornos/                         Débito em C_C
    Cobrança Bancária
    RPA.Windows.Click         Recepção de Arquivos Retornos
    RPA.Desktop.Press Keys    D
    RPA.Windows.Get Text      Recepção de Arquivos (1) - DÉBITO EM CONTA
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Recepção de Arquivos (1) - DÉBITO EM CONTA    ${Caminho_Screenshots}Recepção de Arquivos Retornos/Débito em C_C
    RPA.Windows.Click         OK
    Fechar janela

Recepção de Arquivos Retornos > Cobrança
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Recepção de Arquivos Retornos/                         Cobrança
    Cobrança Bancária
    RPA.Windows.Click         Recepção de Arquivos Retornos
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Recepção de Arquivos (1) - COBRANÇA
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Recepção de Arquivos (1) - COBRANÇA    ${Caminho_Screenshots}Recepção de Arquivos Retornos/Cobrança
    RPA.Windows.Click         OK
    Fechar janela

Recepção de Arquivos Retornos > Log Arquivos de Retorno
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Recepção de Arquivos Retornos/                         Log Arquivos de Retorno
    Cobrança Bancária
    RPA.Windows.Click         Recepção de Arquivos Retornos
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Consulta do Log Recepção Arquivos (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta do Log Recepção Arquivos (1)    ${Caminho_Screenshots}Recepção de Arquivos Retornos/Log Arquivos de Retorno
    Fechar janela

Duplicatas Descontadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Duplicatas Descontadas
    Cobrança Bancária
    RPA.Windows.Click         Duplicatas Descontadas
    RPA.Windows.Get Text      Duplicatas Descontadas (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Duplicatas Descontadas (1)    ${Caminho_Screenshots}Duplicatas Descontadas
    RPA.Windows.Click         OK
    Fechar janela

Extorno de Duplicatas Descontadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Extorno de Duplicatas Descontadas
    Cobrança Bancária
    RPA.Windows.Click         Estorno Duplicatas Descontadas
    RPA.Windows.Get Text      Estorno - Duplicatas Descontadas (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Estorno - Duplicatas Descontadas (1)    ${Caminho_Screenshots}Extorno de Duplicatas Descontadas
    RPA.Windows.Click         OK
    Fechar janela

Desvincular Boletos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Desvincular Boletos
    Cobrança Bancária
    RPA.Windows.Click         Desvincular Boletos
    RPA.Windows.Get Text      Desvincular Boletos (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot    Desvincular Boletos (1)    ${Caminho_Screenshots}Desvincular Boletos
    RPA.Windows.Click       Confirmar
    Fechar janela

    
    