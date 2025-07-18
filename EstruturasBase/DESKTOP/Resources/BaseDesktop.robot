*** Settings ***
#Esse arquivo comporta as keyword que carregam elementos para dentro do programa para posteriormente serem
#utilizados, assim quando temos varias suites de testes apenas importamos esse arquivo para a pasta o
#que otimiza a utilização do aplicativo.
# Library    SikuliLibrary
Library    RPA.Desktop
Library    RPA.Windows    timeout=1s
Library    OperatingSystem
Library    SeleniumLibrary 
Library    Process
Library    RPA.Excel.Files
Library    RPA.Excel.Application

*** Variables ***
${front}
${nome_exe}
${achou}
${Erro}
${i}=    0

*** Keywords ***
#As keywords e a setting funcionam basicamente de forma igual tanto no web quanto no desktop
#a mudança de um para o outro é na forma de pegar os elementos em tela, no web é muito mais facil pois temos
#alguns recursos como IDs, xpath, name, class, etc. Já no desktop utilizamos a biblioteca Sikuli
#Essa biblioteca permite tirar prints da tela para podermos localizar os elementos e permitir interagir com
#eles atraves do robot ou seja o sikuli é um meio termo assim como o selenium que permite a interação do
#codigo com o que tem em tela.

# Carregar os elementos do app
#     #Essa keyword "add Image Path" é da biblioteca Sikuli você pode conferir mais comandos
#     #dessa biblioteca no link: https://rainmanwy.github.io/robotframework-SikuliLibrary/doc/SikuliLibrary.html
#     Add Image Path    ${EXECDIR}\\EstruturasBase\\DESKTOP\\Elements

Cadastros
    Sleep                     1s
    RPA.Desktop.Press Keys    Alt
    RPA.Desktop.Press Keys    Enter
    
Fechar janela
    RPA.Desktop.Press Keys    alt     -
    RPA.Windows.Click         Maximizar
    Sleep                     0.3s
    RPA.Desktop.Press Keys    alt     -
    RPA.Windows.Click         Fechar
    

Fechar com Sim
    Fechar janela
    RPA.Windows.Click       Sim

Fechar com OK
    Fechar janela
    RPA.Windows.Click       OK
    
Iniciar sessao        
    [Arguments]    ${nome_exe} 
    # Carregar os elementos do app
    RPA.Desktop.Open Application    C:\\Limber\\ERP Executaveis\\${nome_exe}.exe
    Sleep                           2s 
    RPA.Windows.Click               Abrir
    Sleep                           2s
    RPA.Desktop.Press keys                      enter
    Sleep                           5s          Carregando a base...
    Type text                       1
    RPA.Desktop.Press keys                      enter
    RPA.Desktop.Press keys                      enter
    Sleep                           1s

Iniciar sessao e abrir caixa
    [Arguments]    ${nome_exe} 
    RPA.Desktop.Open Application    C:\\Limber\\ERP Executaveis\\${nome_exe}.exe
    Sleep                           2s 
    RPA.Windows.Click               Abrir
    Sleep                           2s
    RPA.Desktop.Press keys                      enter
    Sleep                           5s          Carregando a base...
    Type text                       1
    RPA.Desktop.Press keys                      enter
    RPA.Desktop.Press keys                      enter
    Sleep                           1s
    Abrir caixa operador

Consultas Front
    [Arguments]    ${janela}    
    Cadastros
    repetidor de teclas    right    2
    RPA.Windows.Click      ${janela}

    
Screenshot
    [Arguments]               ${janela}    ${Caminho}
    RPA.Windows.Screenshot    ${janela}    ${Caminho}.png

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
    Sleep                  3s
    RPA.Windows.Get Text   Emissão de Bilhetes (1)

Ir Para Reimpressão de Bilhetes
    Cadastros
    Repetidor de teclas    right    1
    RPA.Windows.Click      Reimpressão de Bilhetes
    Sleep                  2s
    RPA.Windows.Get Text   Reimpressão de Bilhetes (1)
    

