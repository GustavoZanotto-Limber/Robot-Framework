*** Settings ***
Documentation     Testes regressivos: Consumidor Final
Resource          ../../../Resources/Base/BaseKeywordsCARD.robot
Resource          ../../../Resources/BDD/BDDKeywordsWeb.robot
Resource          ../../../Resources/BDD/BDDRegressivosCARD.robot
Suite Setup       Abrir CARD e logar
Test Teardown     Caso aconteca erro WEB    ${Caminho_Screenshots}    ${nome_print}    

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/Testes Regressivos/CARD/LB-27 Consumidor Final/ 
${Caminho_arquivos}
${nome_print}

*** Keywords ***

Encerrar cenario 2
    [Arguments]    ${nome_print}
    Caso aconteca erro WEB    ${Caminho_Screenshots}    ${nome_print} 
    Desativar validação de cadastro duplicado no E-commerce

Encerrar cenario 3
    [Arguments]    ${nome_print}
    Caso aconteca erro WEB    ${Caminho_Screenshots}    ${nome_print} 
    Desativar verificação de e-mail no E-commerce

*** Test Cases ***

# Cenário 1: Cadastro de uma nova conta
#     ${nome_print}=    Set Variable     Cadastro de uma nova conta
#     [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-27
#     Dado que vou cadastrar um novo usuario do e-commerce
#     Quando Preencho os dados corretamente e confirmar o cadastro
#     Então valido se o cadastro foi realizado com sucesso

# Cenário 2: Cadastros com dados ja existentes
#     [Teardown]    Encerrar cenario 2     ${nome_print}   
#     ${nome_print}=    Set Variable     Cadastros com dados ja existentes
#     [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-27
#     Dado que existe uma conta registrada com um determinado documento OU telefone
#     Quando o usuário tentar cadastrar uma nova conta com o mesmo documento ou telefone
#     Então o sistema deve exibir uma mensagem informando o documento ou telefone já está cadastrado

Cenário 3: Verificação obrigatória de e-mail
    [Teardown]    Encerrar cenario 3     ${nome_print}
    ${nome_print}=    Set Variable     Verificação obrigatória de e-mail
    [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-27
    Dado que o sistema exige a verificação do e-mail para ativação da conta
    Quando o usuário criar uma nova conta
    Então ele deve receber um e-mail de verificação
    E a conta só deve ser ativada após a verificação do e-mail

Cenário 4: Recuperação de e-mail e senha
    ${nome_print}=    Set Variable     Recuperação de e-mail e senha
    [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-27
    Dado que o usuário acessa a opção de recuperação de e-mail ou senha
    Quando informar um e-mail válido cadastrado no sistema
    Então o sistema deve enviar um e-mail com as instruções de recuperação

Cenário 5: Alteração de dados em 'Minha Conta'
    ${nome_print}=    Set Variable     Alteração de dados em 'Minha Conta'
    [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-27
    Dado que o usuário está autenticado em sua conta
    ${email}=    Quando acessar a opção de edição de dados e modificar as informações
    Então o sistema deve salvar as alterações corretamente    ${email}

Cenário 6: Fale conosco
    ${nome_print}=    Set Variable     Fale conosco
    [Tags]    Testes_Funcionais    CARD    Regressivos_CARD    LB-27
    Dado que usuário seleciona a opção Fale conosco no e-commerce
    Quando chegar na tela de FAQ
    @{data_e_hora}=    E posteriormente, na tela de SAC
    Então as perguntas configuradas devem aparecer corretamente na tela de FAQ e SAC    @{data_e_hora}

#Cenario 7 necessita de revisão do passo a passo para automação, a tela de celulares e tablets é mais complexa a realização dos testes
#O teste que pode ser realizado é apenas o de validação de redirecionamento para a página correta ao clicar no banner
