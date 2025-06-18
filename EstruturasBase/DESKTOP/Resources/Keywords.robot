*** Settings ***
Library    RPA.Desktop
Library    RPA.Windows    timeout=1s
Library    OperatingSystem
Library    SeleniumLibrary 
Library    Process
Resource    BaseDesktop.robot



*** Variables ***


*** Keywords ***
Caixa Operador
    Cadastros
    repetidor de teclas    right    4

Abrir Caixa
    RPA.Windows.Click                   Abrir Caixa
    RPA.Desktop.Press Keys              Enter
    RPA.Desktop.Press Keys              Enter

Ir Para Emissão de Bilhetes
    Cadastros
    Repetidor de teclas    right    1
    RPA.Windows.Click      Emissão de Bilhetes
    RPA.Windows.Get Text   Emissão de Bilhetes (1)
    
Selecionar o bilhete
    #Selecionando o bilhete
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    enter
    RPA.Windows.Click         Confirmar
    #Selecionando a categoria
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    enter
    RPA.Windows.Click         Confirmar
    Repetidor de teclas       enter    6

Finalizar compra 
    RPA.Desktop.Press Keys    F5
    RPA.Desktop.Press Keys    space
    RPA.Desktop.Press Keys    enter
    
Salvar Impressão
    Sleep                         1s
    RPA.Desktop.Type Text Into    Nome:    RPS
    RPA.Windows.Click             Salvar
    RPA.Desktop.Click             Sim
    RPA.Desktop.Type Text Into    Nome:    Impressão do bilhete
    RPA.Windows.Click             Salvar
    RPA.Desktop.Click             OK

Fechar caixa caso esteja aberto
    ${caixa_aberto}=          Run Keyword And Ignore error              RPA.Windows.Get Text    Fechar Caixa
    IF                        ${caixa_aberto} != (\'FAIL\', "ElementNotFound: Element not found with locator \'Fechar Caixa\'")
    RPA.Windows.Click         Fechar Caixa
    RPA.Windows.Click         Sim
    Sleep                     2s
    RPA.Desktop.Press Keys    Esc
    Sleep                     2s
    RPA.Desktop.Press Keys    Enter                                                                                                
    Caixa Operador            
    RPA.Windows.Click         Abertura / Fechamento                                                                                
    END


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
    Salvar Impressão
