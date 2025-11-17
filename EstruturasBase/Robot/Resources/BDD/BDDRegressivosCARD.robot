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
    Ir Para o Pagamento
    Preencher dados do cartão

# ---------------------Então---------------------

# Então valido a impressão no e-commerce
    