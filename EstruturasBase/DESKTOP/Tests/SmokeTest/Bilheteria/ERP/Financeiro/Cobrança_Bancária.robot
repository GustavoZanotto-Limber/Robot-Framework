*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         ../../../../../Resources/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Financeiro/Cobrança Bancária/ 
${nome_print}
${nome_exe}=    cde_win_fin

*** Keywords ***

Cobrança Bancária
    Cadastros
    repetidor de teclas    right    9

*** Test Cases ***

Emissão de Boletos
    ${nome_print}=     Set Variable     Emissão de Boletos
    [Tags]     Financeiro    Cobrança Bancária   SmokeTest    
    Cobrança Bancária
    RPA.Windows.Click         Emissão de Boletos
    RPA.Windows.Get Text      Emissão de Duplicatas/Boletos/Carnês (1)
    RPA.Windows.Click         Executar
    BaseKeywordsDesktop.Screenshot    Emissão de Duplicatas/Boletos/Carnês (1)    ${Caminho_Screenshots}Emissão de Boletos
    RPA.Windows.Click         Sim
    Fechar janela

Carteiras de Cobrança
    ${nome_print}=     Set Variable     Carteiras de Cobrança
    [Tags]     Financeiro    Cobrança Bancária   SmokeTest    
    Cobrança Bancária
    RPA.Windows.Click         Carteiras de Cobrança
    RPA.Windows.Get Text      Cadastro de Carteiras de Cobranças (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Carteiras de Cobranças (1)    ${Caminho_Screenshots}Carteiras de Cobrança
    Fechar com Sim

Tipos de Cobrança
    ${nome_print}=     Set Variable     Tipos de Cobrança
    [Tags]     Financeiro    Cobrança Bancária   SmokeTest
    Cobrança Bancária
    RPA.Windows.Click         Tipos de Cobrança
    RPA.Windows.Get Text      Cadastro de Tipos de Cobrança (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Tipos de Cobrança (1)    ${Caminho_Screenshots}Tipos de Cobrança
    Fechar com Sim

Geração de Remessas > Débito em C_C
    ${nome_print}=     Set Variable     Débito em C_C
    [Tags]     Financeiro    Cobrança Bancária   SmokeTest
    Cobrança Bancária
    RPA.Windows.Click         Geração de Remessas
    RPA.Desktop.Press Keys    d
    RPA.Windows.Get Text      Geração de Arquivos Remessa (1) - DÉBITO EM CONTA
    RPA.Windows.Click         Executar
    BaseKeywordsDesktop.Screenshot    Geração de Arquivos Remessa (1) - DÉBITO EM CONTA    ${Caminho_Screenshots}Geração de Remessas/Débito em C_C
    RPA.Windows.Click       OK
    Fechar janela

Geração de Remessas > Cobrança
    ${nome_print}=     Set Variable     Cobrança
    [Tags]     Financeiro    Cobrança Bancária   SmokeTest
    Cobrança Bancária
    RPA.Windows.Click         Geração de Remessas
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Geração de Arquivos Remessa (1) - COBRANÇA
    RPA.Windows.Click         Executar
    BaseKeywordsDesktop.Screenshot    Geração de Arquivos Remessa (1) - COBRANÇA    ${Caminho_Screenshots}Geração de Remessas/Cobrança
    RPA.Windows.Click       OK
    Fechar janela

Geração de Remessas > Consulta
    ${nome_print}=     Set Variable     Consulta
    [Tags]     Financeiro    Cobrança Bancária   SmokeTest
    Cobrança Bancária
    RPA.Windows.Click         Geração de Remessas
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Consulta de remessa de boletos (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta de remessa de boletos (1)    ${Caminho_Screenshots}Geração de Remessas/Consulta
    Fechar janela

Geração de Remessas > Manutenção
    ${nome_print}=     Set Variable     Manutenção
    [Tags]     Financeiro    Cobrança Bancária   SmokeTest
    Cobrança Bancária
    RPA.Windows.Click         Geração de Remessas
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Manutenção de Remessas (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Manutenção de Remessas (1)    ${Caminho_Screenshots}Geração de Remessas/Manutenção
    RPA.Windows.Click         Confirmar
    Fechar janela

Recepção de Arquivos Retornos > Débito em C_C
    ${nome_print}=     Set Variable     Débito em C_C
    [Tags]     Financeiro    Cobrança Bancária   SmokeTest
    Cobrança Bancária
    RPA.Windows.Click         Recepção de Arquivos Retornos
    RPA.Desktop.Press Keys    D
    RPA.Windows.Get Text      Recepção de Arquivos (1) - DÉBITO EM CONTA
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Recepção de Arquivos (1) - DÉBITO EM CONTA    ${Caminho_Screenshots}Recepção de Arquivos Retornos/Débito em C_C
    RPA.Windows.Click         OK
    Fechar janela

Recepção de Arquivos Retornos > Cobrança
    ${nome_print}=     Set Variable     Cobrança
    [Tags]     Financeiro    Cobrança Bancária   SmokeTest
    Cobrança Bancária
    RPA.Windows.Click         Recepção de Arquivos Retornos
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Recepção de Arquivos (1) - COBRANÇA
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Recepção de Arquivos (1) - COBRANÇA    ${Caminho_Screenshots}Recepção de Arquivos Retornos/Cobrança
    RPA.Windows.Click         OK
    Fechar janela

Recepção de Arquivos Retornos > Log Arquivos de Retorno
    ${nome_print}=     Set Variable     Log Arquivos de Retorno
    [Tags]     Financeiro    Cobrança Bancária   SmokeTest
    Cobrança Bancária
    RPA.Windows.Click         Recepção de Arquivos Retornos
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Consulta do Log Recepção Arquivos (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta do Log Recepção Arquivos (1)    ${Caminho_Screenshots}Recepção de Arquivos Retornos/Log Arquivos de Retorno
    Fechar janela

Duplicatas Descontadas
    ${nome_print}=     Set Variable     Duplicatas Descontadas
    [Tags]     Financeiro    Cobrança Bancária   SmokeTest
    Cobrança Bancária
    RPA.Windows.Click         Duplicatas Descontadas
    RPA.Windows.Get Text      Duplicatas Descontadas (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Duplicatas Descontadas (1)    ${Caminho_Screenshots}Duplicatas Descontadas
    RPA.Windows.Click         OK
    Fechar janela

Extorno de Duplicatas Descontadas
    ${nome_print}=     Set Variable     Extorno de Duplicatas Descontadas
    [Tags]     Financeiro    Cobrança Bancária   SmokeTest
    Cobrança Bancária
    RPA.Windows.Click         Estorno Duplicatas Descontadas
    RPA.Windows.Get Text      Estorno - Duplicatas Descontadas (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Estorno - Duplicatas Descontadas (1)    ${Caminho_Screenshots}Extorno de Duplicatas Descontadas
    RPA.Windows.Click         OK
    Fechar janela

Desvincular Boletos
    ${nome_print}=     Set Variable     Desvincular Boletos
    [Tags]     Financeiro    Cobrança Bancária   SmokeTest
    Cobrança Bancária
    RPA.Windows.Click         Desvincular Boletos
    RPA.Windows.Get Text      Desvincular Boletos (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot    Desvincular Boletos (1)    ${Caminho_Screenshots}Desvincular Boletos
    RPA.Windows.Click       Confirmar
    Fechar janela