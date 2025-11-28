*** Settings ***
Library    RPA.Desktop
Library    RPA.Windows    
Library    OperatingSystem
Library    Process
Library    RPA.Excel.Files
Library    RPA.Excel.Application
Library    String
Library    SeleniumLibrary        screenshot_root_directory=EstruturasBase\\Robot\\ScreenShots\\Selenium
Library    Collections
Library    RPA.PDF
Resource   ../Base/BaseKeywordsCARD.robot
Resource    ../Base/BaseKeywordE-Commerce.robot


*** Variables ***
${URL_Card}=           https://testescard.limbersoftware.com.br/
${URL_E-Commerce}=     https://automacaoonline.testescard.limber.net.br/

*** Keywords ***
    
# ---------------------DADO---------------------
Dado que estou no e-commerce
    [Arguments]    ${nome_bilhete}
    Abro o E-commerce (Online)
    Pesquisar bilhete no e-commerce    ${nome_bilhete}
    Sleep    2s

Dado que vou cadastrar um novo usuario do e-commerce
    Mudar Página                     https://www.invertexto.com/gerador-email-temporario  
    Clicar no Botão           id:copiar
    RPA.Desktop.Press Keys    CTRL    T
    Mudar entre as janelas    1
    Abro o E-commerce (Online) Sem Logar

Dado que existe uma conta registrada com um determinado documento OU telefone
    Ativar validação de cadastro duplicado no E-commerce
    Dado que vou cadastrar um novo usuario do e-commerce
    
Dado que o sistema exige a verificação do e-mail para ativação da conta
    Ativar verificação de e-mail no E-commerce
    Dado que vou cadastrar um novo usuario do e-commerce
    
Dado que o usuário acessa a opção de recuperação de e-mail ou senha
    Dado que vou cadastrar um novo usuario do e-commerce
    Quando Preencho os dados corretamente e confirmar o cadastro
    Sleep    1s
    Element Should Be Visible    xpath:/html/body/div[3]/div/div/mat-snack-bar-container/div/div/div/div/simple-snack-bar/div[1]
    Element Should Contain       xpath:/html/body/app-root/app-home/app-header/mat-toolbar/div/div[2]/div[1]/button[2]/label        Olá, Cadastro Automatizado
    Clicar no Botão              xpath:/html/body/app-root/app-home/app-header/mat-toolbar/div/div[2]/div[1]/button[2]
    Clicar no Botão              xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-my-account-menu/div/button

Dado que o usuário está autenticado em sua conta
    Dado que vou cadastrar um novo usuario do e-commerce
    Quando Preencho os dados corretamente e confirmar o cadastro

Dado que usuário seleciona a opção Fale conosco no e-commerce
    Abro o E-commerce (Online) 
    Clicar no Botão    xpath:/html/body/app-root/app-home/app-header/mat-toolbar/div/div[2]/div[1]/button[2]
    Clicar no Elemento    xpath://a[normalize-space(text())="Fale Conosco"]

# ---------------------Quando---------------------

Quando faço a venda do bilhete
    [Arguments]     ${categoria}    ${qtd_categorias}    ${nome}=${None}  ${tipo_documento}=${None}     ${documento}=${None}    ${data_nascimento}=${None}    ${telefone}=${None}    ${genero}=${None}    ${escolaridade}=${None}    ${pais}=${None}   ${cep}=${None}    ${endereco}=${None}       ${estado}=${None}    
    Selecionar o dia de hoje no calendario
    Adicionar Categoria (Compra E-Commerce)    ${categoria}    ${qtd_categorias}
    Comprar Ingressos
    Preencher dados do visitante (E-Commerce)       ${nome}   ${tipo_documento}    ${documento}   ${data_nascimento}   ${telefone}    ${genero}    ${escolaridade}    ${pais}   ${cep}    ${endereco}      ${estado}    
    Ir Para o Pagamento
    Preencher dados do cartão

