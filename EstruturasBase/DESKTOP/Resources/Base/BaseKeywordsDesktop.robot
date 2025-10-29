*** Settings ***
#Esse arquivo comporta as keyword que carregam elementos para dentro do programa para posteriormente serem
#utilizados, assim quando temos varias suites de testes apenas importamos esse arquivo para a pasta o
#que otimiza a utilização do aplicativo.
# Library    SikuliLibrary
Documentation   Keywords para automação DESKTOP com Robot Framework e RPA Framework
Library    RPA.Desktop
Library    RPA.Windows    timeout=1s
Library    OperatingSystem
Library    Process
Library    RPA.Excel.Files
Library    RPA.Excel.Application
Library    String
Library    Collections
Library    RPA.PDF


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
    Sleep                     0.5s
    RPA.Desktop.Press Keys    Alt
    RPA.Desktop.Press Keys    Enter
    
Fechar janela
    RPA.Desktop.Press Keys    Ctrl     F4
    Sleep                     0.5s        

Fechar com Sim
    Fechar janela
    Sleep                   0.5s
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
    Sleep                           2s

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
    Sleep                           2s
    Abrir caixa operador

Consultas Front
    [Arguments]    ${janela}    
    Cadastros
    repetidor de teclas    right    2
    RPA.Windows.Click      ${janela}

Ir para:
    [Arguments]    ${janela}    ${sessao}    ${nome_tela}   ${sub_sessão1}=${None}    ${sub_sessão2}=${None}    ${sub_sessão3}=${None}
    Cadastros
    repetidor de teclas    right    ${sessao}
    Sleep                1s
    IF    $sub_sessão1 != None
        RPA.Windows.Click   ${sub_sessão1}
        IF    $sub_sessão2 != None
            RPA.Windows.Click  ${sub_sessão2}
            IF    $sub_sessão3 != None
                RPA.Windows.Click  ${sub_sessão3}
            END
        END      
    END
    Sleep                  1s
    RPA.Windows.Click      ${janela}
    RPA.Windows.Get Text    ${nome_tela}

Repetidor de teclas em sequencia
    [Arguments]               ${tecla1}                  ${tecla2}                       ${quantidade_de_clicks}        ${quantidade_de_repetições_tecla1}=${None}    ${quantidade_de_repetições_tecla2}=${None}
    FOR                       ${quantidade_de_clicks}    IN RANGE                   1    ${quantidade_de_clicks}+1
        IF    ${quantidade_de_repetições_tecla1} != None
            FOR                       ${quantidade_de_repetições_tecla1}    IN RANGE                   1    ${quantidade_de_repetições_tecla1}+1
                RPA.Desktop.Press Keys    ${tecla1}  
                Sleep                     0.5
            END
        ELSE
            RPA.Desktop.Press Keys    ${tecla1}  
        END
        
        IF    ${quantidade_de_repetições_tecla2} != None
            FOR                       ${quantidade_de_repetições_tecla2}    IN RANGE                   1    ${quantidade_de_repetições_tecla2}+1
                RPA.Desktop.Press Keys    ${tecla2}  
                Sleep                     0.5
            END
        ELSE
            RPA.Desktop.Press Keys    ${tecla2}  
            Sleep                     0.5
        END

    END
Capturar mensagem em tela
    [Arguments]     ${caixa_de_mensagem}
    Set Anchor      ${caixa_de_mensagem}
    ${mensagem}=    RPA.Windows.Get Attribute    type:TextControl      Name 
    Log    ${mensagem}  
    Clear Anchor
    RETURN    ${mensagem}

Screenshot
    [Arguments]               ${janela}    ${Caminho}
    RPA.Windows.Screenshot    ${janela}    ${Caminho}.png

Consultar Cadastros
    [Arguments]    ${qtd_cliques}
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    RPA.Desktop.Press Keys    F6
    Sleep                     0.5s
    Repetidor de teclas       Down    ${qtd_cliques}
    RPA.Windows.Click         Confirmar

