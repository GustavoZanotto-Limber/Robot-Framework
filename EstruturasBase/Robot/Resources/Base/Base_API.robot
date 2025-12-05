*** Settings ***
Documentation    Keywords para automação API com Robot Framework
Resource   ../BDD/BDD_Desktop.robot
Library    RequestsLibrary
Library    Collections


*** Variables ***
#URL Base
${BASE_URL}    https://testescard.limbersoftware.com.br
${TOKEN}

#Rotas
${API_LOGIN}                        /api/auth
${API_Listagem_Vendas}              /api/vendas
${API_Reservas}                     /api/cross/integra/venda
${API_Finalizar_Compra}             /api/cross/confirmacao
${API_Inutilização}                 /api/cross/inutilizacao
${API_Cancelamento}                 /api/cross/cancelamento
${API_Consulta_Cancelamento}        /api/vendas/venda/cancelamentos
${API_pedido_cancelamento}          /api/cross/pedidoCancelamento


&{headers}    Content-Type=application/json   


*** Keywords ***

Logar na API
    [Documentation]    Realiza o login na API e retorna o token de autenticação
    [Arguments]    ${username}=intautomacao@limber.com    ${password}=Automacao123@
    &{body}=    Create Dictionary    usuario=${username}    senha=${password}
    ${response}=    POST    url=${BASE_URL}${API_LOGIN}       headers=&{headers}      json=&{body}
    Log    ${response.json()}
    Set Suite Variable    ${TOKEN}    ${response.json()['token']}
    RETURN    ${response.json()['token']}

Get Vendas
    [Documentation]    Realiza a requisição para obter a listagem de vendas
    [Arguments]    ${token}    ${estab}    
    &{param}=    Create Dictionary    estabelecDest=${estab}
    &{headers_auth}   Create Dictionary    Content-Type=application/json    Authorization=Bearer ${TOKEN}
    ${response}=    GET    url=${BASE_URL}${API_Listagem_Vendas}     headers=&{headers_auth}    params=&{param}
    Log    ${response}
    RETURN    ${response}

Get Venda Unica
    [Documentation]    Realiza a requisição para obter a listagem de vendas
    [Arguments]    ${token}    ${estab}    ${venda_id}
    &{headers_auth}   Create Dictionary    Content-Type=application/json    Authorization=Bearer ${TOKEN}
    ${response}=    GET    url=${BASE_URL}${API_Listagem_Vendas}/venda/${venda_id}     headers=&{headers_auth}   
    Log    ${response}
    RETURN    ${response}

Validar elementos do body
    [Documentation]    Valida os elementos presentes no body da resposta
    [Arguments]    ${response}
    Should Contain    ${response}    localizador
    Should Contain    ${response}    codigo
    Should Contain    ${response}    data_hora
    Should Contain    ${response}    status
    Should Contain    ${response}    idorigem
    Should Contain    ${response}    cod_local_venda
    Should Contain    ${response}    ec_origem
    Should Contain    ${response}    nome_titular
    Should Contain    ${response}    email_titular
    Should Contain    ${response}    total_liquido
    Should Contain    ${response}    pedido_de_cancelamento
    Should Contain    ${response}    quantidade
    Should Contain    ${response}    formas_pag_desc
    Should Contain    ${response}    data
    Should Contain    ${response}    hora
    Should Contain    ${response}    status_desc

Validar elementos do body Unico
    [Documentation]    Valida os elementos presentes no body da resposta
    [Arguments]    ${response}
    Should Contain    ${response}    localizador
    Should Contain    ${response}    codigo
    Should Contain    ${response}    data_hora
    Should Contain    ${response}    status
    Should Contain    ${response}    idorigem
    Should Contain    ${response}    local_venda
    Should Contain    ${response}    ec_origem
    Should Contain    ${response}    nome_titular
    Should Contain    ${response}    email_titular
    Should Contain    ${response}    total_liquido
    Should Contain    ${response}    pedido_de_cancelamento
    Should Contain    ${response}    quantidade
    Should Contain    ${response}    siglaIdioma
    Should Contain    ${response}    data
    Should Contain    ${response}    hora
    Should Contain    ${response}    status_desc