Quando Cancelo um dos ingressos
    @{data_e_hora_pagamento}=    Efetuar Pagamento  
    Clicar no Elemento           xpath:/html/body/app-root/app-home/div/main/app-approved-purchase/ec-splash-alert/ec-wrapper/a
    Sleep    5s
    @{data_e_hora_cancelamento}=    Cancelar um ingresso pelo e-commerce    1
    @{data_e_hora_pagamento_e_cancelameto}=    Set Variable    ${data_e_hora_pagamento[0]}   ${data_e_hora_pagamento[1]}   ${data_e_hora_cancelamento[0]}   ${data_e_hora_cancelamento[1]}
    Log    ${data_e_hora_pagamento_e_cancelameto}
    RETURN    @{data_e_hora_pagamento_e_cancelameto}    

Quando Preencho os dados corretamente e confirmar o cadastro
    ${email}=     RPA.Desktop.Get Clipboard Value
    Sleep    2s
    Clicar no Elemento    xpath:/html/body/app-root/app-home/app-header/mat-toolbar/div/div[2]/div[1]/a
    Email login    ${email}
    Preencher dados de um novo cadastro no e-commerce
    Sleep    1s

Quando o usuário tentar cadastrar uma nova conta com o mesmo documento ou telefone
    Quando Preencho os dados corretamente e confirmar o cadastro
    Validar Telefone ja cadastrado e trocar errado
    Clicar no Botão       xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[6]/button
    Sleep    1s

Quando o usuário criar uma nova conta
    ${email}=     RPA.Desktop.Get Clipboard Value
    Sleep    2s
    Clicar no Elemento    xpath:/html/body/app-root/app-home/app-header/mat-toolbar/div/div[2]/div[1]/a
    Email login    ${email}

Quando informar um e-mail válido cadastrado no sistema
    Mudar entre as janelas    1
    Sleep    2s
    RPA.Desktop.Press Keys     Enter
    Clicar no Elemento     xpath:/html/body/app-root/app-home/app-header/mat-toolbar/div/div[2]/div[1]/a
    ${email}=     RPA.Desktop.Get Clipboard Value
    Email login         ${email}
    Clicar no Botão     xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/button[1]
    Clicar no Botão     xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/app-edit-email-dialog/div/div/button[2]
    Conferir Texto      xpath:/html/body/div[3]/div/div/mat-snack-bar-container/div/div/div/div/simple-snack-bar/div[1]     Redefinição de senha enviada com sucesso, por favor confira seu e-mail.

Quando acessar a opção de edição de dados e modificar as informações
    Clicar no Botão              xpath:/html/body/app-root/app-home/app-header/mat-toolbar/div/div[2]/div[1]/button[2]
    Clicar no Elemento           xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-my-account-menu/div/nav/a[1]
    Sleep    1s
    ${email}=                    RPA.Desktop.Get Clipboard Value
    Conferir Texto               xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/div[1]/div/h1    ${email}
    Validar as informações do cadastro
    Alterar as informações do cadastro
    Sleep    1s
    Conferir Texto    xpath:/html/body/div[3]/div/div/mat-snack-bar-container/div/div/div/div/simple-snack-bar/div[1]     Detalhes da conta salvo com sucesso
    RETURN    ${email}

Quando chegar na tela de FAQ
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-contact-us/ec-wrapper/div/section[2]/mat-form-field/div[1]/div/div[2]
    Clicar no Elemento    xpath:/html/body/div[3]/div[2]/div/div/mat-option
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-contact-us/ec-wrapper/div/section[2]/section/mat-accordion/mat-expansion-panel/mat-expansion-panel-header
    Conferir Texto        xpath:/html/body/app-root/app-home/div/main/app-contact-us/ec-wrapper/div/section[2]/section/mat-accordion/mat-expansion-panel/div/div/div/p     FAQ Automação, FAQ Automação 

