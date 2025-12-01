*** Settings ***
Documentation    Keywords para automação WEB com Robot Framework e Selenium
Library    OperatingSystem
Library    Process
Library    RPA.Excel.Files
Library    RPA.Excel.Application
Library    String
Library    Collections
Library    RPA.PDF
Library    SeleniumLibrary    screenshot_root_directory=EstruturasBase\\Robot\\ScreenShots\\Selenium
Library    RPA.Desktop
Resource    BaseKeywordsDesktop.robot
Resource    ../BDD/BDDKeywordsDesktop.robot


*** Keywords ***

Abro o E-commerce (Integrada)         
    Mudar Página              https://automacao.testescard.limber.net.br/
    Sleep                     2s
    Logar no e-commerce

Abro o E-commerce (Online)  
    Mudar Página                     https://automacaoonline.testescard.limber.net.br/
    Sleep                     2s
    Logar no e-commerce

Abro o E-commerce (Online) Sem Logar
    Mudar Página                     https://automacaoonline.testescard.limber.net.br/
    Sleep                     2s
      
Email login
    [Arguments]    ${email}
    Inserir Texto             xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/mat-form-field/div[1]/div/div[2]/input     ${email}
    Clicar no Botão           xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/button

Logar no e-commerce    
    ${logado}=    Run Keyword and ignore error    Run Keyword and Return Status    Clicar no Elemento        id:accountButton
    Sleep    2s
    Log    ${logado[1]}
    IF    ${logado[1]}
        # Email Login    gustavozanotto119@gmail.com
        # Inserir Texto             xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/mat-form-field/div[1]/div/div[2]/input    g
        # Sleep    0.2s
        # RPA.Desktop.Press Keys    u
        # Sleep    0.4s
        # RPA.Desktop.Press Keys    s
        # Sleep    0.1s
        # RPA.Desktop.Press Keys    t
        # Sleep    0.3s
        # RPA.Desktop.Press Keys    a
        # Sleep    0.1s
        # RPA.Desktop.Press Keys    v
        # Sleep    0.5s
        # RPA.Desktop.Press Keys    o
        # Sleep    0.1s
        # RPA.Desktop.Press Keys    z
        # Sleep    0.3s
        # RPA.Desktop.Press Keys    a
        # Sleep    0.1s
        # RPA.Desktop.Press Keys    n
        # Sleep    0.2s
        # RPA.Desktop.Press Keys    o
        # Sleep    0.2s
        # RPA.Desktop.Press Keys    t
        # Sleep    0.1s
        # RPA.Desktop.Press Keys    t
        # Sleep    0.4s
        # RPA.Desktop.Press Keys    o
        # Sleep    0.1s
        # RPA.Desktop.Press Keys    1
        # Sleep    0.3s
        # RPA.Desktop.Press Keys    1
        # Sleep    0.1s
        # RPA.Desktop.Press Keys    9
        # Sleep    0.3s
        # RPA.Desktop.Type Text     @
        # Sleep    0.1s
        # RPA.Desktop.Press Keys    g
        # Sleep    0.1s
        # RPA.Desktop.Press Keys    m
        # Sleep    0.1s
        # RPA.Desktop.Press Keys    a
        # Sleep    0.5s
        # RPA.Desktop.Press Keys    i
        # Sleep    0.1s
        # RPA.Desktop.Press Keys    l
        # Sleep    0.5s
        # RPA.Desktop.Press Keys    .
        # Sleep    0.2s
        # RPA.Desktop.Press Keys    v
        # Sleep    0.3s
        # RPA.Desktop.Press Keys    o
        # Sleep    0.3s
        # RPA.Desktop.Press Keys    m
        # Sleep    1s
        # Repetidor de teclas       Backspace     3
        # RPA.Desktop.Press Keys    C
        # Sleep    0.3s
        # RPA.Desktop.Press Keys    o
        # Sleep    0.3s
        # RPA.Desktop.Press Keys    m
        # Sleep    1s
        # RPA.Desktop.Press keys    Enter
        # Sleep    3
        # Inserir Texto             xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/mat-form-field/div[1]/div/div[2]/input    Z
        # Sleep    1s
        # RPA.Desktop.Press keys    Backspace
        # RPA.Desktop.Type Text     Z
        # Sleep    0.2s
        # RPA.Desktop.Type Text     a
        # Sleep    0.5s
        # RPA.Desktop.Type Text     n
        # Sleep    0.2s
        # RPA.Desktop.Type Text     o
        # Sleep    0.1s
        # RPA.Desktop.Type Text     t
        # Sleep    0.1s
        # RPA.Desktop.Type Text     t
        # Sleep    0.3s
        # RPA.Desktop.Type Text     o
        # Sleep    0.1s
        # RPA.Desktop.Type Text     1
        # Sleep    0.1s
        # RPA.Desktop.Type Text     2
        # Sleep    0.4s
        # RPA.Desktop.Type Text     3
        # Sleep    0.1s
        # RPA.Desktop.Type Text     @
        # Sleep    1s
        # Clicar no Botão           xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/button[2]

        Sleep    4s   
        Input Text    xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/mat-form-field/div[1]/div/div[2]/input   gustavozanotto119@gmail.com
        SeleniumLibrary.Press Keys    //span[contains(text(), 'Continuar')]   \ue00c
        Sleep    7s
        Input Text    xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/mat-form-field/div[1]/div/div[2]/input   Zanotto123@
        Sleep    6s
        SeleniumLibrary.Press Keys    //span[contains(text(), 'Entrar')]    \ue00c
    ELSE
        Log    Já está logado no e-commerce
    END