Realizar reserva via API
    [Documentation]    Realiza uma reserva via API 
    [Arguments]       ${sku}=6700   ${idcategoria}=4651    ${idareceita}=3785     ${valor_unitario}=10    ${quantidade}=1
    &{headers_auth}   Create Dictionary    Content-Type=application/json    Authorization=Bearer ${TOKEN}
    ${data_atual}=    Get Current Date    result_format=%Y-%m-%d
    ${body_string}=    Catenate    SEPARATOR=
    ...    {
    ...    "dataHora": "${data_atual}T15:00:00Z",
    ...    "totalLiquido": 10,
    ...    "idParceiro": 2577,
    ...    "pontoVenda": "1",
    ...    "usuarioVenda": "Automação",
    ...    "meioVenda": "WEB",
    ...    "ingressos": [
    ...        {
    ...            "seq": 1,
    ...            "idPais": 1,
    ...            "uf": "PR",
    ...            "municipio": "Pato Branco",
    ...            "CEP": 85,
    ...            "IBGE": null,
    ...            "sku": ${sku},
    ...            "idCategoria": ${idcategoria},
    ...            "valorUnitario": ${valor_unitario},
    ...            "nomeVisitante": "Zanotto",
    ...            "docVisitante": "123456",
    ...            "emailVisitante": "zanotto@email",
    ...            "contribFundo": "N",
    ...            "tripulanteCodigo": null,
    ...            "qrCode": null,
    ...            "descricaoVenda": null,
    ...            "moradorTipoDoc": null,
    ...            "receitas": [
    ...                {
    ...                    "idReceita": ${idareceita},
    ...                    "valor": ${valor_unitario},
    ...                    "dataVisita": "${data_atual}",
    ...                    "localEmbarque": null,
    ...                    "temporada": 1,
    ...                    "horarioStr": "06:00-23:59",
    ...                    "progHorario": ${sku},
    ...                    "progSeq": 1
    ...                }
    ...            ]
    ...        }
    ...      ]
    ...    }
    ${json_body}=    To Json    ${body_string}
    ${response}    POST    url=${BASE_URL}${API_Reservas}      headers=&{headers_auth}     json=${json_body}
    Log    Reserva realizada via API 
    Log    ${response.json()}
    Set Test Variable    ${LB}          ${response.json()['localizador']}
    Set Test Variable    ${idVenda}     ${response.json()['codVenda']}
    RETURN    ${response}
    

Finalizar compra via API
    [Documentation]    Finaliza a compra via API 
    [Arguments]          ${forma_pag}=1   ${parcelas}=1
    &{headers_auth}   Create Dictionary    Content-Type=application/json    Authorization=Bearer ${TOKEN}
    ${body_string}=    Catenate    SEPARATOR=
    ...    {
    ...  "localizador": "${LB}",
    ...  "idParceiro": 2577,
    ...  "formaPag": ${forma_pag},
    ...  "cartaoBandeira": "dsadadsdada",
    ...  "cartaoNSU": 1,
    ...  "cartaoAutorizacao": "123",
    ...  "parcelas": ${parcelas},
    ...  "comprovantepagamento": "string",
    ...  "dataHoraAutorizacao": "2019-08-24T14:15:22Z",
    ...  "cartaotipo": "C"
    ...  }
    ${json_body}=    To Json    ${body_string}
    ${response}    POST    url=${BASE_URL}${API_Finalizar_Compra}      headers=&{headers_auth}     json=${json_body}
    RETURN    ${response}
    Log    Compra finalizada via API

Realizar pedido de cancelamento
    [Documentation]    Realiza o pedido de cancelamento via API  
    &{headers_auth}   Create Dictionary    Content-Type=application/json    Authorization=Bearer ${TOKEN}
    ${body}=    Catenate    SEPARATOR=    
    ...    {
    ...    "motivo": "Teste de cancelamento via API",
    ...    "itens": [{
    ...           "sequencia": 1
    ...    }],
    ...    "gera_credito": false,
    ...    "pagamentos":[
    ...    {
    ...        "sequencia": 1
    ...    }
    ...    ]
    ...    }
    ${json_body}=    To Json    ${body}
    ${response}=    POST    url=${BASE_URL}${API_pedido_cancelamento}/${idVenda}     headers=&{headers_auth}       json=${json_body}
    Log    ${response}
    RETURN    ${response}
            

    
Realizar cancelamento
    [Documentation]    Realiza o cancelamento de uma venda via API 
    [Arguments]        ${LB}    ${motivo_cancelamento}=Teste de cancelamento via API    
    &{headers_auth}   Create Dictionary    Content-Type=application/json    Authorization=Bearer ${TOKEN}
    ${body}=    Catenate    SEPARATOR=    
    ...    {
    ...    "localizador": "${LB}", 
    ...    "idParceiro": 2577,    
    ...    "motivoCancelamento": "${motivo_cancelamento}",
    ...    "itens":{
    ...           "sequencia": 0  
    ...        }
    ...    }
    ${json_body}=    To Json    ${body}
    ${response}=    POST    url=${BASE_URL}${API_Cancelamento}/${idVenda}     headers=&{headers_auth}       json=${json_body}
    Log    ${response}
    RETURN    ${response}