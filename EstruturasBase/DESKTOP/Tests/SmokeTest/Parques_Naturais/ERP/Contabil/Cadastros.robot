*** Settings ***
Documentation    Smoke Test: Contábil
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteça erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Contábil/Cadastros/    
${nome_print}
${nome_exe}=    cde_win_ctb
*** Keywords ***
    

*** Test Cases ***

Plano de Contas
    ${nome_print}=     Set Variable     Plano de Contas
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Plano de Contas
    RPA.Windows.Get Text      Cadastro do Plano de Contas (1)  
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro do Plano de Contas (1)      ${Caminho_Screenshots}Plano de Contas
    Fechar janela
    RPA.Windows.Click         Sim

Plano de Contas X Plano Referencial
    ${nome_print}=     Set Variable     Plano de Contas X Plano Referencial
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Plano de Contas x Plano Referencial
    RPA.Windows.Get Text      Relacionamento Plano de Contas x Plano Referencial
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Relacionamento Plano de Contas x Plano Referencial    ${Caminho_Screenshots}Plano de Contas X Plano Referencial
    RPA.Windows.Click         Fechar

Balancete X Plano Referencial
    ${nome_print}=     Set Variable     Balancete X Plano Referencial
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Balancete x Plano Referencial
    RPA.Windows.Get Text      Balancete x Plano Referencial (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Balancete x Plano Referencial (1)   ${Caminho_Screenshots}Balancete X Plano Referencial
    RPA.Windows.Click         OK
    Fechar janela

Notas Explicativas
    ${nome_print}=     Set Variable     Notas Explicativas
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Notas Explicativas
    RPA.Windows.Get Text      Cadastro de Notas Explicativas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Notas Explicativas (1)   ${Caminho_Screenshots}Notas Explicativas
    Fechar janela
    RPA.Windows.Click         Sim

Históricos Contábeis
    ${nome_print}=     Set Variable     Históricos Contábeis
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Históricos Contábeis
    RPA.Windows.Get Text      Cadastro de Históricos Contábeis (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Históricos Contábeis (1)    ${Caminho_Screenshots}Históricos Contábeis
    Fechar janela
    RPA.Windows.Click         Sim

Centro de Custos
    ${nome_print}=     Set Variable     Centro de Custos
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Centro de Custos
    RPA.Windows.Get Text      Cadastro de Centros de Custos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Centros de Custos (1)    ${Caminho_Screenshots}Centro de Custos
    Fechar janela
    RPA.Windows.Click         Sim

Indexadores
    ${nome_print}=     Set Variable     Indexadores
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Indexadores
    RPA.Windows.Get Text      Cadastro de Indexadores (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Indexadores (1)    ${Caminho_Screenshots}Indexadores
    Fechar janela
    RPA.Windows.Click         Sim

Contabilistas
    ${nome_print}=     Set Variable     Contabilistas
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Contabilistas
    RPA.Windows.Get Text      Cadastro de Contabilistas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Contabilistas (1)    ${Caminho_Screenshots}Contabilistas
    Fechar janela
    RPA.Windows.Click         Sim

Montagem do Demonstrativo DRE
    ${nome_print}=     Set Variable     Montagem do Demonstrativo DRE
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Montagem do Demonstrativo DRE
    RPA.Windows.Get Text      Montagem do Demonstrativo (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Montagem do Demonstrativo (1)    ${Caminho_Screenshots}Montagem do Demonstrativo DRE
    RPA.Windows.Click         OK
    Fechar janela

Montagem do Demonstrativo DFC
    ${nome_print}=     Set Variable     Montagem do Demonstrativo DFC
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Montagem do Demonstrativo DFC
    RPA.Windows.Get Text      Montagem do Demonstrativo - DFC (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Montagem do Demonstrativo - DFC (1)   ${Caminho_Screenshots}Montagem do Demonstrativo DFC
    RPA.Windows.Click         OK
    Fechar janela

Configuração Int. Contabil
    ${nome_print}=     Set Variable     Configuração Int. Contabil
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Configuração Int. Contabil
    RPA.Windows.Get Text      Configuração para Integração Contábil (1)
    RPA.Windows.Click         Cooperado
    BaseDesktop.Screenshot    Configuração para Integração Contábil (1)    ${Caminho_Screenshots}Configuração Int. Contabil
    Fechar janela
    RPA.Windows.Click         Sim

Composição de Custos
    ${nome_print}=     Set Variable     Composição de Custos
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Composição de Custos
    RPA.Windows.Get Text      Configuração de Composição de Custos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Configuração de Composição de Custos (1)    ${Caminho_Screenshots}Composição de Custos
    Fechar janela
    RPA.Windows.Click         Sim

Despesas antecipadas
    ${nome_print}=     Set Variable     Despesas antecipadas
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Despesas antecipadas
    RPA.Windows.Get Text      Cadastro de Despesas Antecipadas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Despesas Antecipadas (1)    ${Caminho_Screenshots}Despesas antecipadas
    Fechar janela
    RPA.Windows.Click         Sim

Países
    ${nome_print}=     Set Variable     Países
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Países
    RPA.Windows.Get Text      Cadastro de Países (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Países (1)    ${Caminho_Screenshots}Países
    Fechar com Sim

Estados
    ${nome_print}=     Set Variable     Estados
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Estados
    RPA.Windows.Get Text      Cadastro de Estados (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Estados (1)    ${Caminho_Screenshots}Estados
    Fechar janela
    RPA.Windows.Click         Sim

Municípios
    ${nome_print}=     Set Variable     Municípios
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Municípios
    RPA.Windows.Get Text      Cadastro de Municípios (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
    Fechar com Sim

Localidades
    ${nome_print}=     Set Variable     Localidades
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Localidades
    RPA.Windows.Get Text      Cadastro de Localidades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Localidades (1)    ${Caminho_Screenshots}Localidades
    Fechar com Sim

Regiões
    ${nome_print}=     Set Variable     Regiões
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Regiões
    RPA.Windows.Get Text      Cadastro de Regiões (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Regiões (1)    ${Caminho_Screenshots}Regiões
    Fechar com Sim

Parâmetros > Empresas
    ${nome_print}=     Set Variable     Empresas
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot                  Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar com Sim

Parâmetros > Estabelecimentos
    ${nome_print}=     Set Variable     Estabelecimentos
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot                  Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar com Sim

Parâmetros > Usuários
    ${nome_print}=     Set Variable     Usuários
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    u
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot                  Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar com Sim

Parâmetros > Grupos Usuários
    ${nome_print}=     Set Variable     Grupos Usuários
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot                  Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupos Usuários
    Fechar com Sim

Parâmetros > Configurações de Estação
    ${nome_print}=     Set Variable     Configurações de Estação
    [Tags]     Contábil    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    BaseDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações de Estação
    Fechar janela