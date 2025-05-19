*** Settings ***
Documentation    Smoke Test: Corretagem
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_crt


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Corretagem/Cadastros/    

*** Keywords ***


*** Test Cases ***

Itens > Itens
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Itens/                        Itens
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Cadastro de Itens (1)  
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Itens (1)      ${Caminho_Screenshots}Itens/Itens
    Fechar janela
    RPA.Windows.Click         Sim

Terceiros
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Terceiros
    Cadastros
    RPA.Windows.Click         Terceiros
    RPA.Windows.Get Text      Cadastro de Terceiros (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Terceiros (1)    ${Caminho_Screenshots}Terceiros
    RPA.Windows.Click         Cancelar (F3)
    Fechar janela
    RPA.Windows.Click         Sim

Contrato > Configuração de Contrato
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Contrato/                         Configuração de Contrato
    Cadastros
    RPA.Windows.Click         Contrato
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configuração de Contratos (1)
    repetidor de teclas       tab    5
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot    Configuração de Contratos (1)    ${Caminho_Screenshots}Contrato/Configuração de Contrato
    RPA.Windows.Click         Confirmar
    Fechar janela
    RPA.Windows.Click         Sim

Contrato > Mensagens para Contrato
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Contrato/                         Mensagens para Contrato
    Cadastros
    RPA.Windows.Click         Contrato
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Configuração de Mensagens para Contrato (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Configuração de Mensagens para Contrato (1)    ${Caminho_Screenshots}Contrato/Mensagens para Contrato
    Fechar janela
    RPA.Windows.Click         Sim

Confirmação de Negócio > Configuração de Confirmação de Negócio
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Confirmação de Negócio/                         Configuração de Confirmação de Negócio
    Cadastros
    RPA.Windows.Click         Confirmação de Negócio 
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Modelo de Impressão de Confirmação de Negócio (1)
    repetidor de teclas       tab    5
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Cadastro de Modelo de Impressão de Confirmação de Negócio (1)    ${Caminho_Screenshots}Confirmação de Negócio/Configuração de Confirmação de Negócio
    RPA.Windows.Click         Confirmar
    Fechar janela
    RPA.Windows.Click         Sim

Confirmação de Negócio > Status de Confirmação de Negócio
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Confirmação de Negócio/                         Status de Confirmação de Negócio
    Cadastros
    RPA.Windows.Click         Confirmação de Negócio 
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Status de Confirmação de Negócio (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Status de Confirmação de Negócio (1)    ${Caminho_Screenshots}Confirmação de Negócio/Status de Confirmação de Negócio
    Fechar janela
    RPA.Windows.Click         Sim

Confirmação de Negócio > Motivos Acrésc/Descontos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Confirmação de Negócio/                         Motivos Acrésc_Descontos
    Cadastros
    RPA.Windows.Click         Confirmação de Negócio 
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Cadastro de Motivos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Motivos (1)    ${Caminho_Screenshots}Confirmação de Negócio/Motivos Acrésc_Descontos
    Fechar janela
    RPA.Windows.Click       Sim

Confirmação de Negócio > Cadastro Tipo de Custos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Confirmação de Negócio/                         Cadastro Tipo de Custos
    Cadastros
    RPA.Windows.Click         Confirmação de Negócio 
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro Tipo de Custos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro Tipo de Custos (1)    ${Caminho_Screenshots}Confirmação de Negócio/Cadastro Tipo de Custos
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Empresas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                         Empresas
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Estabelecimentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                         Estabelecimentos
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Grupo de Usuários
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                         Grupo de Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupo de Usuários
    Fechar janela
    RPA.Windows.Click       Sim

Parâmetros > Usuários
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                         Usuários
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    U
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela
    RPA.Windows.Click       Sim

Encerrar    
    Encerrar tudo