Exportar bilhetes vendidos para bloco de notas
    Set Anchor    Panel1
    RPA.Windows.Right Click    Bilhetes
    Clear Anchor
    Repetidor de teclas        down    4
    RPA.Desktop.Press Keys     enter
    repetidor de teclas        down    1
    RPA.Desktop.Press Keys     enter
    Sleep                      5s
    ${texto}=    RPA.Windows.Get Value      Editor de Texto		
    RETURN    ${texto}

Analisa texto dos bilhetes vendidos
    ${bilhetes_vendidos}=    Exportar bilhetes vendidos para bloco de notas
    Should Contain    ${bilhetes_vendidos}    5875 - Z - Bilhete integrado    4321 - CATEGORIA 1    4369 - CATEGORIA 2 - INTEGRADA    4389 - CATEGORIA 3 - INTEGRADA
    RPA.Desktop.Press Keys    Alt    F4

Analisa texto da forma de pagamento
    ${pagamentos}=   Exportar pagamentos da venda para bloco de notas
    Should Contain   ${pagamentos}    111,00    DINHEIRO  
    RPA.Desktop.Press Keys    Alt    F4
    Fechar janela  

Exportar pagamentos da venda para bloco de notas
    Set Anchor    Panel1
    RPA.Windows.Right Click    Formas de Pagamento
    Clear Anchor
    Repetidor de teclas        down    4
    RPA.Desktop.Press Keys     enter
    repetidor de teclas        down    1
    RPA.Desktop.Press Keys     enter
    Sleep                      5s
    ${texto}=    RPA.Windows.Get Value      Editor de Texto		
    RETURN    ${texto}

Rolar barra até o Final
    RPA.Windows.Click       Vertical
    RPA.Desktop.Press Keys  END

Carregar
    RPA.Windows.Click       Carregar

Selecionar a ultima venda para reimpressão
    [Arguments]     ${ação}
    RPA.Desktop.Press Keys     0
    RPA.Desktop.Press Keys     Enter
    Sleep                      1s
    RPA.Windows.Click          OK
    Sleep                      1s
    RPA.Desktop.Press Keys     Ctrl    Down
    RPA.Windows.Click          Confirmar
    RPA.Desktop.Press Keys     Alt    M
    RPA.Desktop.Press Keys     ${ação}

Selecionar o bilhete
    [Arguments]    ${categoria}
    #Selecionando o bilhete
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    enter
    Sleep                     1s
    RPA.Desktop.Press Keys    F6
    repetidor de teclas       Down    7
    RPA.Windows.Click         Confirmar
    Sleep                     1s
    #Selecionando categorias
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    enter
    Sleep                     1s
    RPA.Desktop.Press Keys    F6
    Sleep                     0.5s
    Repetidor de teclas       down    ${categoria}   
    RPA.Windows.Click         Confirmar
    Sleep                     1s
    Repetidor de teclas       enter    6

Finalizar compra 
    RPA.Desktop.Press Keys    F5
    RPA.Desktop.Press Keys    space
    RPA.Desktop.Press Keys    enter
    
Abrir caixa operador
    Caixa Operador
    RPA.Windows.Click    Abertura / Fechamento
    Fechar caixa caso esteja aberto
    Abrir Caixa
 
Salvo a impressão do RPS
    Sleep                         5s
    RPA.Desktop.Type Text         RPS
    RPA.Windows.Click             Salvar
    Sleep                         1s
    RPA.Windows.Click             Sim

Salvo a Impressão    
    Sleep                         5s
    RPA.Desktop.Type Text         Impressão do bilhete
    RPA.Windows.Click             Salvar
    Sleep                         1s
    RPA.Windows.Click             Sim
    Sleep                         1s

Salvo a Reimpressão  
    [Arguments]    ${nome_do_arquivo}
    Sleep                         1s  
    RPA.Desktop.Type Text         ${nome_do_arquivo}
    RPA.Windows.Click             Salvar
    Sleep                         1s
    RPA.Windows.Click             Sim