E posteriormente, na tela de SAC
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-contact-us/ec-wrapper/div/section[2]/section/div/b
    Conferir Texto        xpath:/html/body/app-root/app-home/div/main/app-contact-us/ec-wrapper/div/section[2]/h4    Selecione um assunto e tire suas dúvidas
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-contact-us/ec-wrapper/div/section[2]/mat-form-field[2]/div[1]/div/div[2]/input     Teste Automatizado
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-contact-us/ec-wrapper/div/section[2]/mat-form-field[3]/div[1]/div/div[2]/input    automacao@limbersoftware.com.br
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-contact-us/ec-wrapper/div/section[2]/mat-form-field[4]/div[1]/div/div[2]/textarea    Esta é uma mensagem enviada pelo teste automatizado para validar o Fale Conosco.
    Clicar no Botão       xpath:/html/body/app-root/app-home/div/main/app-contact-us/ec-wrapper/div/section[2]/div/button
    ${tempo}=             Get Time
    ${tempo_ajustado}=    Pegar Hora atual    ${tempo}
    @{ano_mes_dia}=  Get Time	year month day 
    ${data_formatada}=    Formatar Data Para DD/MM/AAAA    @{ano_mes_dia}
    Log    ${data_formatada}
    @{data_e_hora}=    Set Variable    ${data_formatada}     ${tempo_ajustado}
    Sleep    1s
    Conferir Texto        xpath:/html/body/app-root/app-home/div/main/app-contact-us/ec-wrapper/div/div/ec-splash-alert/ec-wrapper/div[2]/h1    Chamado realizado com sucesso!
    RETURN    @{data_e_hora}

Quando faço a venda do bilhete com multiplas categorias
    [Arguments]     ${categoria}    ${qtd_categorias}       ${categoria2}    ${qtd_categorias2}
    Selecionar o dia de hoje no calendario
    Adicionar Categoria (Compra E-Commerce)    ${categoria}    ${qtd_categorias}
    Adicionar Categoria (Compra E-Commerce)    ${categoria2}    ${qtd_categorias2}
    Comprar Ingressos
    Preencher dados do visitante (E-Commerce)       Visitante Automação 1   3    123456789   01012001   5546999999999    1    2    Brasil   85509432       
    Preencher dados do visitante (E-Commerce)       Visitante Automação 2   3    987654321   02022002   5546888888888    2    1    Brasil   85509432    numero_visitante=2
    Sleep    2s
    Ir Para o Pagamento
    Preencher dados do cartão

# ---------------------Então---------------------

Então valido a impressão no e-commerce
    [Arguments]    ${caminho}    ${nome_Arquivo_com_o_tipo}    ${caminho_screenshots}  
    @{data_e_hora}=    Efetuar Pagamento  
    Clicar no Elemento           xpath:/html/body/app-root/app-home/div/main/app-approved-purchase/ec-splash-alert/ec-wrapper/a
    Sleep    1s
    ${LB}=             Salvar a impressão do bilhete através do e-commerce    2    ${caminho}    Impressão_E-Commerce
    Abrir arquivo      ${caminho}   ${nome_Arquivo_com_o_tipo} 
    Sleep    1s
    Validar impressão do bilhete    ${caminho}    Impressão_E-Commerce   ${caminho_screenshots}    Impressão_E-Commerce.pdf - WPS Office      ${LB}     @{data_e_hora}
    RPA.Desktop.Press Keys    Alt    F4   
    
