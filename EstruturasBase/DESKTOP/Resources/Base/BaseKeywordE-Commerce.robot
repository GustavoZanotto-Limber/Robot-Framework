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
    Sleep                     4s
    Click Element             accountButton   
    sleep                     3s
    Input Text                xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/mat-form-field/div[1]/div/div[2]/input    gustavozanotto119@gmail.com
    RPA.Desktop.Press keys    Backspace
    RPA.Desktop.Type Text     m
    RPA.Desktop.Press keys    Enter
    Sleep                     15s
    Input Text                xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/mat-form-field/div[1]/div/div[2]/input    Z
    RPA.Desktop.Press keys    Backspace
    RPA.Desktop.Type Text     Zanotto123@
    RPA.Desktop.Press keys    Enter
    Sleep                     15s

Pesquisar bilhete no e-commerce
    [Arguments]   ${nome_bilhete}=Bilhete Automatizado: Por Horario
    Sleep              4s
    Input Text         xpath:/html/body/app-root/app-home/div/main/app-dashboard/div/mat-form-field/div[1]/div/div[3]/input       ${nome_bilhete}
    Sleep              2s
    Repetidor de teclas       tab    2
    sleep                     1s    
    RPA.Desktop.PRess Keys    Enter

Coletar quantidade de vagas (E-Commerce)
    [Arguments]    ${qtd_vagas}
    sleep                         4s
    ${qtd_vagas_no_ecommerce}=    SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-product-receita/app-title-with-edit[2]/section/div[2]/div[1]/span[2]/span
    log     ${qtd_vagas_no_ecommerce}
    Should Contain    ${qtd_vagas_no_ecommerce}    ${qtd_vagas} Vagas

Coleta Valor bilhete (E-commerce)
    [Arguments]    ${valor_bilhete}   ${numero_categoria}=1     ${valor_taxa}=0  
    Sleep                   3s  
    ${valor_bilhete_EC}=    SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-title-with-edit[${numero_categoria}]/section/div[3]/div/app-escolha-categoria/div/div[2]/div[1]/section/div
    IF    $valor_taxa != 0                                    
    ${valor_taxa_EC}=       SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-title-with-edit/section/div[3]/div/app-escolha-categoria/div/div[2]/div[1]/div
    END
    Log    ${valor_bilhete_EC}
    Log    ${valor_taxa_EC}
    Comparar Valores    R$ ${valor_bilhete}    ${valor_bilhete_EC}
    Comparar Valores    (+R$ ${valor_taxa} Taxa)       ${valor_taxa_EC}
    Sleep        1s

Adicionar categoria (Compra E-Commerce)
    [Arguments]    ${categoria}    ${quantidade}
    Sleep            3s
    FOR    ${i}    IN RANGE    ${quantidade}
        Click Element    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-title-with-edit/section/div[3]/div/app-escolha-categoria[${categoria}]/div/div[2]/button[2]
    END

# Retirar categoria (Compra E-Commerce)
#     [Arguments]    ${categoria}    ${quantidade}
#     Sleep            3s
#     FOR    ${i}    IN RANGE    ${quantidade}
#         Click Element    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-title-with-edit/section/div[3]/div/app-escolha-categoria[${categoria}]/div/div[2]/button[1]
#     END

Comprar Ingressos
    Click Element    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/div[3]/button
    sleep            1s