*** Settings ***
Documentation    Smoke Test: Contabil
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Contabil/Relatórios/    
${nome_print}
${nome_exe}=    cde_win_ctb
*** Keywords ***

Relatórios
    Cadastros
    repetidor de teclas    right    3

*** Test Cases ***

Livro Diário
    ${nome_print}=     Set Variable     Livro Diário
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Livro Diário
    RPA.Windows.Get Text      Livro Diário (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot    Livro Diário (1)     ${Caminho_Screenshots}Livro Diário
    RPA.Windows.Click         Confirmar
    Fechar janela

Razão
    ${nome_print}=     Set Variable     Razão
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Razão
    RPA.Windows.Get Text      Razão Contabil (1) 
    RPA.Desktop.Press Keys  Shift    Tab
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot    Razão Contabil (1)     ${Caminho_Screenshots}Razão
    RPA.Windows.Click         Confirmar
    Fechar janela

Balancete
    ${nome_print}=     Set Variable     Balancete
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Balancete
    RPA.Windows.Get Text      Balancete (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot    Balancete (1)     ${Caminho_Screenshots}Balancete
    RPA.Windows.Click         Confirmar
    Fechar janela

Balancete por Plano de Contas Referencial
    ${nome_print}=     Set Variable     Balancete por Plano de Contas Referencial
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Balancete por Plano de Contas Referencial
    RPA.Windows.Get Text      Balancete por Plano de Contas Referencial (1) 
    RPA.Windows.Click         Liberados
    BaseKeywordsDesktop.Screenshot    Balancete por Plano de Contas Referencial (1)     ${Caminho_Screenshots}Balancete por Plano de Contas Referencial
    Fechar janela

Balanço Patrimonial/Demonstrativo DRE
    ${nome_print}=     Set Variable     Balanço Patrimonial_Demonstrativo DRE
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Balanço Patrimonial/Demonstrativo DRE
    RPA.Windows.Get Text      Balanço/Demonstrativo Integrado (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot    Balanço/Demonstrativo Integrado (1)     ${Caminho_Screenshots}Balanço Patrimonial_Demonstrativo DRE
    RPA.Windows.Click         Confirmar
    Fechar janela

Demonstrativo de Fluxo de Caixa - DFC
    ${nome_print}=     Set Variable     Demonstrativo de Fluxo de Caixa - DFC
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Demonstrativo de Fluxo de Caixa - DFC
    RPA.Windows.Get Text      Demonstrativo de Fluxo de Caixa - DFC (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot    Demonstrativo de Fluxo de Caixa - DFC (1)       ${Caminho_Screenshots}Demonstrativo de Fluxo de Caixa - DFC
    RPA.Windows.Click         Confirmar
    Fechar janela

Balanço Patrimonial Comparado
    ${nome_print}=     Set Variable     Balanço Patrimonial Comparado
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Balanço Patrimonial Comparado
    RPA.Windows.Get Text      Balanço Patrimonial Comparado (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot    Balanço Patrimonial Comparado (1)     ${Caminho_Screenshots}Balanço Patrimonial Comparado
    RPA.Windows.Click         Confirmar
    Fechar janela

DMPL/DMPS
    ${nome_print}=     Set Variable     DMPL_DMPS
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         DMPL/DMPS
    RPA.Windows.Get Text      DMPL/DMPS (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot    DMPL/DMPS (1)     ${Caminho_Screenshots}DMPL_DMPS
    RPA.Windows.Click         Confirmar
    Fechar janela

Extrato de Conta
    ${nome_print}=     Set Variable     Extrato de Conta
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Extrato de Conta
    RPA.Windows.Get Text      Extrato de Conta (1) 
    RPA.Windows.Click         Totalizar por Estabelecimento
    BaseKeywordsDesktop.Screenshot    Extrato de Conta (1)     ${Caminho_Screenshots}Extrato de Conta
    Fechar janela

Lançamentos
    ${nome_print}=     Set Variable     Lançamentos
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Lançamentos
    RPA.Windows.Get Text      Relação de Lançamentos (1)
    RPA.Windows.Click         Ambos
    BaseKeywordsDesktop.Screenshot    Relação de Lançamentos (1)     ${Caminho_Screenshots}Lançamentos
    Fechar janela

Termos
    ${nome_print}=     Set Variable     Termos
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Termos
    RPA.Windows.Get Text      Emissão dos Termos de Abertura/Encerramento (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot    Emissão dos Termos de Abertura/Encerramento (1)     ${Caminho_Screenshots}Termos
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Cadastros > Plano de Contas
    ${nome_print}=     Set Variable     Plano de Contas
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Cadastros
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Relatório de Plano de Contas (1)
    RPA.Windows.Click         Ordem de Código
    BaseKeywordsDesktop.Screenshot    Relatório de Plano de Contas (1)     ${Caminho_Screenshots}Cadastros/Plano de Contas
    Fechar janela

Cadastros > Históricos
    ${nome_print}=     Set Variable     Históricos
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Cadastros
    RPA.Desktop.Press Keys    H
    RPA.Windows.Get Text      Relatório de Históricos Contábeis (1)  
    RPA.Windows.Click         Ordem de Nome
    BaseKeywordsDesktop.Screenshot    Relatório de Históricos Contábeis (1)      ${Caminho_Screenshots}Cadastros/Históricos
    Fechar janela

Cadastros > Centros de Custos
    ${nome_print}=     Set Variable     Centros de Custos
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Cadastros
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Relatório de Centros de Custos (1)
    RPA.Windows.Click         Ordem de Nome
    BaseKeywordsDesktop.Screenshot    Relatório de Centros de Custos (1)    ${Caminho_Screenshots}Cadastros/Centros de Custos
    Fechar janela

Cadastros > Estabelecimento
    ${nome_print}=     Set Variable     Estabelecimento
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Relatório de Estabelecimentos (1)
    RPA.Windows.Click       Ordem de Nome
    BaseKeywordsDesktop.Screenshot  Relatório de Estabelecimentos (1)    ${Caminho_Screenshots}Cadastros/Estabelecimento
    Fechar janela

Cadastros > Países
    ${nome_print}=     Set Variable     Países
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Relatório de Países (1)
    RPA.Windows.Click         Ordem de Nome
    BaseKeywordsDesktop.Screenshot  Relatório de Países (1)    ${Caminho_Screenshots}Cadastros/Países
    Fechar janela

Cadastros > Estados
    ${nome_print}=     Set Variable     Estados
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Relatório de Estados (1)
    RPA.Windows.Click       Ordem de País
    BaseKeywordsDesktop.Screenshot  Relatório de Estados (1)    ${Caminho_Screenshots}Cadastros/Estados
    Fechar janela

Cadastros > Municípios
    ${nome_print}=     Set Variable     Municípios
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Relatório de Municípios (1)
    RPA.Windows.Click         Ordem de Nome
    BaseKeywordsDesktop.Screenshot  Relatório de Municípios (1)    ${Caminho_Screenshots}Cadastros/Municípios
    Fechar janela

Cadastros > Regiões
    ${nome_print}=     Set Variable     Regiões
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Relatório de Regiões (1)
    RPA.Windows.Click         Ordem de Nome
    BaseKeywordsDesktop.Screenshot  Relatório de Regiões (1)    ${Caminho_Screenshots}Cadastros/Regiões
    Fechar janela

Cadastros > Localidades
    ${nome_print}=     Set Variable     Localidades
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Cadastros
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Relatório de Localidades (1)
    RPA.Windows.Click         Ordem de Nome
    BaseKeywordsDesktop.Screenshot    Relatório de Localidades (1)    ${Caminho_Screenshots}Cadastros/Localidades
    Fechar janela

Cadastros > Terceiros
    ${nome_print}=     Set Variable     Terceiros
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Cadastros
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Relatório de Clientes/Fornecedores (1)
    repetidor de teclas       Tab                                9
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter  
    BaseKeywordsDesktop.Screenshot    Relatório de Clientes/Fornecedores (1)      ${Caminho_Screenshots}Cadastros/Terceiros
    RPA.Windows.Click         Confirmar
    Fechar janela

Informativo de Rendimentos
    ${nome_print}=     Set Variable     Informativo de Rendimentos
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Informativo de Rendimentos
    RPA.Windows.Get Text      Informativo de Rendimentos (1) 
    RPA.Windows.Click         Listar Notas Fiscais  
    BaseKeywordsDesktop.Screenshot    Informativo de Rendimentos (1)     ${Caminho_Screenshots}Informativo de Rendimentos
    Fechar janela

Customizados > Relatório de Imobilização
    ${nome_print}=     Set Variable     Relatório de Imobilização
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Customizados
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Relatório de Imobilizado (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot    Relatório de Imobilizado (1)      ${Caminho_Screenshots}Customizados/Relatório de Imobilização
    RPA.Windows.Click         Confirmar
    Fechar janela

Receitas / Despesas
    ${nome_print}=     Set Variable     Receitas _ Despesas
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Receitas / Despesas
    RPA.Windows.Get Text      Relatório de Receitas e Despesas (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Receitas e Despesas (1)     ${Caminho_Screenshots}Receitas _ Despesas
    RPA.Windows.Click         Confirmar
    Fechar janela

Despesas Antecipadas
    ${nome_print}=     Set Variable     Despesas Antecipadas
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Despesas Antecipadas
    RPA.Windows.Get Text      Relatório de Despesas Antecipadas (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Despesas Antecipadas (1)     ${Caminho_Screenshots}Despesas Antecipadas
    RPA.Windows.Click         OK
    RPA.Windows.Click         Fechar
    RPA.Windows.Click         OK

Centro de Custos (Borderô)
    ${nome_print}=     Set Variable     Centro de Custos (Borderô)
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Centro de Custos (Borderô)
    RPA.Windows.Get Text      Relatório de Centro de Custos (Borderô) (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Centro de Custos (Borderô) (1)     ${Caminho_Screenshots}Centro de Custos (Borderô)
    RPA.Windows.Click         OK
    RPA.Windows.Click         Fechar
    RPA.Windows.Click         OK      

Faturamento
    ${nome_print}=     Set Variable     Faturamento
    [Tags]     Contabil    Relatórios   SmokeTest
    Relatórios
    RPA.Windows.Click         Faturamento
    RPA.Windows.Get Text      Relatório de Faturamento (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot    Relatório de Faturamento (1)     ${Caminho_Screenshots}Faturamento
    RPA.Windows.Click         Confirmar
    Fechar janela