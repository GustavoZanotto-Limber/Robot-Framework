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
    Ir Para Emissão de Bilhetes
    Selecionar o bilhete   1
    Finalizar compra

Dado que realizei uma venda com multiplas categorias
    Ir Para Emissão de Bilhetes
    Selecionar o bilhete    1
    Sleep                   1s
    Selecionar o bilhete    2
    Sleep                   1s
    Selecionar o bilhete    3
    Finalizar compra

Quando imprimo o bilhete
    Salvo a Impressão do RPS
    Salvo a Impressão 
    Sleep                1s
    Fechar janela
    RPA.Windows.Click    Sim
    

Quando finalizo o pagamento 
    [Arguments]    ${qtd_de_bilhetes}
    Sleep                        4s
    RPA.Windows.Click            Fechar
    FOR    ${qtd_de_bilhetes}    IN RANGE    0    ${qtd_de_bilhetes}
    RPA.Windows.Click            Fechar
    Sleep                4s
    END
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
    Should Contain            ${pagina1}             Z - Bilhete integrado\nCATEGORIA 1\nValor Total R$ 100,00Válido até     PDV: 1 OP: 1-Usuário 1\nDoc:      \nEmitida em
    Sleep                     7s
    RPA.Desktop.Press Keys    Alt    F4

Então valido se a impressão RPS saiu corretamente
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
    Log                       ${pagina1}
    Should Contain            ${pagina1}             DEMONSTRAÇÃO\nCNPJ: 000000000000000ENDEREÇO PADRÃO, 0\nMarília - SP\nCEP:  00000-000RECIBO PROVISÓRIO DE\nPRESTAÇÃO DE SERVIÇOS - RPSRPS Nº 264  Série PC1B\nEmissão  Discriminação dos serviçosCód.ItemValor00000 Acesso\nB. Cálculo 100,00 Alíq. 05%100,00\nVlr. ISS  5,00\nValor do RPS 100,00\nValor Total dos Tributos  5,00Emitido em    
    Should Contain            ${pagina1}             PDV: 1 Operador: 1-Usuário 1Reimpressão
    Sleep                     7s
    RPA.Desktop.Press Keys    Alt    F4
    
Quando peço a Reimpressão do bilhete
    Ir Para Reimpressão de Bilhetes
    Selecionar a ultima venda para reimpressão    F5
    Salvo a Reimpressão    Reimpressão do Bilhete

Quando peço a Reimpressão do RPS
    Ir Para Reimpressão de Bilhetes
    Selecionar a ultima venda para reimpressão    F6
    Salvo a Reimpressão    Reimpressão do RPS

Então valido a venda foi realizada com sucesso
    Consultas Front    Consulta de Vendas
    Carregar
    Rolar barra até o Final
    Analisa texto dos bilhetes vendidos
    Analisa texto da forma de pagamento
