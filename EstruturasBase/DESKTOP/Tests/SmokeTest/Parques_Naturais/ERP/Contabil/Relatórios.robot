*** Settings ***
Documentation    Smoke Test: Contábil
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_ctb

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Contábil/Relatórios/    

*** Keywords ***

Relatórios
    Cadastros
    repetidor de teclas    right    3

*** Test Cases ***

Livro Diário
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Livro Diário
    Relatórios
    RPA.Windows.Click         Livro Diário
    RPA.Windows.Get Text      Livro Diário (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot    Livro Diário (1)     ${Caminho_Screenshots}Livro Diário
    RPA.Windows.Click         Confirmar
    Fechar janela

Razão
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Razão
    Relatórios
    RPA.Windows.Click         Razão
    RPA.Windows.Get Text      Razão Contabil (1) 
    RPA.Desktop.Press Keys  Shift    Tab
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot    Razão Contabil (1)     ${Caminho_Screenshots}Razão
    RPA.Windows.Click         Confirmar
    Fechar janela

Balancete
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Balancete
    Relatórios
    RPA.Windows.Click         Balancete
    RPA.Windows.Get Text      Balancete (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot    Balancete (1)     ${Caminho_Screenshots}Balancete
    RPA.Windows.Click         Confirmar
    Fechar janela

Balancete por Plano de Contas Referencial
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Balancete por Plano de Contas Referencial
    Relatórios
    RPA.Windows.Click         Balancete por Plano de Contas Referencial
    RPA.Windows.Get Text      Balancete por Plano de Contas Referencial (1) 
    RPA.Windows.Click         Liberados
    BaseDesktop.Screenshot    Balancete por Plano de Contas Referencial (1)     ${Caminho_Screenshots}Balancete por Plano de Contas Referencial
    Fechar janela

Balanço Patrimonial/Demonstrativo DRE
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Balanço Patrimonial_Demonstrativo DRE
    Relatórios
    RPA.Windows.Click         Balanço Patrimonial/Demonstrativo DRE
    RPA.Windows.Get Text      Balanço/Demonstrativo Integrado (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot    Balanço/Demonstrativo Integrado (1)     ${Caminho_Screenshots}Balanço Patrimonial_Demonstrativo DRE
    RPA.Windows.Click         Confirmar
    Fechar janela

Demonstrativo de Fluxo de Caixa - DFC
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Demonstrativo de Fluxo de Caixa - DFC
    Relatórios
    RPA.Windows.Click         Demonstrativo de Fluxo de Caixa - DFC
    RPA.Windows.Get Text      Demonstrativo de Fluxo de Caixa - DFC (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot    Demonstrativo de Fluxo de Caixa - DFC (1)       ${Caminho_Screenshots}Demonstrativo de Fluxo de Caixa - DFC
    RPA.Windows.Click         Confirmar
    Fechar janela

Balanço Patrimonial Comparado
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Balanço Patrimonial Comparado
    Relatórios
    RPA.Windows.Click         Balanço Patrimonial Comparado
    RPA.Windows.Get Text      Balanço Patrimonial Comparado (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot    Balanço Patrimonial Comparado (1)     ${Caminho_Screenshots}Balanço Patrimonial Comparado
    Fechar janela

DMPL/DMPS
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        DMPL/DMPS
    Relatórios
    RPA.Windows.Click         DMPL/DMPS
    RPA.Windows.Get Text      DMPL/DMPS (1) 
    BaseDesktop.Screenshot    DMPL/DMPS (1)     ${Caminho_Screenshots}DMPL/DMPS
    Fechar janela

Extrato de Conta
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Extrato de Conta
    Relatórios
    RPA.Windows.Click         Extrato de Conta
    RPA.Windows.Get Text      Extrato de Conta (1) 
    BaseDesktop.Screenshot    Extrato de Conta (1)     ${Caminho_Screenshots}Extrato de Conta
    Fechar janela

Lançamentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Lançamentos
    Relatórios
    RPA.Windows.Click         Lançamentos
    RPA.Windows.Get Text      Relação de Lançamentos (1)
    BaseDesktop.Screenshot    Relação de Lançamentos (1)     ${Caminho_Screenshots}Lançamentos
    Fechar janela

Termos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Termos
    Relatórios
    RPA.Windows.Click         Termos
    RPA.Windows.Get Text      Emissão dos Termos de Abertura/Encerramento (1) 
    BaseDesktop.Screenshot    Emissão dos Termos de Abertura/Encerramento (1)     ${Caminho_Screenshots}Termos
    Fechar janela

Cadastros > Plano de Contas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Cadastros/                        Plano de Contas
    Relatórios
    RPA.Windows.Click         Cadastros
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Relatório de Plano de Contas (1)
    BaseDesktop.Screenshot    Relatório de Plano de Contas (1)     ${Caminho_Screenshots}Cadastros/Plano de Contas
    Fechar janela

Cadastros > Históricos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Cadastros/                        Históricos
    Relatórios
    RPA.Windows.Click         Cadastros
    RPA.Desktop.Press Keys    H
    RPA.Windows.Get Text      Relatório de Históricos Contábeis (1)  
    BaseDesktop.Screenshot    Relatório de Históricos Contábeis (1)      ${Caminho_Screenshots}Cadastros/Históricos
    Fechar janela

Cadastros > Centros de Custos
    [Teardown]              Caso aconteça erro                   ${Caminho_Screenshots}Cadastros/                      Centros de Custos
    Relatórios
    RPA.Windows.Click         Cadastros
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Relatório de Centros de Custos (1)
    BaseDesktop.Screenshot    Relatório de Centros de Custos (1)    ${Caminho_Screenshots}Cadastros/Centros de Custos
    Fechar janela

Cadastros > Estabelecimento
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Cadastros/              Estabelecimento
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Relatório de Estabelecimentos (1)
    BaseDesktop.Screenshot  Relatório de Estabelecimentos (1)    ${Caminho_Screenshots}Cadastros/Estabelecimento
    Fechar janela

Cadastros > Países
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Cadastros/           Países
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Relatório de Países (1)
    BaseDesktop.Screenshot  Relatório de Países (1)    ${Caminho_Screenshots}Cadastros/Países
    Fechar janela

Cadastros > Estados
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Cadastros/           Estados
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Relatório de Estados (1)
    BaseDesktop.Screenshot  Relatório de Estados (1)    ${Caminho_Screenshots}Cadastros/Estados
    Fechar janela

Cadastros > Municípios
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Cadastros/           Municípios
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Relatório de Municípios (1)
    BaseDesktop.Screenshot  Relatório de Municípios (1)    ${Caminho_Screenshots}Cadastros/Municípios
    Fechar janela

Cadastros > Regiões
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Cadastros/          Regiões
    Relatórios
    RPA.Windows.Click       Cadastros
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Relatório de Regiões (1)
    BaseDesktop.Screenshot  Relatório de Regiões (1)    ${Caminho_Screenshots}Cadastros/Regiões
    Fechar janela

Cadastros > Localidades
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Cadastros/           Localidades
    Relatórios
    RPA.Windows.Click         Cadastros
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Relatório de Localidades (1)
    BaseDesktop.Screenshot    Relatório de Localidades (1)    ${Caminho_Screenshots}Cadastros/Localidades
    Fechar janela

Cadastros > Terceiros
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Cadastros/                        Terceiros
    Relatórios
    RPA.Windows.Click         Cadastros
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Relatório de Clientes/Fornecedores (1)  
    BaseDesktop.Screenshot    Relatório de Clientes/Fornecedores (1)      ${Caminho_Screenshots}Cadastros/Terceiros
    Fechar janela

Informativo de Rendimentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Informativo de Rendimentos
    Relatórios
    RPA.Windows.Click         Informativo de Rendimentos
    RPA.Windows.Get Text      Informativo de Rendimentos (1) 
    BaseDesktop.Screenshot    Informativo de Rendimentos (1)     ${Caminho_Screenshots}Informativo de Rendimentos
    Fechar janela

Customizados > Relatório de Imobilização
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Customizados/                        Relatório de Imobilização
    Relatórios
    RPA.Windows.Click         Customizados
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Relatório de Imobilizado (1)  
    BaseDesktop.Screenshot    Relatório de Imobilizado (1)      ${Caminho_Screenshots}Customizados/Relatório de Imobilização
    Fechar janela

Receitas / Despesas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Receitas _ Despesas
    Relatórios
    RPA.Windows.Click         Receitas / Despesas
    RPA.Windows.Get Text      Relatório de Receitas e Despesas (1) 
    BaseDesktop.Screenshot    Relatório de Receitas e Despesas (1)     ${Caminho_Screenshots}Receitas _ Despesas
    Fechar janela

Despesas Antecipadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Despesas Antecipadas
    Relatórios
    RPA.Windows.Click         Despesas Antecipadas
    RPA.Windows.Get Text      Relatório de Despesas Antecipadas (1) 
    BaseDesktop.Screenshot    Relatório de Despesas Antecipadas (1)     ${Caminho_Screenshots}Despesas Antecipadas
    RPA.Windows.Click         Fechar

Centro de Custos (Borderô)
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Centro de Custos (Borderô)
    Relatórios
    RPA.Windows.Click         Centro de Custos (Borderô)
    RPA.Windows.Get Text      Relatório de Centro de Custos (Borderô) (1) 
    BaseDesktop.Screenshot    Relatório de Centro de Custos (Borderô) (1)     ${Caminho_Screenshots}Centro de Custos (Borderô)
    RPA.Windows.Click         Fechar

Faturamento
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Faturamento
    Relatórios
    RPA.Windows.Click         Faturamento
    RPA.Windows.Get Text      Relatório de Faturamento (1) 
    BaseDesktop.Screenshot    Relatório de Faturamento (1)     ${Caminho_Screenshots}Faturamento
    Fechar janela

Encerrar
    Encerrar tudo