*** Settings ***
Documentation    Smoke Test: CARD
Resource         ../../../Resources/CARD/BDDSmokeCard.robot
Resource         ../../../Resources/CARD/BaseSmokeTestCard.robot
Resource         ../../../Resources/BILHETERIA/BaseKeywordsWeb.robot
Suite Setup      Abrir CARD e logar 
Suite Teardown   Fechar Navegador
Test Teardown    Caso aconteca erro SmokeWeb  ${Caminho_Screenshots}Erros/    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/CARD/Configurações/
${nome_print}

*** Test Cases ***

Estabelecimentos 
    [Tags]        CARD    SmokeTest    Configurações    SmokeCARD
    ${nome_print}=    Set Variable     Estabelecimentos 
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral        9    1
    Então valido o titulo clico em novo    Estabelecimentos    Novo Estabelecimento    estabelecimento    new-or-edit-estabelecimento

Perfis de Venda
    [Tags]        CARD    SmokeTest    Configurações    SmokeCARD
    ${nome_print}=    Set Variable     Perfis de Venda
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral        9    2
    Então valido a tela de Perfil de Venda   

Modos de pagamento
    [Tags]        CARD    SmokeTest    Configurações    SmokeCARD
    ${nome_print}=    Set Variable     Modos de pagamento
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral        9    3
    Então valido o titulo clico em novo    Gerenciamento de Modos de Pagamento    Novo Modo de Pagamento    modo-pagamento    new-or-edit-modo-pagamento

Usuários
    [Tags]        CARD    SmokeTest    Configurações    SmokeCARD
    ${nome_print}=    Set Variable     Usuários
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral        9    4
    Então valido o titulo e clico em novo 2     Gerenciamento de Usuários    Novo Usuário    usuario    new-or-edit-usuario

Webhook
    [Tags]        CARD    SmokeTest    Configurações    SmokeCARD
    ${nome_print}=    Set Variable     Webhook
    Dado que estou na página inicial do CARD
    Quando acesso o menu lateral        9    5
    Então valido o titulo clico em novo    Gerenciamento de Webhooks    Novo Webhook    app-webhook    app-new-or-edit-webhook