Pesquisar bilhete no e-commerce
    [Arguments]   ${nome_bilhete}
    Inserir Texto                        xpath:/html/body/app-root/app-home/div/main/app-dashboard/div/mat-form-field/div[1]/div/div[3]/input       ${nome_bilhete}
    Sleep    0.5s
    # Tentar Clicar Em Um Dos Elementos    xpath:/html/body/div[3]/div/div/div/mat-option    xpath:/html/body/div[2]/div/div/div/mat-option   
    Clicar no Elemento    xpath://span[normalize-space(text()='${nome_bilhete}')]/ancestor::mat-option
    Sleep    0.5s
    Clicar no Elemento                   xpath:/html/body/app-root/app-home/div/main/app-dashboard/section[2]/app-highlights/div[2]/div[1]/div/app-product-card/div/section/a

Coletar quantidade de vagas (E-Commerce)
    [Arguments]    ${qtd_vagas}
    sleep                         4s
    ${qtd_vagas_no_ecommerce}=    SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-product-receita/app-title-with-edit[2]/section/div[2]/div[1]/span[2]/span
    log     ${qtd_vagas_no_ecommerce}
    Should Contain    ${qtd_vagas_no_ecommerce}    ${qtd_vagas} Vagas

Coleta Valor bilhete (E-commerce)
    [Arguments]    ${valor_bilhete}   ${numero_categoria}=1     ${valor_taxa}=n  
    Conferir Texto    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-title-with-edit/section/div[3]/div/app-escolha-categoria-produto[${numero_categoria}]/div/div[2]/div[1]/section/div    R$ ${valor_bilhete}
    ${cleaned_valor_taxa}=    Evaluate    "${valor_taxa}".strip().lower()
    IF    '${cleaned_valor_taxa}' != 'n'
        Conferir Texto    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-title-with-edit/section/div[3]/div/app-escolha-categoria-produto/div/div[2]/div[1]/div   ${valor_taxa}
    END
        
Adicionar categoria (Compra E-Commerce)
    [Arguments]    ${categoria}    ${quantidade}
    Sleep    2s
    FOR    ${i}    IN RANGE    ${quantidade}
        Sleep    1s
        Clicar no Botão    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-title-with-edit/section/div[3]/div/app-escolha-categoria-produto[${categoria}]/div/div[2]/button[2]
    END

