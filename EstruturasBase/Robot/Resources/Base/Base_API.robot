*** Settings ***
Documentation    Keywords para automação API com Robot Framework
Resource   ../BDD/BDD_Desktop.robot
Library    RequestsLibrary


*** Variables ***
#URL Base
${BASE_URL}    https://testescard.limbersoftware.com.br
${TOKEN}
#Rotas
${API_LOGIN}    /api/auth
${API_Listagem_Vendas}    /api/vendas

&{headers}    Content-Type=application/json   

${body}

*** Keywords ***

Logar na API
    [Documentation]    Realiza o login na API e retorna o token de autenticação
    [Arguments]    ${username}    ${password}
    &{body}=    Create Dictionary    usuario=${username}    senha=${password}
    ${response}=    POST    url=${BASE_URL}${API_LOGIN}       headers=&{headers}      json=&{body}
    Log    ${response}
    RETURN    ${response.json()['token']}

Get Vendas
    [Documentation]    Realiza a requisição para obter a listagem de vendas
    [Arguments]    ${token}    ${estab}
    &{param}=    Create Dictionary    estabelecDest=${estab}
    &{headers_auth}   Create Dictionary     Content-Type=application/json    Authorization=Bearer ${TOKEN}
    ${response}=    GET    url=${BASE_URL}${API_Listagem_Vendas}     headers=&{headers_auth}    params=&{param}
    Log    ${response}
    RETURN    ${response}

Validar elementos do body
    [Documentation]    Valida os elementos presentes no body da resposta
    [Arguments]    ${response}
    Should Contain    ${response[0]}    localizador
    Should Contain    ${response[0]}    codigo
    Should Contain    ${response[0]}    data_hora
    Should Contain    ${response[0]}    status
    Should Contain    ${response[0]}    idorigem
    Should Contain    ${response[0]}    cod_local_venda
    Should Contain    ${response[0]}    ec_origem
    Should Contain    ${response[0]}    nome_titular
    Should Contain    ${response[0]}    email_titular
    Should Contain    ${response[0]}    total_liquido
    Should Contain    ${response[0]}    pedido_de_cancelamento
    Should Contain    ${response[0]}    quantidade
    Should Contain    ${response[0]}    formas_pag_desc
    Should Contain    ${response[0]}    data
    Should Contain    ${response[0]}    hora
    Should Contain    ${response[0]}    status_desc