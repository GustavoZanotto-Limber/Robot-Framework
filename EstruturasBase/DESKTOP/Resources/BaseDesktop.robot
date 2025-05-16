*** Settings ***
#Esse arquivo comporta as keyword que carregam elementos para dentro do programa para posteriormente serem
#utilizados, assim quando temos varias suites de testes apenas importamos esse arquivo para a pasta o
#que otimiza a utilização do aplicativo.
Library    SikuliLibrary
Library    RPA.Desktop
Library    RPA.Windows    timeout=1s
Library    OperatingSystem
Library    SeleniumLibrary 



*** Variables ***
${front}
${nome_exe}
${achou}

*** Keywords ***
#As keywords e a setting funcionam basicamente de forma igual tanto no web quanto no desktop
#a mudança de um para o outro é na forma de pegar os elementos em tela, no web é muito mais facil pois temos
#alguns recursos como IDs, xpath, name, class, etc. Já no desktop utilizamos a biblioteca Sikuli
#Essa biblioteca permite tirar prints da tela para podermos localizar os elementos e permitir interagir com
#eles atraves do robot ou seja o sikuli é um meio termo assim como o selenium que permite a interação do
#codigo com o que tem em tela.

Carregar os elementos do app
    #Essa keyword "add Image Path" é da biblioteca Sikuli você pode conferir mais comandos
    #dessa biblioteca no link: https://rainmanwy.github.io/robotframework-SikuliLibrary/doc/SikuliLibrary.html
    Add Image Path    ${EXECDIR}\\EstruturasBase\\DESKTOP\\Elements

Cadastros
    SikuliLibrary.Click    Cadastros.png
    
Fechar janela
    Run Keyword And Ignore error   RPA.Windows.Click                 Maximizar    
    Set Anchor                     Aplicativo
    RPA.Windows.Click              Fechar
    Clear Anchor

    
Iniciar sessao        
    [Arguments]    ${nome_exe} 
    Carregar os elementos do app
    RPA.Desktop.Open Application    C:\\Limber\\ERP Executaveis\\${nome_exe}.exe
    Sleep                           1s 
    RPA.Windows.Click               Abrir
    Sleep                           2s
    RPA.Desktop.Press keys                      enter
    Sleep                           5s          Carregando a base...
    Type text                       1
    RPA.Desktop.Press keys                      enter
    RPA.Desktop.Press keys                      enter

Iniciar sessao Front     
    Carregar os elementos do app
    RPA.Desktop.Open Application    C:\\Limber\\Turismo-PARQUES-NATURAIS\\cde_win_bca_front6228.exe
    Sleep                           4s
    RPA.Windows.Click    Abrir
    Sleep                           2s
    RPA.Desktop.Press keys                      enter
    Sleep                           10s         Carregando a base...
    Type text                       1
    RPA.Desktop.Press keys                      enter
    RPA.Desktop.Press keys                      enter
    Sleep                           5s
    
Screenshot
    [Arguments]               ${janela}    ${Caminho}
    RPA.Windows.Screenshot    ${janela}    ${Caminho}.png

Terminar sessao
    Stop Remote Server

#O nome da aplication deve ser o mesmo que aparece no aplicativo na barra inferior
Encerrar teste front
    SikuliLibrary.Close application    [Limber Bilheteria Front - Standard Version]
    RPA.Desktop.Press Keys                         Left
    RPA.Desktop.Press Keys                         Enter

Encerrar tudo
    RPA.Desktop.Close all applications

repetidor de teclas
    [Arguments]               ${tecla}                   ${quantidade_de_clicks}    
    FOR                       ${quantidade_de_clicks}    IN RANGE                   1    ${quantidade_de_clicks}+1
    RPA.Desktop.Press Keys    ${tecla}
    END

Caso aconteça erro
    [Arguments]     ${Caminho_Screenshots}        ${nome_print}
    Set Global Timeout    0.5
    Set Wait Time    0.1 
    ${Erro}=                       Run Keyword And Ignore error      RPA.Windows.Get Text       Erro
    IF    ${Erro} != ('FAIL', "ElementNotFound: Element not found with locator 'Erro'")
         Fail        Ocorreu um erro ao tentar clicar no campo em tela ou fechar a janela.
    END   
    Run Keyword If Test Failed      Run Keyword And Ignore error    RPA.Windows.Click               Maximizar
    Run Keyword And Ignore error    Remove File                   ${Caminho_Screenshots}${nome_print}.png
    Run Keyword If Test Failed      Take Screenshot    ${Caminho_Screenshots}Erro ${nome_print}.png  
    Run Keyword If Test Failed      RPA.Desktop.Press Keys          Enter
    Run Keyword If Test Failed      Run Keyword And Ignore error    RPA.Windows.Click               OK    
    Set Anchor                      Aplicativo
    Run Keyword If Test Failed      Run Keyword And Ignore error    RPA.Windows.Click               Fechar
    Clear Anchor
    
    