Então valido a impressão na plataforma CARD
    [Arguments]    ${caminho}    ${nome_Arquivo_com_o_tipo}    ${caminho_screenshots}
    @{data_e_hora}=    Efetuar Pagamento  
    ${LB}=             Pegar LB
    Sleep    1s
    Mudar Página    https://testescard.limbersoftware.com.br/#/pages/gerenciamento/vendas
    Sleep    1s
    Filtrar dropdown    Bilheteria Automação (Online)       xpath:/html/body/app-root/app-pages/div/div/div/vendas/div/div[2]/filtros-vendas/form/mat-form-field[5]
    Pesquisar LB no gerenciamento de vendas    ${LB}
    Clicar no Elemento    xpath:/html/body/app-root/app-pages/div/div/div/vendas/div/div[3]/div/div/table/tbody/tr[1]/td[3]
    Criar aquivo da Impressão CARD     ${caminho}  
    Sleep    1s
    Abrir arquivo      ${caminho}   ${nome_Arquivo_com_o_tipo} 
    Validar impressão do bilhete (Via CARD)        ${caminho}   Impressão_Celular_CARD     ${caminho_screenshots}    Impressão_Celular_CARD.pdf - WPS Office     ${LB}       @{data_e_hora}
    RPA.Desktop.Press Keys    Alt    F4 

Então valido a impressão com itens Cancelados Parcial
    [Arguments]    ${caminho}    ${nome_Arquivo_com_o_tipo}    ${caminho_screenshots}     @{data_e_hora}
    ${LB}=             Salvar a impressão do bilhete através do e-commerce    1    ${caminho}    Impressão_Cancelada
    Abrir arquivo                                    ${caminho}   ${nome_Arquivo_com_o_tipo} 
    Validar impressão do bilhete cancelado           ${caminho}    Impressão_Cancelada       ${caminho_screenshots}    Impressão_Cancelada.pdf - WPS Office      ${LB}  FALSE    @{data_e_hora}
    RPA.Desktop.Press Keys    Alt    F4

Então valido a impressão com cancelamento total
    [Arguments]    ${caminho}      ${caminho_screenshots}    @{data_e_hora_pag}
    SeleniumLibrary.Go Back
    @{data_e_hora}=    Cancelar um ingresso pelo e-commerce    1
    @{data_e_hora_pagamento_e_cancelameto}=    Set Variable    ${data_e_hora_pag[0]}   ${data_e_hora_pag[1]}   ${data_e_hora[0]}   ${data_e_hora[1]}
    ${LB}=             Salvar a impressão do bilhete através do e-commerce    1    ${caminho}    Impressão_Cancelada_total
    Abrir arquivo                                    ${caminho}   Impressão_Cancelada_total.pdf
    Validar impressão do bilhete cancelado           ${caminho}    Impressão_Cancelada_total       ${caminho_screenshots}    Impressão_Cancelada_total.pdf - WPS Office      ${LB}    TRUE     @{data_e_hora_pagamento_e_cancelameto}    
    RPA.Desktop.Press Keys    Alt    F4 

Então valido o layout da impressão
    [Arguments]    ${caminho}    ${caminho_screenshots}
    Efetuar Pagamento
    Clicar no Elemento           xpath:/html/body/app-root/app-home/div/main/app-approved-purchase/ec-splash-alert/ec-wrapper/a
    Sleep    1s
    Salvar a impressão do bilhete através do e-commerce    1    ${caminho}    Impressão_Layout
    Abrir arquivo        ${caminho}        Impressão_Layout.pdf
    Validar o Layout                                       ${caminho}    Impressão_Layout       ${caminho_screenshots}    Impressão_Layout.pdf - WPS Office
    ALT F4

Então valido se o cadastro foi realizado com sucesso
    Sleep    1s
    Element Should Be Visible    xpath:/html/body/div[3]/div/div/mat-snack-bar-container/div/div/div/div/simple-snack-bar/div[1]
    Element Should Contain       xpath:/html/body/app-root/app-home/app-header/mat-toolbar/div/div[2]/div[1]/button[2]/label        Olá, Cadastro Automatizado

    Clicar no Botão              xpath:/html/body/app-root/app-home/app-header/mat-toolbar/div/div[2]/div[1]/button[2]
    Clicar no Botão              xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-my-account-menu/div/button
    Fechar Aba E Voltar Para Principal    0