Caixa Operador
    Cadastros
    sleep                  0.5s
    repetidor de teclas    right    4

Abrir Caixa
    Sleep                               0.5s
    RPA.Windows.Click                   Abrir Caixa
    RPA.Desktop.Press Keys              Enter
    RPA.Desktop.Press Keys              Enter

Ir Para Emissão de Bilhetes
    Cadastros
    Repetidor de teclas    right    1
    TRY
        Run Keyword And Ignore Error   RPA.Windows.Click      Emissão de Bilhetes
    EXCEPT    Erro:*
        Repetidor de teclas    right    1
        RPA.Windows.Click      Emissão de Bilhetes
    END
    Sleep                  5s
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
    Sleep                      3s
    ${texto}=    RPA.Windows.Get Value      Editor de texto		
    RETURN    ${texto}

Analisa texto dos bilhetes vendidos
    [Arguments]    @{Texto_no_bilhete}
    ${bilhetes_vendidos}=    Exportar bilhetes vendidos para bloco de notas
    FOR    ${item}    IN    @{Texto_no_bilhete}
    Should Contain    ${bilhetes_vendidos}        ${item}     
    END
    RPA.Desktop.Press Keys    Alt    F4

Analisa texto da forma de pagamento (contém)
    [Arguments]    ${metodo}    ${valor}
    ${pagamentos}=   Exportar pagamentos da venda para bloco de notas
    Should Contain   ${pagamentos}    ${metodo}    ${valor} 
    RPA.Desktop.Press Keys    Alt    F4
    Fechar janela  

Analisa texto da forma de pagamento (não contém)
    [Arguments]    ${metodo}    ${valor}
    ${pagamentos}=   Exportar pagamentos da venda para bloco de notas
    Should not Contain   ${pagamentos}    ${metodo}    ${valor} 
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
    Sleep                      3s
    ${texto}=    RPA.Windows.Get Value      Editor de texto		
    RETURN    ${texto}

Rolar barra até o Final
    Repetidor de teclas     tab    2
    RPA.Desktop.Press Keys  F6
    RPA.Desktop.Press Keys  Enter
    RPA.Desktop.Press Keys  END

Selecionar bilhete preenchendo pais, estado e município
    [Arguments]    ${bilhete}    ${categoria}
    #Selecionando o bilhete    
    Escrever para consultar   ${bilhete}
    #Selecionando categorias
    Escrever para consultar   ${categoria}
    RPA.Desktop.Press Keys    enter
    RPA.Desktop.Press Keys    1
    RPA.Desktop.Press Keys    enter
    RPA.Desktop.Type Text     18
    RPA.Desktop.Press Keys    enter
    RPA.Desktop.Type Text     4218
    Repetidor de teclas       Enter    4   
    
Preencher dados do visitante
    RPA.Desktop.Press Keys    F5
    Sleep                     1s 
    RPA.Desktop.Type Text     Gustavo Zanotto Automatizado
    RPA.Desktop.Press Keys    enter
    RPA.Desktop.Type Text     09285844960
    RPA.Desktop.Press Keys    enter
    RPA.Desktop.Type Text     22082000
    RPA.Desktop.Press Keys    enter
    RPA.Desktop.Type Text     5546999999999
    RPA.Desktop.Press Keys    Tab
    Repetidor de teclas       Down    6
    RPA.Desktop.Press Keys    Tab
    Repetidor de teclas       Down    1
    Finalizar compra

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
    [Arguments]    ${bilhete}    ${categoria}
    #Selecionando o bilhete
    Escrever para consultar   ${bilhete}
    #Selecionando categorias
    Escrever para consultar   ${categoria}
    Repetidor de teclas       enter    6

Selecionar o bilhete abrir filtro
    [Arguments]    ${bilhete}    ${categoria}
    #Selecionando o bilhete
    Escrever para consultar   ${bilhete}
    #Selecionando categorias
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    enter
    Sleep                     1s
    RPA.Desktop.Press Keys    F6
    repetidor de teclas       Down    ${categoria}     0.5
    Sleep                     2s
    RPA.Windows.Click         Confirmar
    Sleep                     1s
    Repetidor de teclas       enter    6

