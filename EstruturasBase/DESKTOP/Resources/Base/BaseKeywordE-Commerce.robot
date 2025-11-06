*** Settings ***
Documentation    Keywords para automação WEB com Robot Framework e Selenium
Library    OperatingSystem
Library    Process
Library    RPA.Excel.Files
Library    RPA.Excel.Application
Library    String
Library    Collections
Library    RPA.PDF
Library    SeleniumLibrary    screenshot_root_directory=EstruturasBase\\DESKTOP\\ScreenShots\\Selenium
Library    RPA.Desktop
Resource    BaseKeywordsDesktop.robot
Resource    ../BDD/BDDKeywordsDesktop.robot

*** Variables ***

*** Keywords ***

Abro o E-commerce
    Go to                     https://automacao.testescard.limber.net.br/
    Sleep                     7s
    Logar no e-commerce
      
Logar no e-commerce    
    ${logado}=    Run Keyword and ignore error    Run Keyword and Return Status    Clicar no Elemento        id:accountButton
    Sleep    1s
    Log    ${logado[1]}
    IF    ${logado[1]}
        # Inserir Texto             xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/mat-form-field/div[1]/div/div[2]/input    gustavozanotto119@gmail.com
        Clicar no Elemento        xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/mat-form-field/div[1]/div/div[2]
        RPA.Desktop.Press Keys    g
        Sleep    0.1s
        RPA.Desktop.Press Keys    u
        Sleep    0.1s
        RPA.Desktop.Press Keys    s
        Sleep    0.1s
        RPA.Desktop.Press Keys    t
        Sleep    0.1s
        RPA.Desktop.Press Keys    a
        Sleep    0.1s
        RPA.Desktop.Press Keys    v
        Sleep    0.1s
        RPA.Desktop.Press Keys    o
        Sleep    0.1s
        RPA.Desktop.Press Keys    z
        Sleep    0.1s
        RPA.Desktop.Press Keys    a
        Sleep    0.1s
        RPA.Desktop.Press Keys    n
        Sleep    0.1s
        RPA.Desktop.Press Keys    o
        Sleep    0.1s
        RPA.Desktop.Press Keys    t
        Sleep    0.1s
        RPA.Desktop.Press Keys    t
        Sleep    0.1s
        RPA.Desktop.Press Keys    o
        Sleep    0.1s
        RPA.Desktop.Press Keys    1
        Sleep    0.1s
        RPA.Desktop.Press Keys    1
        Sleep    0.1s
        RPA.Desktop.Press Keys    9
        Sleep    0.1s
        RPA.Desktop.Type Text     @
        Sleep    0.1s
        RPA.Desktop.Press Keys    g
        Sleep    0.1s
        RPA.Desktop.Press Keys    m
        Sleep    0.1s
        RPA.Desktop.Press Keys    a
        Sleep    0.1s
        RPA.Desktop.Press Keys    i
        Sleep    0.1s
        RPA.Desktop.Press Keys    l
        Sleep    0.1s
        RPA.Desktop.Press Keys    .
        Sleep    0.1s
        RPA.Desktop.Press Keys    c
        Sleep    0.1s
        RPA.Desktop.Press Keys    o
        Sleep    0.1s
        RPA.Desktop.Press Keys    m
        Sleep    1s
        RPA.Desktop.Press keys    Backspace
        RPA.Desktop.Type Text     m
        Sleep    1s
        RPA.Desktop.Press keys    Enter
        Sleep    3
        Inserir Texto             xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/mat-form-field/div[1]/div/div[2]/input    Z
        Sleep    1s
        RPA.Desktop.Press keys    Backspace
        RPA.Desktop.Type Text     Zanotto123@
        Sleep    1s
        RPA.Desktop.Press keys    Enter
    ELSE
        Log    Já está logado no e-commerce
    END


Pesquisar bilhete no e-commerce
    [Arguments]   ${nome_bilhete}
    Inserir Texto         xpath:/html/body/app-root/app-home/div/main/app-dashboard/div/mat-form-field/div[1]/div/div[3]/input       ${nome_bilhete}
    Clicar no Elemento    xpath:/html/body/div[3]/div/div/div/mat-option
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-dashboard/section[2]/app-highlights/div[2]/div[1]/div/app-product-card/div/section/a