Então o sistema deve exibir uma mensagem informando o documento ou telefone já está cadastrado
    Validar Documento ja cadastrado e trocar errado
    Clicar no Botão       xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[6]/button
    Validar Telefone ja cadastrado e trocar errado 
    Fechar Aba E Voltar Para Principal    0

Então ele deve receber um e-mail de verificação
    Wait Until Element Is Visible    xpath:/html/body/app-root/app-home/div/main/app-token/ec-wrapper/div/p
    Element Should Contain           xpath:/html/body/app-root/app-home/div/main/app-token/ec-wrapper/div/p     Para garantir que esse e-mail é seu, enviamos um código de acesso a ele 
    Mudar entre as janelas           0
    Wait Until Element Is Visible    xpath:/html/body/main/div[1]/div[3]/div[1]/table/tbody/tr[1]/td[1]    timeout=30s
    Clicar no Elemento               xpath:/html/body/main/div[1]/div[3]/div[1]/table/tbody/tr[1]

E a conta só deve ser ativada após a verificação do e-mail
    Sleep    3s
    ${texto_codigo}=           Pegar Texto        xpath:/html/body/main/div[1]/div[4]/div[2]/div[2]/div/span
    ${codigo}=                 Split String      ${texto_codigo}    é
    Log    ${codigo}
    Mudar entre as janelas           1
    Wait Until Element Is Visible    xpath:/html/body/app-root/app-home/div/main/app-token/ec-wrapper/div/form/mat-form-field/div[1]/div/div[2]/input
    Inserir Texto                    xpath:/html/body/app-root/app-home/div/main/app-token/ec-wrapper/div/form/mat-form-field/div[1]/div/div[2]/input    ${codigo[1]}
    Clicar no Botão                  xpath:/html/body/app-root/app-home/div/main/app-token/ec-wrapper/div/form/div/button[1]      
    Preencher dados de um novo cadastro no e-commerce
    Então valido se o cadastro foi realizado com sucesso
    Sleep    1s

Então o sistema deve enviar um e-mail com as instruções de recuperação
    Mudar entre as janelas    0
    Clicar no Elemento    xpath:/html/body/main/div[1]/div[3]/div[1]/table/tbody/tr[1]
    Clicar no Elemento    xpath:/html/body/main/div[1]/div[4]/div[2]/div[2]/div
    Repetidor de teclas   tab    2
    Sleep    1s
    RPA.Desktop.Press Keys    Enter
    Sleep    1s
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-redefinir-senha/ec-wrapper/form/mat-form-field[1]/div[1]/div/div[2]/input    Redefinido123@
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-redefinir-senha/ec-wrapper/form/mat-form-field[2]/div[1]/div/div[2]/input    Redefinido123@
    Clicar no Botão       xpath:/html/body/app-root/app-home/div/main/app-redefinir-senha/ec-wrapper/form/div/button
    Conferir Texto        xpath:/html/body/app-root/app-home/div/main/app-change-password-sucess/ec-splash-alert/ec-wrapper/div[2]/h1    Senha alterada com sucesso
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-change-password-sucess/ec-splash-alert/ec-wrapper/a
    Clicar no Elemento    id:accountButton
    ${email}=     RPA.Desktop.Get Clipboard Value
    Input Text    xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/mat-form-field/div[1]/div/div[2]/input   ${email}
    SeleniumLibrary.Press Keys    //span[contains(text(), 'Continuar')]   \ue00c
    Sleep    1.5s
    Input Text    xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/mat-form-field/div[1]/div/div[2]/input   Redefinido123@
    Sleep    1.5s
    SeleniumLibrary.Press Keys    //span[contains(text(), 'Entrar')]    \ue00c
    Então valido se o cadastro foi realizado com sucesso
    Fechar Aba E Voltar Para Principal    1
    
