*** Settings ***
Documentation    Teste API
Resource    ../../Resources/Base/Base_API.robot
Resource    ../../Resources/BDD/BDD_API.robot

*** Variables ***

${TOKEN}

*** Keywords ***


*** Test Cases ***

Listagem de Vendas
    [Documentation]    Testa o login na API com credenciais válidas
    [Tags]    API    Login
    Dado que eu loguei na API
    Quando envio a requisição de Listagem
    Então valido o body de resposta    
