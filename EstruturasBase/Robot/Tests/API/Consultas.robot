*** Settings ***
Documentation  Teste API
Resource       ../../Resources/Base/Base_API.robot
Resource       ../../Resources/BDD/BDD_API.robot
Suite Setup    Logar na API
*** Variables ***

${TOKEN}

*** Keywords ***


*** Test Cases ***

Listagem de Vendas
    [Documentation]    Testa o login na API com credenciais válidas
    [Tags]    API    Consultas
    Dado que eu fiz uma venda pela API
    Quando envio a requisição de Listagem
    Então valido o body de resposta 

Listagem de uma Venda específica
    [Documentation]    Testa a listagem de uma venda específica
    [Tags]    API    Consultas
    Dado que eu fiz uma venda pela API
    Quando envio a requisição de Listagem unica
    Então valido o body de resposta Unico  

Cancelamento de vendas
    [Documentation]    Testa o cancelamento de uma venda
    [Tags]    API    Consultas
    Dado que eu fiz uma venda pela API
    Quando envio a requisição de Cancelamento
    Então valido o body de resposta Cancelamento