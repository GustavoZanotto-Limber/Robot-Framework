*** Settings ***
Documentation    Smoke Test: Front
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao Front

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/Front/Cadastros/    

*** Keywords ***

*** Test Cases ***
Guias
    [Teardown]              Caso aconteça erro       ${Caminho_Screenshots}          Guias
    Cadastros
    RPA.Windows.Click       Guias
    RPA.Windows.Get Text    Cadastro de Guias (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Guias (1)    ${Caminho_Screenshots}Guias
    Fechar janela
    RPA.Windows.Click       Sim

Isentos
    [Teardown]              Caso aconteça erro        ${Caminho_Screenshots}            Isentos
    Cadastros
    RPA.Windows.Click       Isentos
    RPA.Windows.Get Text    Cadastro de Isento (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Isento (1)    ${Caminho_Screenshots}Isentos
    Fechar janela
    RPA.Windows.Click       Sim

Agências -> Agências
    [Teardown]    Caso aconteça erro           ${Caminho_Screenshots}Agências/     Agências
    Cadastros
    RPA.Windows.Click         Agências
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de Terceiros (1)
    RPA.Windows.Click         Novo
    Sleep                     1s
    BaseDesktop.Screenshot    Cadastro de Terceiros (1)    ${Caminho_Screenshots}Agências/Agências
    RPA.Windows.Click         Fechar
    Fechar janela
    RPA.Windows.Click         Sim

Agências -> Grupo de Agências
    [Teardown]    Caso aconteça erro        ${Caminho_Screenshots}/Agências           Grupo de Agências
    Cadastros
    RPA.Windows.Click         Agências
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Cadastro de Grupos de Agências (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Grupos de Agências (1)    ${Caminho_Screenshots}/Agências/Grupo de Agências
    Fechar janela
    RPA.Windows.Click         Sim

Locais Estacionamento
    [Teardown]              Caso aconteça erro           ${Caminho_Screenshots}              Locais Estacionamento
    Cadastros
    RPA.Windows.Click       Locais Estacionamento
    RPA.Windows.Get Text    Cadastro Locais de Estacionamento (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro Locais de Estacionamento (1)    ${Caminho_Screenshots}Locais Estacionamento
    Fechar janela
    RPA.Windows.Click         Sim

Grupos de Bilhetes Totem
    [Teardown]              Caso aconteça erro              ${Caminho_Screenshots}                 Grupo Bilhetes Totem
    Cadastros
    RPA.Windows.Click       Grupo Bilhetes Totem
    RPA.Windows.Get Text    Cadastro de Grupos de Bilhetes Totem (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Grupos de Bilhetes Totem (1)    ${Caminho_Screenshots}Grupos de Bilhetes Totem
    Fechar janela
    RPA.Windows.Click         Sim

Grupos de Isenção
    [Teardown]              Caso aconteça erro       ${Caminho_Screenshots}          Grupos de Isenção
    Cadastros
    RPA.Windows.Click        Grupos de Isenção
    RPA.Windows.Get Text     Cadastro de Grupos de Isenção (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot   Cadastro de Grupos de Isenção (1)    ${Caminho_Screenshots}Grupos de Isenção
    Fechar janela
    RPA.Windows.Click         Sim

Tipos de Autorização
    [Teardown]              Caso aconteça erro          ${Caminho_Screenshots}             Tipos de Autorização
    Cadastros
    RPA.Windows.Click       Tipos de Autorização
    RPA.Windows.Get Text    Cadastro de Tipos de Autorização (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Autorização (1)    ${Caminho_Screenshots}Tipos de Autorização
    Fechar janela
    RPA.Windows.Click       Sim

Tipos de Documentos
    [Teardown]              Caso aconteça erro         ${Caminho_Screenshots}            Tipos de Documentos
    Cadastros
    RPA.Windows.Click       Tipos de Documentos
    RPA.Windows.Get Text    Cadastro de Tipos de Documentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Documentos (1)    ${Caminho_Screenshots}Tipos de Documentos
    Fechar janela
    RPA.Windows.Click       Sim

Pessoas Autorizadas
    [Teardown]              Caso aconteça erro               ${Caminho_Screenshots}     Pessoas Autorizadas    
    Cadastros
    RPA.Windows.Click       Pessoas Autorizadas
    RPA.Windows.Get Text    Cadastro de Pessoas Autorizadas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Pessoas Autorizadas (1)    ${Caminho_Screenshots}Pessoas Autorizadas
    Fechar janela
    RPA.Windows.Click       Sim

Acesso por aproximação
    [Teardown]              Caso aconteça erro            ${Caminho_Screenshots}               Acesso por Aproximação
    Cadastros
    RPA.Windows.Click       Acesso por Aproximação
    RPA.Windows.Get Text    Cadastro de Acesso por Aproximação (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Acesso por Aproximação (1)    ${Caminho_Screenshots}Acesso por aproximação
    Fechar janela
    RPA.Windows.Click       Sim

Catracas / Terminais de Acesso
    [Teardown]              Caso aconteça erro        ${Caminho_Screenshots}         Catracas_Terminais de Acesso
    Cadastros
    RPA.Windows.Click       Catracas / Terminais de Acesso
    RPA.Windows.Get Text    Cadastro de Catracas / Terminais de Acesso (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Catracas / Terminais de Acesso (1)    ${Caminho_Screenshots}Catracas_Terminais de Acesso
    Fechar janela
    RPA.Windows.Click       Sim

PDV -> Locais de Venda
    [Teardown]    Caso aconteça erro     ${Caminho_Screenshots}PDV/        Locais de Venda
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Cadastro de Locais de Venda (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Locais de Venda (1)    ${Caminho_Screenshots}PDV/Locais de Venda
    Fechar janela
    RPA.Windows.Click       Sim

PDV -> PDV
    [Teardown]    Caso aconteça erro     ${Caminho_Screenshots}PDV/        PDV
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    p
    RPA.Windows.Get Text      Cadastro de PDV (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de PDV (1)    ${Caminho_Screenshots}PDV/PDV
    Fechar janela
    RPA.Windows.Click         Sim

Câmeras de Contagem
    [Teardown]              Caso aconteça erro         ${Caminho_Screenshots}            Câmeras de Contagem
    Cadastros
    RPA.Windows.Click       Câmeras de Contagem
    RPA.Windows.Get Text    Cadastro de Câmeras de Contagem (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Câmeras de Contagem (1)    ${Caminho_Screenshots}Câmeras de Contagem
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros -> Empresas
    [Teardown]    Caso aconteça erro          ${Caminho_Screenshots}Parâmetros/             Empresas
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros -> Estabelecimentos
    [Teardown]    Caso aconteça erro      ${Caminho_Screenshots}Parâmetros/         Estabelecimentos
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    s
    Sleep                     2s
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros -> Usuários
    [Teardown]    Caso aconteça erro          ${Caminho_Screenshots}Parâmetros/            Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    u
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela
     RPA.Windows.Click         Sim

Parâmetros -> Grupos de Usuários
    [Teardown]    Caso aconteça erro        ${Caminho_Screenshots}Parâmetros/           Grupos de Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupos de Usuários
    Fechar janela
     RPA.Windows.Click         Sim

Parâmetros -> Configurações de Estação
    [Teardown]    Caso aconteça erro              ${Caminho_Screenshots}Parâmetros/                 Configurações de Estação
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    BaseDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações de Estação
    Fechar janela

Parâmetros -> Configurações de Bilheteria
    [Teardown]    Caso aconteça erro              ${Caminho_Screenshots}Parâmetros/                 Configurações de Bilheteria
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    o
    Sleep                     1s
    RPA.Windows.Get Text      Configurações Bilheteria (1)
    RPA.Windows.Click         Emissão de Bilhete
    BaseDesktop.Screenshot    Configurações Bilheteria (1)    ${Caminho_Screenshots}Parâmetros/Configurações Bilheteria
    Fechar janela
    RPA.Desktop.Press Keys    right
    RPA.Desktop.Press Keys    enter

Encerrar
    Encerrar tudo