# Retirar categoria (Compra E-Commerce)
#     [Arguments]    ${categoria}    ${quantidade}
#     Sleep            3s
#     FOR    ${i}    IN RANGE    ${quantidade}
#         Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-title-with-edit/section/div[3]/div/app-escolha-categoria[${categoria}]/div/div[2]/button[1]
#     END

Comprar Ingressos
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/div[3]/button

Selecionar o dia de hoje no calendario
    # @{ano_mes_dia}=  Get Time	year month day 
    # FOR    ${counter}    IN RANGE    1    7    
    #     ${RETURN VALUE}=    Run Keyword and Ignore Error    SeleniumLibrary.Element Should Contain    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-product-receita/app-title-with-edit[1]/section/div[3]/div/ec-calendar/table/tbody[1]/tr[1]/td[${counter}]/div/div/button    ${ano_mes_dia[2]}
    #     IF    '${RETURN VALUE[0]}' == 'PASS'
    #         Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-product-receita/app-title-with-edit[1]/section/div[3]/div/ec-calendar/table/tbody[1]/tr[1]/td[${counter}]/div/div/button
    #         Exit For Loop
    #     END
    # END
    ${diaHoje}=    Get Current Date    result_format=%#d
    # ${diaHoje}=    Convert To Integer    ${diaHoje}
    # IF    $diaHoje >= 10
    #     ${diasplit}=    Split String    ${diaHoje}    0
    #     ${hojeCard}=    Set Variable    ${diasplit[1]}
    # ELSE
    #     ${hojeCard}=    Set Variable    ${diaHoje}
    # END
    Set Test variable    ${hojeCard}    ${diaHoje}
    Click Element    xpath=//span[normalize-space(text())="${hojeCard}"]/ancestor::button

Ir Para o Pagamento
    Clicar no Botão    xpath:/html/body/app-root/app-home/div/main/app-my-cart/ec-wrapper/div[2]/div[6]/button[2]

Preencher dados do cartão
    Inserir Texto    xpath:/html/body/app-root/app-home/div/main/page-payment/ec-wrapper/div/div[2]/app-payment-cartao/div/form/mat-form-field[2]/div[1]/div/div[2]/input      Gustavo Zanotto
    Inserir Texto    xpath:/html/body/app-root/app-home/div/main/page-payment/ec-wrapper/div/div[2]/app-payment-cartao/div/form/mat-form-field[3]/div[1]/div/div[2]/input      4000 0000 0010
    Inserir Texto    xpath:/html/body/app-root/app-home/div/main/page-payment/ec-wrapper/div/div[2]/app-payment-cartao/div/form/mat-form-field[4]/div[1]/div/div[2]/input      12/2030
    Inserir Texto    xpath:/html/body/app-root/app-home/div/main/page-payment/ec-wrapper/div/div[2]/app-payment-cartao/div/form/mat-form-field[5]/div[1]/div/div[2]/input      123

Efetuar Pagamento
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/page-payment/ec-wrapper/div/div[2]/app-payment-cartao/div/button
    ${tempo}=  Get Time  
    ${tempo_split}=    Split String    ${tempo}    ${SPACE}
    ${hora_minuto_segundo}=    Get From List    ${tempo_split}    1 
    ${hora_minuto_seg_split}=    Split String    ${hora_minuto_segundo}    :
    @{ano_mes_dia}=  Get Time	year month day 
    ${data_formatada}=    Formatar Data Para DD/MM/AAAA    @{ano_mes_dia}
    Sleep            6s
    @{data_e_hora}=    Set Variable    ${data_formatada}    ${hora_minuto_seg_split[0]}:${hora_minuto_seg_split[1]}
    RETURN    @{data_e_hora}

Visualizar Ingressos
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-approved-purchase/ec-splash-alert/ec-wrapper/a
    Sleep    2s

