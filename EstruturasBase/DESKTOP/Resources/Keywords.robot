*** Settings ***
Library    RPA.Desktop
Library    RPA.Windows    
Library    OperatingSystem
Library    SeleniumLibrary 
Library    Process
Library    RPA.PDF
Library    Collections
Resource   BaseDesktop.robot

*** Variables ***


*** Keywords ***

#----------------------------------------------------------------------------------------------------------------------------------------------------------------
# ****** BDDs **********
Dado que realizei uma venda
    Caixa Operador
    RPA.Windows.Click    Abertura / Fechamento
    Fechar caixa caso esteja aberto
    Abrir Caixa
    Ir Para Emissão de Bilhetes
    Selecionar o bilhete
    Finalizar compra

Quando imprimo o bilhete
    Salvo a Impressão 
    Sleep                1s
    Fechar janela
    RPA.Windows.Click    Sim

Então valido se a impressão saiu corretamente
    [Arguments]       ${Caminho_impressão}        ${nome_do_arquivo}        ${Nome_da_tela}       ${Caminho_Screenshot}     ${Nome_da_screenshot}
    Sleep                     1s
    Abrir arquivo             ${Caminho_impressão}  ${nome_do_arquivo} 
    Sleep                     5s
    RPA.Windows.Get Element   ${Nome_da_tela}
    BaseDesktop.Screenshot    ${Nome_da_tela}        ${Caminho_Screenshot}${Nome_da_screenshot}    
    ${texto}=                 Get Text From Pdf      ${Caminho_impressão}${nome_do_arquivo}  
    ${keys}=                  Get Dictionary Keys    ${texto}
    ${primeira}=              Get From List          ${keys}    0
    ${pagina1}=               Get From Dictionary    ${texto}    ${primeira}
    Should Contain            ${pagina1}             Z - Bilhete integrado\nCATEGORIA 1\nValor Total R$ 10,00Válido até     PDV: 1 OP: 1-Usuário 1\nDoc:      \nEmitida em
    Sleep                     7s
    RPA.Desktop.Press Keys    Alt    F4
    
Quando peço a Reimpressão do bilhete
    Ir Para Reimpressão de Bilhetes
    RPA.Desktop.Press Keys     0
    RPA.Desktop.Press Keys     Enter
    Sleep                      1s
    RPA.Windows.Click          OK
    Sleep                      1s
    RPA.Desktop.Press Keys     Ctrl    Down
    RPA.Windows.Click          Confirmar
    RPA.Desktop.Press Keys     Alt    M
    RPA.Desktop.Press Keys     F5
    Salvo a Reimpressão


