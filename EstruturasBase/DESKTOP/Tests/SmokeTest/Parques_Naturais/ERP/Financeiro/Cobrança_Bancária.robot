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
    BaseDesktop.Screenshot    Emissão de Duplicatas/Boletos/Carnês (1)    ${Caminho_Screenshots}Emissão de Boletos
    Fechar janela

Carteiras de Cobrança
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Carteiras de Cobrança
    Cobrança Bancária
    RPA.Windows.Click         Carteiras de Cobrança
    RPA.Windows.Get Text      Cadastro de Carteiras de Cobranças (1)
    BaseDesktop.Screenshot    Cadastro de Carteiras de Cobranças (1)    ${Caminho_Screenshots}Carteiras de Cobrança
    Fechar janela

Tipos de Cobrança
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Tipos de Cobrança
    Cobrança Bancária
    RPA.Windows.Click         Tipos de Cobrança
    RPA.Windows.Get Text      Cadastro de Tipos de Cobrança (1)
    BaseDesktop.Screenshot    Cadastro de Tipos de Cobrança (1)    ${Caminho_Screenshots}Tipos de Cobrança
    Fechar janela

Geração de Remessas > Débito em C_C
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Recepção de Arquivos Retornos/                         Débito em C_C
    Cobrança Bancária
    RPA.Windows.Click         Geração de Remessas
    RPA.Desktop.Press Keys    d
    RPA.Windows.Get Text      Geração de Arquivos Remessa (1) - DÉBITO EM CONTA
    BaseDesktop.Screenshot    Geração de Arquivos Remessa (1) - DÉBITO EM CONTA    ${Caminho_Screenshots}Emissão de BoletosRecepção de Arquivos Retornos/Débito em C_C
    Fechar janela

Geração de Remessas > Cobrança
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Recepção de Arquivos Retornos/                         Cobrança
    Cobrança Bancária
    RPA.Windows.Click         Geração de Remessas
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Geração de Arquivos Remessa (1) - COBRANÇA
    BaseDesktop.Screenshot    Geração de Arquivos Remessa (1) - COBRANÇA    ${Caminho_Screenshots}Emissão de BoletosRecepção de Arquivos Retornos/Cobrança
    Fechar janela

Geração de Remessas > Consulta
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Recepção de Arquivos Retornos/                         Consulta
    Cobrança Bancária
    RPA.Windows.Click         Geração de Remessas
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Consulta de remessa de boletos (1)
    BaseDesktop.Screenshot    Consulta de remessa de boletos (1)    ${Caminho_Screenshots}Emissão de BoletosRecepção de Arquivos Retornos/Consulta
    Fechar janela

Geração de Remessas > Manutenção
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Recepção de Arquivos Retornos/                         Manutenção
    Cobrança Bancária
    RPA.Windows.Click         Geração de Remessas
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Manutenção de Remessas (1)
    BaseDesktop.Screenshot    Manutenção de Remessas (1)    ${Caminho_Screenshots}Emissão de BoletosRecepção de Arquivos Retornos/Manutenção
    Fechar janela

Recepção de Arquivos Retornos > Débito em C_C
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Recepção de Arquivos Retornos/                         Débito em C_C
    Cobrança Bancária
    RPA.Windows.Click         Recepção de Arquivos Retornos
    RPA.Desktop.Press Keys    D
    RPA.Windows.Get Text      Recepção de Arquivos (1) - DÉBITO EM CONTA
    BaseDesktop.Screenshot    Recepção de Arquivos (1) - DÉBITO EM CONTA    ${Caminho_Screenshots}Recepção de Arquivos Retornos/Débito em C_C
    Fechar janela

Recepção de Arquivos Retornos > Cobrança
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Recepção de Arquivos Retornos/                         Cobrança
    Cobrança Bancária
    RPA.Windows.Click         Recepção de Arquivos Retornos
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Recepção de Arquivos (1) - COBRANÇA
    BaseDesktop.Screenshot    Recepção de Arquivos (1) - COBRANÇA    ${Caminho_Screenshots}Recepção de Arquivos Retornos/Cobrança
    Fechar janela

Recepção de Arquivos Retornos > Log Arquivos de Retorno
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Recepção de Arquivos Retornos/                         Log Arquivos de Retorno
    Cobrança Bancária
    RPA.Windows.Click         Recepção de Arquivos Retornos
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Consulta do Log Recepção Arquivos (1)
    BaseDesktop.Screenshot    Consulta do Log Recepção Arquivos (1)    ${Caminho_Screenshots}Recepção de Arquivos Retornos/Log Arquivos de Retorno
    Fechar janela

Duplicatas Descontadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Duplicatas Descontadas
    Cobrança Bancária
    RPA.Windows.Click         Duplicatas Descontadas
    RPA.Windows.Get Text      Duplicatas Descontadas (1)
    BaseDesktop.Screenshot    Duplicatas Descontadas (1)    ${Caminho_Screenshots}Duplicatas Descontadas
    Fechar janela

Extorno de Duplicatas Descontadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Extorno de Duplicatas Descontadas
    Cobrança Bancária
    RPA.Windows.Click         Estorno Duplicatas Descontadas
    RPA.Windows.Get Text      Estorno - Duplicatas Descontadas (1)
    BaseDesktop.Screenshot    Estorno - Duplicatas Descontadas (1)    ${Caminho_Screenshots}Extorno de Duplicatas Descontadas
    Fechar janela

Desvincular Boletos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Desvincular Boletos
    Cobrança Bancária
    RPA.Windows.Click         Desvincular Boletos
    RPA.Windows.Get Text      Desvincular Boletos (1)
    BaseDesktop.Screenshot    Desvincular Boletos (1)    ${Caminho_Screenshots}Desvincular Boletos
    Fechar janela

Encerrar    
    Encerrar tudo