Compartilhar Ingressos
    [Arguments]    ${tipo_compartilhamento}
    IF    '${tipo_compartilhamento}' == '0'
        Clicar no Elemento    xpath:/html/body/div[2]/div[2]/div/mat-bottom-sheet-container/app-share-ticket/div/button
    ELSE
        Clicar no Elemento    xpath:/html/body/div[2]/div[2]/div/mat-bottom-sheet-container/app-share-ticket/div/button[${tipo_compartilhamento}]
    END

Salvar a impressão do bilhete através do e-commerce  
    [Arguments]    ${tipo}      ${caminho}    ${nome_Impressão}
    ${LB}=                       Pegar Texto     xpath:/html/body/app-root/app-home/div/main/app-request/ec-wrapper/div[1]/div[1]/header/h1[2]
    Clicar no Botão              xpath:/html/body/app-root/app-home/div/main/app-request/ec-wrapper/div[2]/button[2]
    Tentar Clicar Em Um Dos Elementos           xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-share-ticket/div/a[${tipo}]    xpath:/html/body/div[2]/div[2]/div/mat-bottom-sheet-container/app-share-ticket/div/a[${tipo}]
    Sleep                        10s
    Clicar no Botão              xpath:/html/body/app-root/app-home/app-header/mat-toolbar/div/div[2]/button
    RPA.Desktop.Press Keys       Esc
    Sleep    1s
    Repetidor de teclas          tab    9
    Sleep    1s
    RPA.Desktop.Press Keys       ENTER
    Sleep    1.5s
    RPA.Desktop.Type Text        ${caminho}${nome_Impressão}.pdf
    Sleep    1s
    RPA.Desktop.Press Keys       ENTER
    Sleep    0.5
    RPA.Windows.Click            Sim
    RETURN    ${LB}  

Pegar LB
    Clicar no Elemento           xpath:/html/body/app-root/app-home/div/main/app-approved-purchase/ec-splash-alert/ec-wrapper/a
    Sleep    2s
    ${LB}=                       Pegar Texto     xpath:/html/body/app-root/app-home/div/main/app-request/ec-wrapper/div[1]/div[1]/header/h1[2]
    RETURN    ${LB} 

Cancelar um ingresso pelo e-commerce
    [Arguments]    ${numero_bilhete}
    Clicar no Botão                  xpath:/html/body/app-root/app-home/div/main/app-request/ec-wrapper/div[2]/button[2]
    Sleep    0.5
    Tentar Clicar Em Um Dos Elementos               xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-cancel-tickets/div/div[1]/app-select-sale-item[${numero_bilhete}]/div        xpath:/html/body/div[2]/div[2]/div/mat-bottom-sheet-container/app-cancel-tickets/div/div[1]/app-select-sale-item[${numero_bilhete}]/div
    Inserir Texto                    id:textarea_motivo    Bilhete Cancelado pela automação de testes.
    Clicar no Botão                  id:btn_cancelamento
    Sleep    3
    Clicar no Botão                  id:btn_solicitar
    ${tempo}=  Get Time  
    ${tempo_split}=    Split String    ${tempo}    ${SPACE}
    ${hora_minuto_segundo}=    Get From List    ${tempo_split}    1 
    ${hora_minuto_seg_split}=    Split String    ${hora_minuto_segundo}    :
    @{ano_mes_dia}=  Get Time	year month day 
    ${data_formatada}=    Formatar Data Para DD/MM/AAAA    @{ano_mes_dia}
    Sleep            3s
    @{data_e_hora}=    Set Variable    ${data_formatada}    ${hora_minuto_seg_split[0]}:${hora_minuto_seg_split[1]}
    Tentar coletar texto em um dos Elementos           xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-splash-pedido-canc-cred/ec-splash-alert/ec-wrapper/div[2]/h1    xpath:/html/body/div[2]/div[2]/div/mat-bottom-sheet-container/app-splash-pedido-canc-cred/ec-splash-alert/ec-wrapper/div[2]/h1
    Tentar coletar texto em um dos Elementos           xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-splash-pedido-canc-cred/ec-splash-alert/ec-wrapper/div[2]/h1    xpath:/html/body/div[2]/div[2]/div/mat-bottom-sheet-container/app-splash-pedido-canc-cred/ec-splash-alert/ec-wrapper/div[2]/h1    
    Tentar Clicar Em Um Dos Elementos                  xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-splash-pedido-canc-cred/ec-splash-alert/ec-wrapper/button       xpath:/html/body/div[2]/div[2]/div/mat-bottom-sheet-container/app-splash-pedido-canc-cred/ec-splash-alert/ec-wrapper/button      
    RETURN    @{data_e_hora}