Selecionar o bilhete e retornar quantidade de vagas
    [Arguments]    ${bilhete}    ${categoria}
    #Selecionando o bilhete
    Escrever para consultar   ${bilhete}   
    Sleep                     1s
    #Selecionando categorias
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    enter
    Sleep                     1s
    RPA.Desktop.Press Keys    F6
    repetidor de teclas       Down    ${categoria} 
    Sleep                     2s
    RPA.Windows.Click         Confirmar
    Sleep                     1s
    ${qtd_vagas}=    Coleta valor atraves da planilha
    repetidor de teclas       enter    6
    RETURN                    ${qtd_vagas}

Selecionar o bilhete e retornar quantidade de vagas (categoria)
    [Arguments]    ${bilhete}    ${categoria}
    #Selecionando o bilhete
    Escrever para consultar   ${bilhete}
    #Selecionando categorias
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    enter
    Sleep                     1s
    RPA.Desktop.Press Keys    F6
    repetidor de teclas       Down    ${categoria}
    Sleep                     2s
    RPA.Windows.Click         Confirmar
    Sleep                     1s
    Sleep                     1s
    ${qtd_vagas}=    Coleta valor atraves da planilha
    repetidor de teclas       enter    6
    RETURN                    ${qtd_vagas}
    
    
Coleta valor atraves da planilha
    [arguments]    ${qtd_direita}=3    ${qtd_baixo}=1
    RPA.Desktop.Press Mouse Button    Right
    RPA.Desktop.Release Mouse Button    Right
    Repetidor de teclas        Down    4
    RPA.Desktop.Press Keys     enter
    Sleep                      1s        
    Repetidor de teclas        down    4
    RPA.Desktop.Press Keys     enter
    Sleep                      10s
    Repetidor de teclas        Right    ${qtd_direita}
    Repetidor de teclas        Down     ${qtd_baixo}
    RPA.Desktop.Press Keys     Ctrl     C
    RPA.Desktop.Press Keys     Ctrl     V
    Sleep                      1s
    ${valor}=    RPA.Desktop.Get Clipboard Value
    RPA.Desktop.Press Keys     Alt    F4
    Sleep                      1s
    RPA.Desktop.Press Keys     right
    RPA.Desktop.Press Keys     enter
    RETURN    ${valor}

Trocar Operação
    [Arguments]    ${operacao}
    RPA.Desktop.Press Keys     Shift    Tab
    Repetidor de teclas        down     ${operacao} 
    RPA.Desktop.Press Keys     Enter

Selecionar o bilhete e o convênio
    [Arguments]    ${numero_bilhete}=5875    ${qtd_clicks_categoria}=4
    #Selecionando o bilhete
    Escrever para consultar   ${numero_bilhete}
    #Selecionando categorias
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    enter
    Sleep                     1s
    RPA.Desktop.Press Keys    F6
    Sleep                     0.5s
    Repetidor de teclas       down    ${qtd_clicks_categoria}   
    Sleep                     1s
    RPA.Windows.Click         Confirmar
    Sleep                     1s
    RPA.Desktop.Press Keys    right
    RPA.Desktop.Press Keys     Ctrl     C
    RPA.Desktop.Press Keys     Ctrl     V
    Sleep                      1s
    ${valor}=    RPA.Desktop.Get Clipboard Value
    RPA.Windows.Click         Confirmar
    Sleep                     0.5s
    Repetidor de teclas       enter    6
    RETURN    ${valor}

Finalizar compra 
    RPA.Desktop.Press Keys    F5
    RPA.Desktop.Press Keys    space
    RPA.Desktop.Press Keys    enter
    
Abrir caixa operador
    Caixa Operador
    RPA.Windows.Click    Abertura / Fechamento
    Fechar caixa caso esteja aberto
    Abrir Caixa

