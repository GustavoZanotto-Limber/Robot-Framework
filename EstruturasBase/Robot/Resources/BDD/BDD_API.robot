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

Dado que eu fiz uma venda pela API
    # Implementar a lógica para criar uma venda via API, se necessário
    Log    Venda criada via API 
    ${response}=    Realizar reserva via API
    Finalizar compra via API
    Set Test Variable    ${LB}         ${response.json()['localizador']}
    Set Test Variable    ${idVenda}    ${response.json()['codVenda']}

Dado que eu fiz uma reserva pela API
    Log    Venda criada via API 
    ${response}=    Realizar reserva via API
    Set Test Variable    ${LB}    ${response.json()['localizador']}

#--------------QUANDO--------------

Quando envio a requisição de Listagem
    [Documentation]    Envia a requisição de listagem de vendas
    ${response}=    Get Vendas    ${TOKEN}    2558
    Set Test Variable    ${body_listagem}    ${response.json()}
    Log    ${response}


Quando envio a requisição de Listagem unica
    [Documentation]    Envia a requisição de listagem de uma venda específica
    ${cod_venda}=    Replace String    ${LB}    LB    ${EMPTY}
    ${response}=    Get Venda unica    ${TOKEN}    2558    ${cod_venda}
    Set Test Variable    ${body_listagem}    ${response.json()}
    Log    ${response}


Quando envio a requisição de Cancelamento
    [Documentation]    Envia a requisição de cancelamento de uma venda
    Realizar pedido de cancelamento
    ${response}=    Realizar cancelamento    ${LB}    Teste de cancelamento via API
    Set Test Variable    ${body_cancelamento}    ${response.json()}
    Log    ${response}


#--------------ENTÃO--------------

Então valido o body de resposta
    [Documentation]    Valida o body de resposta da listagem de vendas
    
    ${response}=     Set Variable    ${body_listagem}
    Log    ${response}
    Should Not Be Empty    ${response}    A lista de vendas retornou vazia.
    Log    ${response[-1]}
    Validar elementos do body    ${response[-1]}


Então valido o body de resposta Unico
    [Documentation]    Valida o body de resposta da listagem de vendas
    ${response}=     Set Variable    ${body_listagem}
    Log    ${response}
    Should Not Be Empty    ${response}    A lista de vendas retornou vazia.
    Log    ${response}
    Validar elementos do body Unico   ${response}

Então valido o body de resposta Cancelamento
    [Documentation]    Valida o body de resposta do cancelamento de vendas
    ${response}=     Set Variable    ${body_cancelamento}
    Log    ${response}
    Should Contain    ${response['localizador']}    ${LB}
    Should Contain    ${response}    localizador
    Should Contain    ${response}    statusvenda
    Should Contain    ${response['statusvenda']}    C