Então o sistema deve salvar as alterações corretamente
    [Arguments]    ${email}
    Clicar no Botão              xpath:/html/body/app-root/app-home/app-header/mat-toolbar/div/div[2]/div[1]/button[2]
    Clicar no Elemento           xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-my-account-menu/div/nav/a[1]
    Sleep    1s
    Conferir Texto               xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/div[1]/div/h1    ${email}
    Validar as informações do cadastro    Cadastro Automatizado Editado    23/08/1906    55+ 98 88888-8888    12345678910    

Então as perguntas configuradas devem aparecer corretamente na tela de FAQ
    Element Should Contain    xpath:/html/body/app-root/app-home/div/main/app-faq/ec-wrapper/mat-accordion/mat-expansion-panel[1]/mat-expansion-panel-header/span[1]/mat-panel-title    Como faço para cancelar minha compra?
    Element Should Contain    xpath:/html/body/app-root/app-home/div/main/app-faq/ec-wrapper/mat-accordion/mat-expansion-panel[2]/mat-expansion-panel-header/span[1]/mat-panel-title    Como visualizar meu ingresso?

E os campos de coleta de mensagem do consumidor devem coletar os dados e enviar ao Card
    Wait Until Element Is Visible    xpath:/html/body/div[3]/div/div/mat-snack-bar-container/div/div/div/div/simple-snack-bar/div[1]
    Element Should Contain           xpath:/html/body/div[3]/div/div/mat-snack-bar-container/div/div/div/div/simple-snack-bar/div[1]    Mensagem enviada com sucesso!
    Fechar Aba E Voltar Para Principal    0

Então as perguntas configuradas devem aparecer corretamente na tela de FAQ e SAC
    [Arguments]    @{data_e_hora}
    Mudar Página              https://testescard.limbersoftware.com.br/#/pages/sac/chamados    
    Clicar no Elemento        xpath:/html/body/app-root/app-pages/div/div/div/app-sac/div/mat-card/div/table/tbody/tr/td[9]
    Mudar para a nova janela
    Sleep    2s
    ${data_e_hora_sac}=    Pegar valor de um input    xpath:/html/body/app-root/app-pages/div/div/div/app-view-sac/div[1]/mat-card/mat-form-field[5]/div[1]/div/div[2]/input
    Log    ${data_e_hora_sac}
    Should Contain        ${data_e_hora_sac}    ${data_e_hora[0]}
    Should Contain    ${data_e_hora_sac}    ${data_e_hora[1]}    
    ${cliente}=    Pegar valor de um input    xpath:/html/body/app-root/app-pages/div/div/div/app-view-sac/div[1]/mat-card/mat-form-field[6]/div[1]/div/div[2]/input
    Should Be Equal    Teste Automatizado - automacao@limbersoftware.com.br   ${cliente}
    Conferir Texto    xpath:/html/body/app-root/app-pages/div/div/div/app-view-sac/div[1]/mat-card/div[1]/mat-chip-listbox/div/mat-chip/span[2]/span/span     Gustavozanotto119@gmail.com 
    ${mensagem}=    Pegar valor de um input    xpath:/html/body/app-root/app-pages/div/div/div/app-view-sac/div[1]/mat-card/div[2]/mat-form-field/div[1]/div/div[2]/textarea
    Should Be Equal    Esta é uma mensagem enviada pelo teste automatizado para validar o Fale Conosco.    ${mensagem}

Então realizo a remarcação via E-Commerce
    Efetuar Pagamento
    Visualizar Ingressos
    Alterar datas ou horários
    Remarcar data do ingresso    
    Alterar dados do visitante
    RPA.Desktop.Press Keys    F5
    Sleep    1s
    Validar informações do visitante

Então realizo a remarcação via CARD
    Mudar Página    https://testescard.limbersoftware.com.br/#/pages/gerenciamento/vendas
    Filtrar dropdown      Bilheteria Automacao (Online)    xpath:/html/body/app-root/app-pages/div/div/div/vendas/div/div[2]/filtros-vendas/form/mat-form-field[5]/div[1]/div/div[2]
    