Fechar caixa e salvar a impressão
    Ir para:                  Abertura / Fechamento  4    Controle de Caixa (1)
    RPA.Windows.Click         Fechar Caixa
    ${tempo}=                 Get Time
    RPA.Windows.Click         Sim
    Sleep                     3s
    RPA.Desktop.Type Text     Fechamento de Caixa
    RPA.Desktop.Press Keys    Enter
    Sleep                     3s
    RPA.Windows.Click         Sim
    Sleep                     3s
    RPA.Desktop.Press Keys    Enter
    RETURN    ${tempo}
 
Salvo a impressão do RPS
    Sleep                         6s
    RPA.Desktop.Type Text         RPS
    Sleep                         5s
    RPA.Windows.Click             Salvar
    Sleep                         2s
    RPA.Windows.Click             Sim

Salvo a Impressão
    [Arguments]    ${nome_do_arquivo}    
    Sleep                         6s
    RPA.Desktop.Type Text         ${nome_do_arquivo}    
    RPA.Windows.Click             Salvar
    Sleep                         2s
    RPA.Windows.Click             Sim
    Sleep                         1s

Salvo a Reimpressão  
    [Arguments]    ${nome_do_arquivo}
    Sleep                         1s  
    RPA.Desktop.Type Text         ${nome_do_arquivo}
    RPA.Windows.Click             Salvar
    Sleep                         2s
    RPA.Windows.Click             Sim

Fechar caixa caso esteja aberto
    Sleep                     2s
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

Consultar ultimo registro
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s
    RPA.Desktop.Press Keys    F6
    RPA.Desktop.Press Keys    Down
    RPA.Desktop.Press Keys    CTRL    End
    Sleep                     1s
    RPA.Windows.Click         Confirmar

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
    [Arguments]               ${tecla}                   ${quantidade_de_clicks}        ${sleep}=0.1
    FOR                       ${quantidade_de_clicks}    IN RANGE                   1    ${quantidade_de_clicks}+1
    Sleep                     ${sleep}
    RPA.Desktop.Press Keys    ${tecla}     
    END

Repetidor de 2 teclas
    [Arguments]               ${tecla}             ${tecla2}                             ${quantidade_de_clicks}    
    FOR                       ${quantidade_de_clicks}    IN RANGE                   1    ${quantidade_de_clicks}+1
    RPA.Desktop.Press Keys    ${tecla}             ${tecla2}
    END

Salvar arquivo    
    [Arguments]    ${URL_nome}    ${tipo_arquivo}
    RPA.Windows.Click       Arquivo
    RPA.Windows.Click       Abrir
    Repetidor de teclas     Down                   ${tipo_arquivo}
    Sleep                   1s
    RPA.Desktop.Press Keys  Enter
    RPA.Desktop.Press Keys  Shift    Tab
    Sleep                   1s
    RPA.Desktop.Type Text   ${URL_nome}
    Repetidor de teclas     TAB                   2
    Sleep                   1s
    RPA.Desktop.Press Keys  Enter

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
     
Pegar Hora atual
    [Arguments]    ${tempo}
    ${tempo1_split}=    Split String    ${tempo}    ${SPACE}
    ${hora_minuto_segundo1}=    Get From List    ${tempo1_split}    1 
    ${tempo_final1}=    Somar Tempos    ${hora_minuto_segundo1}    00:00:00
    RETURN    ${tempo_final1}

Dividir Texto
    [Arguments]    ${texto}    ${onde_dividir}    ${N_ao_vetor}
    ${texto_split1}=    Split String    ${texto}    ${onde_dividir}
    ${texto_final1}=    Get From List    ${texto_split1}    ${N_ao_vetor} 
    RETURN    ${texto_final1}

Caso aconteca erro 2
    [Arguments]     ${Caminho_Screenshots}        ${nome_print}    ${nome_exe}
        Run Keyword If Test Failed    Run Keyword And Ignore error    Remove File                     ${Caminho_Screenshots}${nome_print}.png
        Run Keyword If Test Failed    Take Screenshot                 ${Caminho_Screenshots}Erro ${nome_print}.png
        Run Keyword If Test Failed    Encerrar Tudo
        Run Keyword If Test Failed    Iniciar sessao    ${nome_exe}