Validar impressão do bilhete cancelado
    [Arguments]    ${Caminho_impressão}      ${nome_do_arquivo}      ${Caminho_Screenshot}      ${Nome_da_tela}       ${LB}     ${TOTAL}     @{data_e_hora}    
    Sleep    20s
    RPA.Windows.Get Element   ${Nome_da_tela} 
    BaseKeywordsDesktop.Screenshot    ${Nome_da_tela}        ${Caminho_Screenshot}${Nome_da_tela}    
    ${texto}=                 Get Text From Pdf      ${Caminho_impressão}${nome_do_arquivo}.pdf  
    ${keys}=                  Get Dictionary Keys    ${texto}
    ${primeira}=              Get From List          ${keys}    0
    ${pagina1}=               Get From Dictionary    ${texto}    ${primeira}
    Log                       ${pagina1}       
    Should Contain            ${pagina1}                     ${LB}
    Should Contain            ${pagina1}                     ${data_e_hora[0]}
    Should Contain            ${pagina1}                     ${data_e_hora[1]}
    Log    ${data_e_hora[0]}
    Log    ${data_e_hora[1]}
    Log    ${data_e_hora[2]}
    Log    ${data_e_hora[3]}
    Should Contain            ${pagina1}                     Este ingresso foi cancelado no dia    ${data_e_hora[2]}    ${data_e_hora[3]}
    IF    $TOTAL
        Should not Contain        ${pagina1}                     AU_OU
    END
    Sleep                     1s

Validar o Layout
    [Arguments]    ${Caminho_impressão}      ${nome_do_arquivo}      ${Caminho_Screenshot}      ${Nome_da_tela}           
    Sleep    20s
    RPA.Windows.Get Element   ${Nome_da_tela} 
    BaseKeywordsDesktop.Screenshot    ${Nome_da_tela}        ${Caminho_Screenshot}${Nome_da_tela}    
    ${texto}=                 Get Text From Pdf      ${Caminho_impressão}${nome_do_arquivo}.pdf  
    ${keys}=                  Get Dictionary Keys    ${texto}
    ${primeira}=              Get From List          ${keys}    0
    ${pagina1}=               Get From Dictionary    ${texto}    ${primeira}
    Log                       ${pagina1}       
    Should Contain            ${pagina1}                     Localizador    Data da Compra    Local da venda    Nome do Titular    Documento do Titular    E-Mail do Titular    
    Should Contain            ${pagina1}                     Valor Total:    Local da Experiência    Data da Visita    Receita Automação (Online)    AU_ON    Ecommerce - Zanotto E-Commerce para Automação NÃO MEXER (Online)

Preencher dados de um novo cadastro no e-commerce
    [Arguments]    ${nome}=Cadastro Automatizado    ${nascimento}=22082006    ${telefone}=5599999999999    ${cpf}=09285844960    ${cep}=85509432    ${numero}=1050    ${senha}=Zanotto123@    
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[1]/mat-form-field/div[1]/div/div[2]/input                                   ${nome}
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[1]/div/mat-form-field[1]/div[1]/div/div[2]/input                            ${nascimento}
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[2]/mat-form-field[1]/div[1]/div/div[2]/app-cellphone-input/div/input        ${telefone}
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[2]/mat-form-field[2]/div[1]/div/div[2]
    Clicar no Elemento    xpath:/html/body/div[3]/div[2]/div/div/mat-option[1]  
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[2]/mat-form-field[3]/div[1]/div/div[2]/input                                ${cpf}
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/form/div/mat-form-field/div[1]/div/div[2]/input                                 ${cep}
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/form/mat-form-field/div[1]/div/div[2]/input                                     ${numero}
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[3]/mat-form-field/div[1]/div/div[2]/input                                   ${senha}
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[5]/app-term-consent/div/div/mat-checkbox
    Clicar no Botão       xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/ng-component/div[2]/button[2]
    Sleep    1s
    Clicar no Botão       xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[6]/button

