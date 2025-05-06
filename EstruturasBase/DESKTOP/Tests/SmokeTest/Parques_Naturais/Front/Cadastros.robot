*** Settings ***
Documentation    Smoke Test: Front
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao Front


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/Front/Cadastros/    

*** Keywords ***


*** Test Cases ***

Guias
    [Teardown]              Caso aconteça erro       ${Caminho_Screenshots}         ERRO Guias
    Cadastros
    RPA.Windows.Click       Guias
    RPA.Windows.Get Text    Cadastro de Guias (1)
    BaseDesktop.Screenshot              Cadastro de Guias (1)    ${Caminho_Screenshots}Guias
    Fechar janela

Isentos
    [Teardown]              Caso aconteça erro        ${Caminho_Screenshots}           ERRO Isentos
    Cadastros
    RPA.Windows.Click       Isentos
    RPA.Windows.Get Text    Cadastro de Isento (1)
    BaseDesktop.Screenshot              Cadastro de Isento (1)    ${Caminho_Screenshots}Isentos
    Fechar janela

Agências -> Agências
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Agências/    ERRO Agências
    Cadastros
    RPA.Windows.Click         Agências
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de Terceiros (1)
    BaseDesktop.Screenshot    Cadastro de Terceiros (1)    ${Caminho_Screenshots}Agências/Agências
    Fechar janela

Agências -> Grupo de Agências
    [Teardown]    Caso aconteça erro        ${Caminho_Screenshots}/Agências          ERRO Grupo de Agências
    Cadastros
    RPA.Windows.Click         Agências
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Cadastro de Grupos de Agências (1)
    BaseDesktop.Screenshot    Cadastro de Grupos de Agências (1)    ${Caminho_Screenshots}/Agências/Grupo de Agências
    Fechar janela

Locais Estacionamento
    [Teardown]              Caso aconteça erro           ${Caminho_Screenshots}             ERRO Locais Estacionamento
    Cadastros
    RPA.Windows.Click       Locais Estacionamento
    RPA.Windows.Get Text    Cadastro Locais de Estacionamento (1)
    BaseDesktop.Screenshot              Cadastro Locais de Estacionamento (1)    ${Caminho_Screenshots}Locais Estacionamento
    Fechar janela

Grupos de Bilhetes Totem
    [Teardown]              Caso aconteça erro              ${Caminho_Screenshots}                ERRO Grupo Bilhetes Totem
    Cadastros
    RPA.Windows.Click       Grupo Bilhetes Totem
    RPA.Windows.Get Text    Cadastro de Grupos de Bilhetes Totem (1)
    BaseDesktop.Screenshot              Cadastro de Grupos de Bilhetes Totem (1)    ${Caminho_Screenshots}Grupos de Bilhetes Totem
    Fechar janela

Grupos de Isenção
    [Teardown]              Caso aconteça erro       ${Caminho_Screenshots}         ERRO Grupos de Isenção
    Cadastros
    RPA.Windows.Click       Grupos de Isenção
    RPA.Windows.Get Text    Cadastro de Grupos de Isenção (1)
    BaseDesktop.Screenshot              Cadastro de Grupos de Isenção (1)    ${Caminho_Screenshots}Grupos de Isenção
    Fechar janela

Tipos de Autorização
    [Teardown]              Caso aconteça erro          ${Caminho_Screenshots}            ERRO Tipos de Autorização
    Cadastros
    RPA.Windows.Click       Tipos de Autorização
    RPA.Windows.Get Text    Cadastro de Tipos de Autorização (1)
    BaseDesktop.Screenshot              Cadastro de Tipos de Autorização (1)    ${Caminho_Screenshots}Tipos de Autorização
    Fechar janela

Tipos de Documentos
    [Teardown]              Caso aconteça erro         ${Caminho_Screenshots}           ERRO Tipos de Documentos
    Cadastros
    RPA.Windows.Click       Tipos de Documentos
    RPA.Windows.Get Text    Cadastro de Tipos de Documentos (1)
    BaseDesktop.Screenshot              Cadastro de Tipos de Documentos (1)    ${Caminho_Screenshots}Tipos de Documentos
    Fechar janela