Somar Tempos
    [Arguments]    ${tempo1}    ${tempo2}
    
    @{t1}=    Split String    ${tempo1}    :
    @{t2}=    Split String    ${tempo2}    :

    ${h1}=    Convert To Integer    ${t1[0]}
    ${m1}=    Convert To Integer    ${t1[1]}
    ${s1}=    Convert To Integer    ${t1[2]}

    ${h2}=    Convert To Integer    ${t2[0]}
    ${m2}=    Convert To Integer    ${t2[1]}
    ${s2}=    Convert To Integer    ${t2[2]}

    ${total1}=    Evaluate    (${h1}*3600 + ${m1}*60 + ${s1})
    ${total2}=    Evaluate    (${h2}*3600 + ${m2}*60 + ${s2})
    ${total}=     Evaluate    ${total1} + ${total2}

    ${horas}=     Evaluate    int(${total} / 3600)
    ${resto}=     Evaluate    ${total} % 3600
    ${minutos}=   Evaluate    int(${resto} / 60)
    ${segundos}=  Evaluate    ${resto} % 60

    ${resultado}=    Evaluate    '{:02}:{:02}'.format(${horas}, ${minutos})
    RETURN    ${resultado}

Formatar Data Para DD/MM/AAAA
    [Arguments]    @{data_lista}
    ${dia}=       Convert To Integer    ${data_lista[2]}
    ${mes}=       Convert To Integer    ${data_lista[1]}
    ${ano}=       Convert To Integer    ${data_lista[0]}
    
    ${data_formatada}=    Evaluate    '{:0>2}/{:0>2}/{:04}'.format(int(${dia}), int(${mes}), int(${ano}))
    RETURN    ${data_formatada}

Gerar aquivo de resumo Geral
    Ir para:    Resumo Geral            3            Resumo de Movimentação (1)
    sleep                               1s
    Repetidor de teclas                 enter        3
    sleep                               1s
    Repetidor de teclas em sequencia    1            Enter        1
    sleep                               1s
    Repetidor de teclas                 enter        1
    sleep                               1s
    Salvar arquivo                      C:\\Users\\Gustavo Zanotto\\Documents\\Testes Regressivos\\Resumo Geral    2

Pegar informações da 1° Pagina do arquivo
    [Arguments]     ${Caminho_impressão}        ${nome_do_arquivo}        ${Nome_da_tela}       ${Caminho_Screenshot}     ${Nome_da_screenshot}
    Sleep                     1s
    Abrir arquivo             ${Caminho_impressão}  ${nome_do_arquivo} 
    Sleep                     6s
    RPA.Windows.Get Element   ${Nome_da_tela}
    BaseKeywordsDesktop.Screenshot    ${Nome_da_tela}        ${Caminho_Screenshot}${Nome_da_screenshot}    
    ${texto}=                 Get Text From Pdf      ${Caminho_impressão}${nome_do_arquivo}  
    ${keys}=                  Get Dictionary Keys    ${texto}
    ${primeira}=              Get From List          ${keys}    0
    ${pagina1}=               Get From Dictionary    ${texto}    ${primeira}
    RETURN    ${pagina1}

Exportar para bloco de notas
    [Arguments]    ${nome_painel}    ${posição_bloco}    
    RPA.Windows.Right Click    ${nome_painel}
    Repetidor de teclas        down    4
    RPA.Desktop.Press Keys     enter
    repetidor de teclas        down    ${posição_bloco}
    RPA.Desktop.Press Keys     enter
    Sleep                      5s
    ${texto}=    RPA.Windows.Get Value      Editor de texto		
    RETURN    ${texto}

Escrever para consultar
    [Arguments]    ${texto}
    RPA.Desktop.Type Text     ${texto}
    Sleep                     1s
    RPA.Desktop.Press Keys    enter
    Sleep                     1s