Validar Telefone ja cadastrado e trocar errado
    [Arguments]    ${telefone}=+55 99999999999
    Sleep    2s
    Element Should Contain    xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/ec-error/div/section/span    Já existe um usuário com telefone "${telefone}"
    Inserir Texto             xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[2]/mat-form-field[1]/div[1]/div/div[2]/app-cellphone-input/div/input        5541998700213

Validar Documento ja cadastrado e trocar errado
    [Arguments]    ${documento}=092.858.449-60
    Inserir Texto             xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[2]/mat-form-field[1]/div[1]/div/div[2]/app-cellphone-input/div/input        5599999999999
    Element Should Contain    xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/ec-error/div/section/span    Já existe um usuário com documento "${documento}"
    Inserir Texto             xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[2]/mat-form-field[3]/div[1]/div/div[2]/input                                02235161472

Validar as informações do cadastro
    [Arguments]     ${nome}=Cadastro Automatizado    ${nascimento}=22/08/2006    ${telefone}=+55 99 99999-9999    ${documento}=092.858.449-60   
    Sleep    1s
    ${nome_atual}=         Pegar valor de um input        xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[1]/mat-form-field/div[1]/div/div[2]/input
    Sleep    1s
    ${telefone_atual}=     Pegar valor de um input        xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[2]/mat-form-field[1]/div[1]/div/div[2]/app-cellphone-input/div/input
    Sleep    1s
    ${documento_atual}=    Pegar valor de um input        xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[2]/mat-form-field[3]/div[1]/div/div[2]/input
    Sleep    1s
    ${data_nasc_atual}=    Pegar valor de um input        xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[1]/div/mat-form-field[1]/div[1]/div/div[2]/input
    IF   ($nome_atual != $nome) and ($telefone_atual != $telefone) and ($documento_atual != $documento) and ($data_nasc_atual != $nascimento)
        Fail    Os dados atuais são diferentes dos esperados o cadastro não foi salvo corretamente ou foi alterado por algum usuário.
    END

Pegar valor de um input
    [Arguments]    ${locator}
    Clicar no Elemento    ${locator}
    RPA.Desktop.Press Keys    Ctrl     A
    RPA.Desktop.Press Keys    Ctrl     C
    ${valor}=    RPA.Desktop.Get Clipboard Value
    Log       ${valor}
    RETURN    ${valor}

Alterar as informações do cadastro
    [Arguments]     ${nome}=Cadastro Automatizado Editado    ${nascimento}=23081906    ${telefone}=5598888888888    ${documento}=12345678910    
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[1]/mat-form-field/div[1]/div/div[2]/input                                   ${nome}
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[1]/div/mat-form-field[1]/div[1]/div/div[2]/input                            ${nascimento}
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[2]/mat-form-field[1]/div[1]/div/div[2]/app-cellphone-input/div/input        ${telefone}
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[2]/mat-form-field[2]/div[1]/div/div[2]
    Clicar no Elemento    xpath:/html/body/div[3]/div[2]/div/div/mat-option[3]  
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[2]/mat-form-field[3]/div[1]/div/div[2]/input                                ${documento}
    Clicar no Botão       xpath:/html/body/app-root/app-home/div/main/app-create-account/ec-wrapper/form/div[5]/button

Alterar datas ou horários
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-request/ec-wrapper/div[2]/a[1]