Coletar quantidade de vagas (E-Commerce)
    [Arguments]    ${qtd_vagas}
    sleep                         4s
    ${qtd_vagas_no_ecommerce}=    SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-product-receita/app-title-with-edit[2]/section/div[2]/div[1]/span[2]/span
    log     ${qtd_vagas_no_ecommerce}
    Should Contain    ${qtd_vagas_no_ecommerce}    ${qtd_vagas} Vagas

Coleta Valor bilhete (E-commerce)
    [Arguments]    ${valor_bilhete}   ${numero_categoria}=1     ${valor_taxa}=n  
    Wait Until Element Is Visible    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-title-with-edit/section/div[3]/div/app-escolha-categoria[${numero_categoria}]/div/div[2]/div[1]/section/div
    Sleep    0.2
    SeleniumLibrary.Element Should Contain    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-title-with-edit/section/div[3]/div/app-escolha-categoria[${numero_categoria}]/div/div[2]/div[1]/section/div    R$ ${valor_bilhete}
    ${cleaned_valor_taxa}=    Evaluate    "${valor_taxa}".strip().lower()
    IF    '${cleaned_valor_taxa}' != 'n'
        SeleniumLibrary.Element Should Contain    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-title-with-edit/section/div[3]/div/app-escolha-categoria/div/div[2]/div[1]/div    ${valor_taxa}
    END

Adicionar categoria (Compra E-Commerce)
    [Arguments]    ${categoria}    ${quantidade}
    FOR    ${i}    IN RANGE    ${quantidade}
        Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-title-with-edit/section/div[3]/div/app-escolha-categoria[${categoria}]/div/div[2]/button[2]
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
    @{ano_mes_dia}=  Get Time	year month day 
    FOR    ${counter}    IN RANGE    1    7    
        ${RETURN VALUE}=    Run Keyword And Ignore Error    SeleniumLibrary.Element Should Contain    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-product-receita/app-title-with-edit[1]/section/div[3]/div/ec-calendar/table/tbody[1]/tr[1]/td[${counter}]/div/div/button    ${ano_mes_dia[2]}
        IF    '${RETURN VALUE[0]}' == 'PASS'
            Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-product-receita/app-title-with-edit[1]/section/div[3]/div/ec-calendar/table/tbody[1]/tr[1]/td[${counter}]/div/div/button
            Exit For Loop
        END
    END

Ir Para o Pagamento
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-my-cart/ec-wrapper/div[2]/div[6]/button

Preencher dados do cartão
    Inserir Texto    xpath:/html/body/app-root/app-home/div/main/page-payment/ec-wrapper/div/div[2]/app-payment-cartao/div/form/mat-form-field[3]/div[1]/div/div[2]/input      Gustavo Zanotto
    Inserir Texto    xpath:/html/body/app-root/app-home/div/main/page-payment/ec-wrapper/div/div[2]/app-payment-cartao/div/form/mat-form-field[4]/div[1]/div/div[2]/input      4000 0000 0010
    Inserir Texto    xpath:/html/body/app-root/app-home/div/main/page-payment/ec-wrapper/div/div[2]/app-payment-cartao/div/form/mat-form-field[5]/div[1]/div/div[2]/input      12/2030
    Inserir Texto    xpath:/html/body/app-root/app-home/div/main/page-payment/ec-wrapper/div/div[2]/app-payment-cartao/div/form/mat-form-field[6]/div[1]/div/div[2]/input      123

Efetuar Pagamento
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/page-payment/ec-wrapper/div/div[2]/app-payment-cartao/div/button
    Sleep            10s

Visualizar Ingressos
    Clicar no Elemento    xpath:/html/body/app-root/app-home/div/main/app-approved-purchase/ec-splash-alert/ec-wrapper/a
    Sleep            2s

Compartilhar Ingressos
    [Arguments]    ${tipo_compartilhamento}
    IF    '${tipo_compartilhamento}' == '0'
        Clicar no Elemento    xpath:/html/body/div[2]/div[2]/div/mat-bottom-sheet-container/app-share-ticket/div/button
    ELSE
        Clicar no Elemento    xpath:/html/body/div[2]/div[2]/div/mat-bottom-sheet-container/app-share-ticket/div/button[${tipo_compartilhamento}]
    END
    