Pessoas Autorizadas

    [Teardown]              Run Keyword If Test Failed             Caso aconteça erro               ${Caminho_Screenshots}    ERRO Pessoas Autorizadas    
    Cadastros
    RPA.Windows.Click       Pessoas Autorizadas
    RPA.Windows.Get Text    Cadastro de Pessoas Autorizadas (1)
    BaseDesktop.Screenshot              Cadastro de Pessoas Autorizadas (1)    ${Caminho_Screenshots}Pessoas Autorizadas
    Fechar janela

Acesso por aproximação
    [Teardown]              Caso aconteça erro            ${Caminho_Screenshots}              ERRO Acesso por Aproximação
    Cadastros
    RPA.Windows.Click       Acesso por Aproximação
    RPA.Windows.Get Text    Cadastro de Acesso por Aproximação (1)
    BaseDesktop.Screenshot              Cadastro de Acesso por Aproximação (1)    ${Caminho_Screenshots}Acesso por aproximação
    Fechar janela

Catracas / Terminais de Acesso
    [Teardown]              Caso aconteça erro        ${Caminho_Screenshots}        ERRO Catracas_Terminais de Acesso
    Cadastros
    RPA.Windows.Click       Catracas / Terminais de Acesso
    RPA.Windows.Get Text    Cadastro de Catracas / Terminais de Acesso (1)
    BaseDesktop.Screenshot              Cadastro de Catracas / Terminais de Acesso (1)    ${Caminho_Screenshots}Catracas_Terminais de Acesso
    Fechar janela

PDV -> Locais de Venda
    [Teardown]    Caso aconteça erro     ${Caminho_Screenshots}PDV/       ERRO Locais de Venda
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Cadastro de Locais de Venda (1)
    BaseDesktop.Screenshot    Cadastro de Locais de Venda (1)    ${Caminho_Screenshots}PDV/Locais de Venda
    Fechar janela

PDV -> PDV
    [Teardown]    Caso aconteça erro     ${Caminho_Screenshots}PDV/       ERRO PDV
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    p
    RPA.Windows.Get Text      Cadastro de PDV (1)
    BaseDesktop.Screenshot    Cadastro de PDV (1)    ${Caminho_Screenshots}PDV/PDV
    Fechar janela

Câmeras de Contagem
    [Teardown]              Caso aconteça erro         ${Caminho_Screenshots}           ERRO Câmeras de Contagem
    Cadastros
    RPA.Windows.Click       Câmeras de Contagem
    RPA.Windows.Get Text    Cadastro de Câmeras de Contagem (1)
    BaseDesktop.Screenshot              Cadastro de Câmeras de Contagem (1)    ${Caminho_Screenshots}Câmeras de Contagem
    Fechar janela

Parâmetros -> Empresas
    [Teardown]    Caso aconteça erro          ${Caminho_Screenshots}Parâmetros/            ERRO Empresas
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    BaseDesktop.Screenshot    Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar janela

Parâmetros -> Estabelecimentos
    [Teardown]    Caso aconteça erro      ${Caminho_Screenshots}Parâmetros/        ERRO Estabelecimentos
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    s
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    BaseDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar janela

Parâmetros -> Usuários
    [Teardown]    Caso aconteça erro          ${Caminho_Screenshots}Parâmetros/           ERRO Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    u
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    BaseDesktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela

Parâmetros -> Grupos de Usuários
    [Teardown]    Caso aconteça erro        ${Caminho_Screenshots}Parâmetros/          ERRO Grupos de Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    BaseDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupos de Usuários
    Fechar janela

Parâmetros -> Configurações de Estação
    [Teardown]    Caso aconteça erro              ${Caminho_Screenshots}Parâmetros/                ERRO Configurações de Estação
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configurações da Estação (1)
    BaseDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações de Estação
    Fechar janela

Parâmetros -> Configurações de Bilheteria
    [Teardown]    Caso aconteça erro              ${Caminho_Screenshots}Parâmetros/                ERRO Configurações de Bilheteria
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    o
    RPA.Windows.Get Text      Configurações Bilheteria (1)
    BaseDesktop.Screenshot    Configurações Bilheteria (1)    ${Caminho_Screenshots}Parâmetros/Configurações Bilheteria
    Fechar janela
    RPA.Desktop.Press Keys    right
    RPA.Desktop.Press Keys    enter

Encerrar
    Encerrar tudo