Preencher dados do visitante (E-Commerce)
    [Arguments]    ${nome}=${None}  ${tipo_documento}=${None}     ${documento}=${None}    ${data_nascimento}=${None}    ${telefone}=${None}    ${genero}=${None}    ${escolaridade}=${None}    ${pais}=${None}   ${cep}=${None}    ${endereco}=${None}       ${estado}=${None}   ${numero_visitante}=1 
    IF    $nome != $None
        Inserir Texto    xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-visitors-form/div/div[1]/div[2]/form[${numero_visitante}]/mat-form-field[1]/div[1]/div/div[2]/input    ${nome}  
        
    END
    IF    $tipo_documento != $None 
        Clicar no Elemento    xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-visitors-form/div/div[1]/div[2]/form[${numero_visitante}]/mat-form-field[2]/div[1]/div/div[2]
        Clicar no Elemento    xpath:/html/body/div[3]/div[4]/div/div/mat-option[${tipo_documento}]
        Inserir Texto         xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-visitors-form/div/div[1]/div[2]/form[${numero_visitante}]/mat-form-field[3]/div[1]/div/div[2]/input    ${documento}   
    END
    IF    $data_nascimento != $None
        Inserir Texto    xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-visitors-form/div/div[1]/div[2]/form[${numero_visitante}]/mat-form-field[4]/div[1]/div/div[2]/input    ${data_nascimento}     
    END
    IF    $telefone != $None
        Inserir Texto    xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-visitors-form/div/div[1]/div[2]/form[${numero_visitante}]/mat-form-field[5]/div[1]/div/div[2]/app-cellphone-input/div/input    ${telefone}     
    END
    IF    $genero != $None
        Clicar no Elemento    xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-visitors-form/div/div[1]/div[2]/form[${numero_visitante}]/mat-form-field[6]/div[1]/div/div[2]
        Clicar no Elemento    xpath:/html/body/div[3]/div[4]/div/div/mat-option[${genero}]    
    END
    IF    $escolaridade != $None
        Clicar no Elemento    xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-visitors-form/div/div[1]/div[2]/form[${numero_visitante}]/mat-form-field[7]/div[1]/div/div[2]
        Clicar no Elemento    xpath:/html/body/div[3]/div[4]/div/div/mat-option[${genero}]     
        
    END
    IF    $pais != $None
        Clicar no Elemento    xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-visitors-form/div/div[1]/div[2]/form[${numero_visitante}]/app-endereco-form/form/mat-form-field[1]/div[1]/div/div[2]
        Inserir Texto         xpath:/html/body/div[3]/div[4]/div/div/mat-option[1]/span/ngx-mat-select-search/div/div/input       ${pais}
        Clicar no Elemento    xpath:/html/body/div[3]/div[4]/div/div/mat-option[2]   
    END
    IF    $CEP != $None
        Inserir Texto         xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-visitors-form/div/div[1]/div[2]/form[${numero_visitante}]/app-endereco-form/form/mat-form-field[2]/div[1]/div/div[2]/input    ${cep}   
    END
    IF    $estado != $None
        Inserir Texto         xpath:/html/body/div[3]/div[4]/div/div/mat-option[1]/span/ngx-mat-select-search/div/div/input    ${estado}
        Clicar no Elemento    xpath:/html/body/div[3]/div[4]/div/div/mat-option[2]
    END
    Sleep    1s
    ${retorno}=    Run Keyword And Ignore Error    SeleniumLibrary.Get Element Attribute       xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-visitors-form/div/div[2]/button[2]    ec-color
    ${status}=    Run Keyword And Return Status    Should Be Equal   ${retorno[1]}      primary  
    IF    $status
        Clicar no Botão    xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-visitors-form/div/div[2]/button[2]
    END
Selecionar o ingresso para remarcar
    [Arguments]    ${numero_bilhete}
    Clicar no Elemento      xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-reschedule/div/app-select-sale-item[${numero_bilhete}]/div
    Clicar no Botão         xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-reschedule/div/div/section[2]/button

