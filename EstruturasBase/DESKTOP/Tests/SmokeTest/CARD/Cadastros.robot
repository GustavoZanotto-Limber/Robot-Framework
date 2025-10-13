*** Settings ***
Documentation    Smoke Test: CARD
Resource         ../../../Resources/BaseKeywordsWeb.robot
Resource         ../../../Resources/BDDKeywordsWeb.robot
Resource         ../../../Resources/SmokeCard/BDDSmokeCard.robot
Resource         ../../../Resources/SmokeCard/BaseSmokeTestCard.robot
Suite Setup      Abrir CARD e logar 
Suite Teardown   Fechar Navegador
Test Teardown    Caso aconteca erro SmokeWeb  ${Caminho_Screenshots}Erros/    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/CARD/Cadastros/
${nome_print}

*** Test Cases ***

Bilhetes
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Bilhetes
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    1
    Então valido o titulo clico em novo    Gerenciamento de Bilhetes    Novo Bilhete    lista-bilhetes    new-or-edit-bilhete

Grupo de Bilhetes
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Grupo de Bilhetes
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    2
    Então valido o titulo clico em novo    Grupos de bilhetes    Novo Grupo    app-grupo    ng-component

Grupos de Pré-Vendas
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Grupos de Pré-Vendas
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    3
    Então valido o titulo clico em novo    Gerenciamento de Grupos de Pré-Venda    Novo Grupo de Pré-Venda    app-grupo-pre-venda    app-new-or-edit-grupo-pre-venda

Grupos de Usuários
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Grupos de Usuários
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    4
    Então valido o titulo clico em novo    Gerenciamento de Grupos de Usuário    Novo Grupo de Usuário    app-grupo-usuario    app-new-or-edit-grupo-usuario

Categorias
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Categorias
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    5
    Então valido o titulo e clico em novo 2     Gerenciamento de Categorias    Novo Categoria    categoria    new-or-edit-categoria

Grupos de Categorias
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Grupos de Categorias
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    6
    Então valido o titulo clico em novo    Grupos de categorias    Novo Grupo    app-grupo-categoria    ng-component

Receitas
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Receitas
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    7
    Então valido o titulo clico em novo    Gerenciamento de Receitas    Nova Receita    receita    new-or-edit-receita

Termo de Aceite
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Termo de Aceite
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    8
    Então valido o titulo clico em novo    Gerenciamento de Termos de Aceite    Novo Termo de Aceite    termos-aceite    neworedittermoaceite

Texto de E-mail
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Texto de E-mail
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    9
    Então valido o titulo clico em novo    Gerenciamento de Texto de E-mail    Novo Texto de E-mail    textos-email    neworedittextoemail

SAC's
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     SAC's
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    10
    Então valido o titulo e clico em novo 2   Gerenciamento de SAC's    Novo SAC    app-sac    app-new-or-edit-sac

Credenciados
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Credenciados
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    11
    Então valido o titulo clico em novo    Gerenciamento de Credenciados    Novo Credenciado    app-credenciado    app-new-or-edit-credenciado

FAQ's
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     FAQ's
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    12
    Então valido o titulo clico em novo    Gerenciamento de FAQ's    Novo FAQ    app-faq    app-new-or-edit-faq
    
Tags
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Tags
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    13
    Então valido o titulo das TAG clico em novo    

Blocos de Texto
    [Tags]        CARD    SmokeTest    Cadastros
    ${nome_print}=    Set Variable     Blocos de Texto
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    14
    Então valido o titulo clico em novo    Gerenciamento de Blocos de Texto    Novo Bloco de Texto    app-bloco-texto    app-new-or-edit-bloco-texto

Envios de E-mails
    [Tags]        CARD    SmokeTest    Cadastros    
    ${nome_print}=    Set Variable     Envios de E-mails
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    15
    Então valido o titulo clico em novo    Gerenciamento de Envios de E-mails    Novo envio de e-mails    app-envio-de-emails    app-new-or-edit-envio-de-email

Relatórios V2
    [Tags]        CARD    SmokeTest    Cadastros    
    ${nome_print}=    Set Variable     Relatórios V2
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    16
    Então valido o titulo clico em novo    Gerenciamento de Relatórios    Novo Relatório V2    app-relatorios-v2    app-new-or-edit-relatorio-v2

Agendamentos WhatsApp
    [Tags]        CARD    SmokeTest    Cadastros    
    ${nome_print}=    Set Variable     Agendamentos WhatsApp
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    17
    Então valido o titulo clico em novo    Gerenciamento de Agendamentos    Novo Agendamento    app-agendamentos-wpp    app-new-or-edit-agendamento-wpp

Metas
    [Tags]        CARD    SmokeTest    Cadastros    
    ${nome_print}=    Set Variable     Metas    
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral    4    18
    Então valido o a pagina de metas      
    