*** Settings ***
Library    RPA.Desktop
Library    RPA.Windows    
Library    OperatingSystem
Library    Process
Library    RPA.Excel.Files
Library    RPA.Excel.Application
Library    String
Library    SeleniumLibrary        screenshot_root_directory=EstruturasBase\\DESKTOP\\ScreenShots\\Selenium
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


# ---------------------Quando---------------------

Quando faço a venda do bilhete
    [Arguments]     ${categoria}    ${qtd_categorias}
    Selecionar o dia de hoje no calendario
    Adicionar Categoria (Compra E-Commerce)    ${categoria}    ${qtd_categorias}
    Comprar Ingressos
    Sleep    2s
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

# ---------------------Então---------------------

Então valido a impressão no e-commerce
    [Arguments]    ${caminho}    ${nome_Arquivo_com_o_tipo}    ${caminho_screenshots}  
    @{data_e_hora}=    Efetuar Pagamento  
    Clicar no Elemento           xpath:/html/body/app-root/app-home/div/main/app-approved-purchase/ec-splash-alert/ec-wrapper/a
    Sleep    1s
    ${LB}=             Salvar a impressão do bilhete através do e-commerce    1    ${caminho}    Impressão_E-Commerce
    Abrir arquivo      ${caminho}   ${nome_Arquivo_com_o_tipo} 
    Sleep    1s
    Validar impressão do bilhete    ${caminho}    Impressão_E-Commerce   ${caminho_screenshots}    Impressão_E-Commerce.pdf - WPS Office      ${LB}     @{data_e_hora}
    RPA.Desktop.Press Keys    Alt    F4   
    
Então valido a impressão na plataforma CARD
    [Arguments]    ${caminho}    ${nome_Arquivo_com_o_tipo}    ${caminho_screenshots}
    @{data_e_hora}=    Efetuar Pagamento  
    ${LB}=             Pegar LB
    Sleep    1s
    Go To    https://testescard.limbersoftware.com.br/#/pages/gerenciamento/vendas
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
    Go Back
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