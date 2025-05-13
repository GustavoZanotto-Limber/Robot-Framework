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
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro do Plano de Contas (1)      ${Caminho_Screenshots}Plano de Contas
    Fechar janela
    RPA.Windows.Click         Sim

Plano de Contas X Plano Referencial
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Plano de Contas X Plano Referencial
    Cadastros
    RPA.Windows.Click         Plano de Contas x Plano Referencial
    RPA.Windows.Get Text      Relacionamento Plano de Contas x Plano Referencial
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Relacionamento Plano de Contas x Plano Referencial    ${Caminho_Screenshots}Plano de Contas X Plano Referencial
    RPA.Windows.Click         Fechar

Balancete X Plano Referencial
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Balancete X Plano Referencial
    Cadastros
    RPA.Windows.Click         Balancete x Plano Referencial
    RPA.Windows.Get Text      Balancete x Plano Referencial (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Balancete x Plano Referencial (1)   ${Caminho_Screenshots}Balancete X Plano Referencial
    RPA.Windows.Click         OK
    Fechar janela

Notas Explicativas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Notas Explicativas
    Cadastros
    RPA.Windows.Click         Notas Explicativas
    RPA.Windows.Get Text      Cadastro de Notas Explicativas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Notas Explicativas (1)   ${Caminho_Screenshots}Notas Explicativas
    Fechar janela
    RPA.Windows.Click         Sim

Históricos Contábeis
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Históricos Contábeis
    Cadastros
    RPA.Windows.Click         Históricos Contábeis
    RPA.Windows.Get Text      Cadastro de Históricos Contábeis (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Históricos Contábeis (1)    ${Caminho_Screenshots}Históricos Contábeis
    Fechar janela
    RPA.Windows.Click         Sim

Centro de Custos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Centro de Custos
    Cadastros
    RPA.Windows.Click         Centro de Custos
    RPA.Windows.Get Text      Cadastro de Centros de Custos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Centros de Custos (1)    ${Caminho_Screenshots}Centro de Custos
    Fechar janela
    RPA.Windows.Click         Sim

Indexadores
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Indexadores
    Cadastros
    RPA.Windows.Click         Indexadores
    RPA.Windows.Get Text      Cadastro de Indexadores (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Indexadores (1)    ${Caminho_Screenshots}Indexadores
    Fechar janela
    RPA.Windows.Click         Sim

Contabilistas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Contabilistas
    Cadastros
    RPA.Windows.Click         Contabilistas
    RPA.Windows.Get Text      Cadastro de Contabilistas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Contabilistas (1)    ${Caminho_Screenshots}Contabilistas
    Fechar janela
    RPA.Windows.Click         Sim

Montagem do Demonstrativo DRE
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Montagem do Demonstrativo DRE
    Cadastros
    RPA.Windows.Click         Montagem do Demonstrativo DRE
    RPA.Windows.Get Text      Montagem do Demonstrativo (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Montagem do Demonstrativo (1)    ${Caminho_Screenshots}Montagem do Demonstrativo DRE
    RPA.Windows.Click         OK
    Fechar janela

Montagem do Demonstrativo DFC
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Montagem do Demonstrativo DFC
    Cadastros
    RPA.Windows.Click         Montagem do Demonstrativo DFC
    RPA.Windows.Get Text      Montagem do Demonstrativo - DFC (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Montagem do Demonstrativo - DFC (1)   ${Caminho_Screenshots}Montagem do Demonstrativo DFC
    RPA.Windows.Click         OK
    Fechar janela

Configuração Int. Contabil
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Configuração Int. Contabil
    Cadastros
    RPA.Windows.Click         Configuração Int. Contabil
    RPA.Windows.Get Text      Configuração para Integração Contábil (1)
    RPA.Windows.Click         Cooperado
    BaseDesktop.Screenshot    Configuração para Integração Contábil (1)    ${Caminho_Screenshots}Configuração Int. Contabil
    Fechar janela
    RPA.Windows.Click         Sim

Composição de Custos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Composição de Custos
    Cadastros
    RPA.Windows.Click         Composição de Custos
    RPA.Windows.Get Text      Configuração de Composição de Custos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Configuração de Composição de Custos (1)    ${Caminho_Screenshots}Composição de Custos
    Fechar janela
    RPA.Windows.Click         Sim

Despesas antecipadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Despesas antecipadas
    Cadastros
    RPA.Windows.Click         Despesas antecipadas
    RPA.Windows.Get Text      Cadastro de Despesas Antecipadas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Despesas Antecipadas (1)    ${Caminho_Screenshots}Despesas antecipadas
    Fechar janela
    RPA.Windows.Click         Sim

Países
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Países
    Cadastros
    RPA.Windows.Click         Países
    RPA.Windows.Get Text      Cadastro de Países (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Países (1)    ${Caminho_Screenshots}Países
    Fechar janela
    RPA.Windows.Click       Sim

Estados
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Estados
    Cadastros
    RPA.Windows.Click         Estados
    RPA.Windows.Get Text      Cadastro de Estados (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Estados (1)    ${Caminho_Screenshots}Estados
    Fechar janela
    RPA.Windows.Click         Sim

Municípios
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Municípios
    Cadastros
    RPA.Windows.Click         Municípios
    RPA.Windows.Get Text      Cadastro de Municípios (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
    Fechar janela
    RPA.Windows.Click       Sim

Localidades
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Localidades
    Cadastros
    RPA.Windows.Click         Localidades
    RPA.Windows.Get Text      Cadastro de Localidades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Localidades (1)    ${Caminho_Screenshots}Localidades
    Fechar janela
    RPA.Windows.Click       Sim

Regiões
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}          ERRO Regiões
    Cadastros
    RPA.Windows.Click         Regiões
    RPA.Windows.Get Text      Cadastro de Regiões (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Regiões (1)    ${Caminho_Screenshots}Regiões
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Empresas
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/          ERRO Empresas
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot                  Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Estabelecimentos
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/          ERRO Estabelecimentos
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot                  Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Usuários
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/          ERRO Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    u
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot                  Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Grupos Usuários
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/          ERRO Grupos Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot                  Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupos Usuários
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Configurações de Estação
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Parâmetros/          ERRO Configurações de Estação
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    BaseDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações de Estação
    Fechar janela

Encerrar
    Encerrar tudo