Selecionar o dia para remarcação no calendário
    Clicar no Botão       xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-reschedule/div/section/div/app-title-with-edit/section/div[3]/ec-full-calendar/div/ec-calendar/table/thead[1]/tr[1]/th/div/section/button[2]
    Sleep    1s
    Clicar no Botão       xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-reschedule/div/section/div/app-title-with-edit/section/div[3]/ec-full-calendar/div/ec-calendar/table/tbody/tr[3]/td[4]/div/button

Remarcar data do ingresso
    Selecionar o ingresso para remarcar    1
    Selecionar o dia para remarcação no calendário
    Sleep    1s
    Clicar no Botão    xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-reschedule/div/div/section[2]/button
    Sleep    1s
    Element Should Contain    xpath:/html/body/div[3]/div/div/mat-snack-bar-container/div/div/div/div/simple-snack-bar/div[1]     Ingressos remarcados com sucesso
    Sleep    1s

Alterar dados do visitante
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/div/a[2]
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-visitors/div/app-sale-item/div/div[2]/mat-form-field[1]/div[1]/div/div[2]/input    Automação de Testes Alterado
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-visitors/div/app-sale-item/div/div[2]/div/mat-form-field[1]/div[1]/div/div[2]
    Clicar no Elemento    xpath:/html/body/div[3]/div[2]/div/div/mat-option[4]
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-visitors/div/app-sale-item/div/div[2]/div/mat-form-field[2]/div[1]/div/div[2]/input    987654321
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-visitors/div/app-sale-item/div/div[2]/mat-form-field[2]/div[1]/div/div[2]/input    22082006
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-visitors/div/app-sale-item/div/div[2]/mat-form-field[3]/div[1]/div/div[2]/app-cellphone-input/div/input    558888888888888
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-visitors/div/app-sale-item/div/div[2]/mat-form-field[4]/div[1]/div/div[2]
    Clicar no Elemento    xpath:/html/body/div[3]/div[2]/div/div/mat-option[4]
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-visitors/div/app-sale-item/div/div[2]/mat-form-field[5]/div[1]/div/div[2]
    Clicar no Elemento    xpath:/html/body/div[3]/div[2]/div/div/mat-option[4]
    Clicar no Botão       xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-visitors/div/div/button
    Conferir Texto    xpath:/html/body/div[3]/div/div/mat-snack-bar-container/div/div/div/div/simple-snack-bar/div[1]     Alteração de dados feita com sucesso


Validar informações do visitante
    ${nome}=    Pegar valor de um input    xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-visitors/div/app-sale-item/div/div[2]/mat-form-field[1]/div[1]/div/div[2]/input
    Should Be Equal    ${nome}    Automação de Testes Alterado
    ${tipo_documento}=    SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-visitors/div/app-sale-item/div/div[2]/div/mat-form-field[1]/div[1]/div/div[2]/mat-select/div/div[1]/span/span
    Should Be Equal    ${tipo_documento}    PASSAPORTE
    ${documento}=    Pegar valor de um input    xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-visitors/div/app-sale-item/div/div[2]/div/mat-form-field[2]/div[1]/div/div[2]/input    
    Should Be Equal    ${documento}    987654321
    ${data_nascimento}=    Pegar valor de um input    xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-visitors/div/app-sale-item/div/div[2]/mat-form-field[2]/div[1]/div/div[2]/input
    Should Be Equal    ${data_nascimento}    22/08/2006
    ${telefone}=    Pegar valor de um input    xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-visitors/div/app-sale-item/div/div[2]/mat-form-field[3]/div[1]/div/div[2]/app-cellphone-input/div/input
    Should Be Equal    ${telefone}    +55 88 88888-8888
    ${genero}=    SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-visitors/div/app-sale-item/div/div[2]/mat-form-field[4]/div[1]/div/div[2]/mat-select/div/div[1]/span/span
    Should Be Equal    ${genero}    Prefiro não informar
    ${escolaridade}=    SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-home/div/main/app-alter-purchase/ec-wrapper/app-visitors/div/app-sale-item/div/div[2]/mat-form-field[5]/div[1]/div/div[2]/mat-select/div/div[1]/span/span
    Should Be Equal    ${escolaridade}    Ensino médio incompleto