Fechar caixa caso esteja aberto
    ${caixa_aberto}=          Run Keyword And Ignore error              RPA.Windows.Get Text    Fechar Caixa
    IF                        ${caixa_aberto} != (\'FAIL\', "ElementNotFound: Element not found with locator \'Fechar Caixa\'")
    RPA.Windows.Click         Fechar Caixa
    RPA.Windows.Click         Sim
    Sleep                     3s
    RPA.Desktop.Press Keys    Esc
    Sleep                     3s
    RPA.Desktop.Press Keys    Enter                                                                                                
    Caixa Operador            
    RPA.Windows.Click         Abertura / Fechamento                                                                                
    END

Abrir arquivo
    [Arguments]    ${Caminho_arquivo}    ${nome_Arquivo_com_o_tipo}
    Sleep                     1s
    Windows Run               a                 
    Sleep                     1s
    Run Keyword and Ignore error     RPA.Windows.Click         OK
    Sleep                     1s
    RPA.Desktop.Type Text     ${Caminho_arquivo}${nome_Arquivo_com_o_tipo}
    RPA.Desktop.Press Keys    enter


Repetidor de teclas
    [Arguments]               ${tecla}                   ${quantidade_de_clicks}    
    FOR                       ${quantidade_de_clicks}    IN RANGE                   1    ${quantidade_de_clicks}+1
    RPA.Desktop.Press Keys    ${tecla}     
    END

Repetidor de 2 teclas
    [Arguments]               ${tecla}             ${tecla2}                             ${quantidade_de_clicks}    
    FOR                       ${quantidade_de_clicks}    IN RANGE                   1    ${quantidade_de_clicks}+1
    RPA.Desktop.Press Keys    ${tecla}             ${tecla2}
    END

Encerrar Tudo
    RPA.Desktop.Close All Applications



Caso aconteça erro
    [Arguments]     ${Caminho_Screenshots}        ${nome_print}
    Set Global Timeout    0.01
    Set Wait Time    0.01
    # ${Erro}=                       Run Keyword And Ignore error     RPA.Windows.Get Element    Erro
    # IF    ${Erro} != ('FAIL', "ElementNotFound: Element not found with locator 'Erro'")
    #     Fail                       Ocorreu um erro ao tentar clicar no campo em tela ou fechar a janela.
        Run Keyword If Test Failed        Run Keyword And Ignore error    Remove File                     ${Caminho_Screenshots}${nome_print}.png
        Run Keyword If Test Failed        Take Screenshot                 ${Caminho_Screenshots}Erro ${nome_print}.png
        Run Keyword If Test Failed        Run Keyword And Ignore error    RPA.Desktop.Press Keys          Alt    -
        Run Keyword If Test Failed        Run Keyword And Ignore error    RPA.Windows.Click               Maximizar
        Run Keyword If Test Failed        Run Keyword And Ignore error    RPA.Desktop.Press Keys          Alt    -
        Run Keyword If Test Failed        Run Keyword And Ignore error    RPA.Windows.Click               Fechar   
        # Run Keyword If Test Failed      Run Keyword And Ignore error    RPA.Desktop.Press Keys          esc
        # Run Keyword If Test Failed      Run Keyword And Ignore error    RPA.Windows.Click               Confirmar
        # Run Keyword If Test Failed      Run Keyword And Ignore error    RPA.Windows.Click               Cancelar
        # Run Keyword If Test Failed      Run Keyword And Ignore error    RPA.Windows.Click               Cancel
        # Run Keyword If Test Failed      Run Keyword And Ignore error    RPA.Desktop.Press Keys          esc    
        # Run Keyword If Test Failed      Run Keyword And Ignore error    Set Anchor                      Aplicativo
        
        Clear Anchor
    # END
    
    # Run Keyword If Test Failed      Run Keyword And Ignore error    RPA.Desktop.Press Keys          Enter  
     

Caso aconteca erro 2
    [Arguments]     ${Caminho_Screenshots}        ${nome_print}    ${nome_exe}
        Run Keyword If Test Failed    Run Keyword And Ignore error    Remove File                     ${Caminho_Screenshots}${nome_print}.png
        Run Keyword If Test Failed    Take Screenshot                 ${Caminho_Screenshots}Erro ${nome_print}.png
        Run Keyword If Test Failed    Encerrar Tudo
        Run Keyword If Test Failed    Iniciar sessao    ${nome_exe}