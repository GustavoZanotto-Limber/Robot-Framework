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
${URL_Card}=    https://testescard.limbersoftware.com.br/
${URL_E-Commerce}=     https://regressivoscard.testescard.limber.net.br/
*** Keywords ***
    
# ---------------------DADO---------------------
Dado que estou no e-commerce
    Abro o E-commerce
    Sleep    2s


# ---------------------Quando---------------------

Quando faço a venda do bilhete
    [Arguments]    ${nome_bilhete}
    Pesquisar bilhete no e-commerce    ${nome_bilhete}
    Selecionar o dia de hoje no calendario
    Adicionar Categoria (Compra E-Commerce)    1    2
    Comprar Ingressos
    Ir Para o Pagamento
    Preencher dados do cartão

# ---------------------Então---------------------

# Então valido a impressão no e-commerce
    