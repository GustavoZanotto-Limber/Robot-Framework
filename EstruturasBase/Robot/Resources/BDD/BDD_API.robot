*** Settings ***
Resource   ../Base/Base_API.robot

*** Variables ***

${TOKEN}

*** Keywords ***

#--------------DADO--------------
Dado que eu loguei na API
    ${token}=    Logar na API    intautomacao@limber.com    Automacao123@
    Set Test Variable    ${TOKEN}    ${token}
    Log    ${TOKEN}

#--------------QUANDO--------------

Quando envio a requisição de Listagem
    [Documentation]    Envia a requisição de listagem de vendas
    ${response}=    Get Vendas    ${TOKEN}    2558
    Set Test Variable    ${body_listagem}    ${response.json()}
    Log    ${response}

#--------------ENTÃO--------------

Então valido o body de resposta
    [Documentation]    Valida o body de resposta da listagem de vendas
    ${response}=     Set Variable    ${body_listagem}
    Log    ${response}
    Log    ${response[0]}
    Validar elementos do body    ${response[0]}

