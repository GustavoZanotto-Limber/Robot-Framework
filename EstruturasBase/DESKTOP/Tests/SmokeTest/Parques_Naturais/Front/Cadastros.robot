*** Settings ***
Documentation    Smoke Test: Front
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao     ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteça erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/Front/Cadastros/    
${nome_print}
${nome_exe}=    cde_win_bca_frontR30

*** Keywords ***

*** Test Cases ***

Guias
    ${nome_print}=          Set Variable    Guias       
    Cadastros
    RPA.Windows.Click       Guias
    RPA.Windows.Get Text    Cadastro de Guias (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Guias (1)    ${Caminho_Screenshots}Guias
    Fechar com Sim

Isentos
    ${nome_print}=          Set Variable    Isentos
    Cadastros
    RPA.Windows.Click       Isentos
    RPA.Windows.Get Text    Cadastro de Isento (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Isento (1)    ${Caminho_Screenshots}Isentos
    Fechar com Sim

Agências -> Agências
    ${nome_print}=          Set Variable    Agências
    Cadastros
    RPA.Windows.Click         Agências
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de Terceiros (1)
    RPA.Windows.Click         Novo
    Sleep                     1s
    BaseDesktop.Screenshot    Cadastro de Terceiros (1)    ${Caminho_Screenshots}Agências/Agências
    RPA.Windows.Click         Fechar
    Fechar com Sim

Agências -> Grupo de Agências
    ${nome_print}=          Set Variable    Grupo de Agências
    Cadastros
    RPA.Windows.Click         Agências
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Cadastro de Grupos de Agências (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Grupos de Agências (1)    ${Caminho_Screenshots}/Agências/Grupo de Agências
    Fechar com Sim

Locais Estacionamento
    ${nome_print}=          Set Variable    Locais Estacionamento
    Cadastros
    RPA.Windows.Click       Locais Estacionamento
    RPA.Windows.Get Text    Cadastro Locais de Estacionamento (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro Locais de Estacionamento (1)    ${Caminho_Screenshots}Locais Estacionamento
    Fechar com Sim

Grupos de Bilhetes Totem
    ${nome_print}=          Set Variable    Grupos de Bilhetes Totem
    Cadastros
    RPA.Windows.Click       Grupo Bilhetes Totem
    RPA.Windows.Get Text    Cadastro de Grupos de Bilhetes Totem (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot  Cadastro de Grupos de Bilhetes Totem (1)    ${Caminho_Screenshots}Grupos de Bilhetes Totem
    Fechar com Sim

Grupos de Isenção
    ${nome_print}=          Set Variable    Grupos de Isenção
    Cadastros
    RPA.Windows.Click        Grupos de Isenção
    RPA.Windows.Get Text     Cadastro de Grupos de Isenção (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot   Cadastro de Grupos de Isenção (1)    ${Caminho_Screenshots}Grupos de Isenção
    Fechar com Sim

Tipos de Autorização
    ${nome_print}=          Set Variable    Tipos de Autorização
    Cadastros
    RPA.Windows.Click       Tipos de Autorização
    RPA.Windows.Get Text    Cadastro de Tipos de Autorização (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Autorização (1)    ${Caminho_Screenshots}Tipos de Autorização
    Fechar com Sim

Tipos de Documentos
    ${nome_print}=          Set Variable    Tipos de Documentos
    Cadastros
    RPA.Windows.Click       Tipos de Documentos
    RPA.Windows.Get Text    Cadastro de Tipos de Documentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tipos de Documentos (1)    ${Caminho_Screenshots}Tipos de Documentos
    Fechar com Sim

Pessoas Autorizadas
    ${nome_print}=          Set Variable    Pessoas Autorizadas
    Cadastros
    RPA.Windows.Click       Pessoas Autorizadas
    RPA.Windows.Get Text    Cadastro de Pessoas Autorizadas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Pessoas Autorizadas (1)    ${Caminho_Screenshots}Pessoas Autorizadas
    Fechar com Sim

Acesso por aproximação
    ${nome_print}=          Set Variable    Acesso por aproximação
    Cadastros
    RPA.Windows.Click       Acesso por Aproximação
    RPA.Windows.Get Text    Cadastro de Acesso por Aproximação (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Acesso por Aproximação (1)    ${Caminho_Screenshots}Acesso por aproximação
    Fechar com Sim

Catracas / Terminais de Acesso
    ${nome_print}=          Set Variable    Catracas / Terminais de Acesso
    Cadastros
    RPA.Windows.Click       Catracas / Terminais de Acesso
    RPA.Windows.Get Text    Cadastro de Catracas / Terminais de Acesso (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Catracas / Terminais de Acesso (1)    ${Caminho_Screenshots}Catracas_Terminais de Acesso
    Fechar com Sim

PDV -> Locais de Venda
    ${nome_print}=          Set Variable    Locais de Venda
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    l
    RPA.Windows.Get Text      Cadastro de Locais de Venda (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Locais de Venda (1)    ${Caminho_Screenshots}PDV/Locais de Venda
    Fechar com Sim

PDV -> PDV
    ${nome_print}=          Set Variable    PDV
    Cadastros
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    p
    RPA.Windows.Get Text      Cadastro de PDV (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de PDV (1)    ${Caminho_Screenshots}PDV/PDV
    Fechar com Sim

Câmeras de Contagem
    ${nome_print}=          Set Variable    Câmeras de Contagem
    Cadastros
    RPA.Windows.Click       Câmeras de Contagem
    RPA.Windows.Get Text    Cadastro de Câmeras de Contagem (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Câmeras de Contagem (1)    ${Caminho_Screenshots}Câmeras de Contagem
    Fechar com Sim

Parâmetros -> Empresas
    ${nome_print}=          Set Variable    Empresas
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    e
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar com Sim

Parâmetros -> Estabelecimentos
    ${nome_print}=          Set Variable    Estabelecimentos
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    s
    Sleep                     2s
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar com Sim

Parâmetros -> Usuários
    ${nome_print}=          Set Variable    Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    u
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela
     RPA.Windows.Click         Sim

Parâmetros -> Grupos de Usuários
    ${nome_print}=          Set Variable    Grupos de Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    g
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupos de Usuários
    Fechar janela
     RPA.Windows.Click         Sim

Parâmetros -> Configurações de Estação
    ${nome_print}=          Set Variable    Configurações de Estação
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    c
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    BaseDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações de Estação
    Fechar janela

Parâmetros -> Configurações de Bilheteria
    ${nome_print}=          Set Variable    Configurações de Bilheteria
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

