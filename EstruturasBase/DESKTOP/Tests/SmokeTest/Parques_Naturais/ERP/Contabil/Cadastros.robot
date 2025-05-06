*** Settings ***
Documentation    Smoke Test: Contábil
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_ctb


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Contábil/Cadastros/    

*** Keywords ***


*** Test Cases ***

Plano de Contas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Plano de Contas
    Cadastros
    RPA.Windows.Click         Plano de Contas
    RPA.Windows.Get Text      Cadastro do Plano de Contas (1)  
    BaseDesktop.Screenshot    Cadastro do Plano de Contas (1)      ${Caminho_Screenshots}Plano de Contas
    Fechar janela

Plano de Contas X Plano Referencial
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Plano de Contas X Plano Referencial
    Cadastros
    RPA.Windows.Click         Plano de Contas x Plano Referencial
    RPA.Windows.Get Text      Relacionamento Plano de Contas x Plano Referencial
    BaseDesktop.Screenshot    Relacionamento Plano de Contas x Plano Referencial    ${Caminho_Screenshots}Plano de Contas X Plano Referencial
    RPA.Windows.Click         Fechar

Balancete X Plano Referencial
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Balancete X Plano Referencial
    Cadastros
    RPA.Windows.Click         Balancete x Plano Referencial
    RPA.Windows.Get Text      Balancete x Plano Referencial (1)
    BaseDesktop.Screenshot    Balancete x Plano Referencial (1)   ${Caminho_Screenshots}Balancete X Plano Referencial
    Fechar janela

Notas Explicativas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Notas Explicativas
    Cadastros
    RPA.Windows.Click         Notas Explicativas
    RPA.Windows.Get Text      Cadastro de Notas Explicativas (1)
    BaseDesktop.Screenshot    Cadastro de Notas Explicativas (1)   ${Caminho_Screenshots}Notas Explicativas
    Fechar janela

Históricos Contábeis
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Históricos Contábeis
    Cadastros
    RPA.Windows.Click         Históricos Contábeis
    RPA.Windows.Get Text      Cadastro de Históricos Contábeis (1)
    BaseDesktop.Screenshot    Cadastro de Históricos Contábeis (1)    ${Caminho_Screenshots}Históricos Contábeis
    Fechar janela

Centro de Custos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Centro de Custos
    Cadastros
    RPA.Windows.Click         Centro de Custos
    RPA.Windows.Get Text      Cadastro de Centros de Custos (1)
    BaseDesktop.Screenshot    Cadastro de Centros de Custos (1)    ${Caminho_Screenshots}Centro de Custos
    Fechar janela

Indexadores
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Indexadores
    Cadastros
    RPA.Windows.Click         Indexadores
    RPA.Windows.Get Text      Cadastro de Indexadores (1)
    BaseDesktop.Screenshot    Cadastro de Indexadores (1)    ${Caminho_Screenshots}Indexadores
    Fechar janela

Contabilistas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Contabilistas
    Cadastros
    RPA.Windows.Click         Contabilistas
    RPA.Windows.Get Text      Cadastro de Contabilistas (1)
    BaseDesktop.Screenshot    Cadastro de Contabilistas (1)    ${Caminho_Screenshots}Contabilistas
    Fechar janela

Montagem do Demonstrativo DRE
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Montagem do Demonstrativo DRE
    Cadastros
    RPA.Windows.Click         Montagem do Demonstrativo DRE
    RPA.Windows.Get Text      Montagem do Demonstrativo (1)
    BaseDesktop.Screenshot    Montagem do Demonstrativo (1)    ${Caminho_Screenshots}Montagem do Demonstrativo DRE
    Fechar janela

Montagem do Demonstrativo DFC
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Montagem do Demonstrativo DFC
    Cadastros
    RPA.Windows.Click         Montagem do Demonstrativo DFC
    RPA.Windows.Get Text      Montagem do Demonstrativo - DFC (1)
    BaseDesktop.Screenshot    Montagem do Demonstrativo - DFC (1)   ${Caminho_Screenshots}Montagem do Demonstrativo DFC
    Fechar janela

Configuração Int. Contabil
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Configuração Int. Contabil
    Cadastros
    RPA.Windows.Click         Configuração Int. Contabil
    RPA.Windows.Get Text      Configuração para Integração Contábil (1)
    BaseDesktop.Screenshot    Configuração para Integração Contábil (1)    ${Caminho_Screenshots}Configuração Int. Contabil
    Fechar janela

Composição de Custos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Composição de Custos
    Cadastros
    RPA.Windows.Click         Composição de Custos
    RPA.Windows.Get Text      Configuração de Composição de Custos (1)
    BaseDesktop.Screenshot    Configuração de Composição de Custos (1)    ${Caminho_Screenshots}Composição de Custos
    Fechar janela

Despesas antecipadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Despesas antecipadas
    Cadastros
    RPA.Windows.Click         Despesas antecipadas
    RPA.Windows.Get Text      Cadastro de Despesas Antecipadas (1)
    BaseDesktop.Screenshot    Cadastro de Despesas Antecipadas (1)    ${Caminho_Screenshots}Despesas antecipadas
    Fechar janela

Países
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Países
    Cadastros
    RPA.Windows.Click         Países
    RPA.Windows.Get Text      Cadastro de Países (1)
    BaseDesktop.Screenshot                  Cadastro de Países (1)    ${Caminho_Screenshots}Países
    Fechar janela

Estados
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Estados
    Cadastros
    RPA.Windows.Click         Estados
    RPA.Windows.Get Text      Cadastro de Estados (1)
    BaseDesktop.Screenshot                  Cadastro de Estados (1)    ${Caminho_Screenshots}Estados
    Fechar janela

Municípios
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Municípios
    Cadastros
    RPA.Windows.Click         Municípios
    RPA.Windows.Get Text      Cadastro de Municípios (1)
    BaseDesktop.Screenshot                  Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
    Fechar janela

Localidades
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Localidades
    Cadastros
    RPA.Windows.Click         Localidades
    RPA.Windows.Get Text      Cadastro de Localidades (1)
    BaseDesktop.Screenshot                  Cadastro de Localidades (1)    ${Caminho_Screenshots}Localidades
    Fechar janela

Regiões
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Regiões
    Cadastros
    RPA.Windows.Click         Regiões
    RPA.Windows.Get Text      Cadastro de Regiões (1)
    BaseDesktop.Screenshot    Cadastro de Regiões (1)    ${Caminho_Screenshots}Regiões
    Fechar janela

Parâmetros > Empresas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                        ERRO Empresas
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    BaseDesktop.Screenshot    Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar janela

Parâmetros > Estabelecimentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                        ERRO Estabelecimentos
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    BaseDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar janela

Parâmetros > Usuários
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                        ERRO Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    U
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    BaseDesktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela

Parâmetros > Grupo de Usuários
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                        ERRO Grupo de Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    BaseDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupo de Usuários
    Fechar janela

Parâmetros > Configurações da Estação
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                        ERRO Configurações da Estação
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configurações da Estação (1)
    BaseDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações da Estação
    Fechar janela

Encerrar
    Encerrar tudo