*** Settings ***
Library    RPA.Desktop
Library    RPA.Windows    
Library    OperatingSystem
Library    SeleniumLibrary 
Library    Process
Library    RPA.PDF
Library    Collections
Library    String
Resource   BaseDesktop.robot

*** Variables ***
${qtd_vagas}

*** Keywords ***

# ****** BDDs **********
#----------------------------------------DADO----------------------------------------
Dado que realizei uma venda
    Ir Para Emissão de Bilhetes
    Selecionar o bilhete   12    1
    Finalizar compra

Dado que realizei uma venda com convênio
    Ir Para Emissão de Bilhetes
    Selecionar o bilhete e o convênio
    Finalizar compra

Dado que realizei uma venda com dois bilhetes
    Ir Para Emissão de Bilhetes
    Selecionar o bilhete    12    1
    Selecionar o bilhete    13    1
    RPA.Desktop.Press Keys  Enter
    Finalizar compra

Dado que realizei uma venda com multiplas categorias
    Ir Para Emissão de Bilhetes
    Selecionar o bilhete    12    1
    Sleep                   1s
    Selecionar o bilhete    12    2
    RPA.Desktop.Press Keys  Enter
    Sleep                   1s
    Selecionar o bilhete    12    3
    RPA.Desktop.Press Keys  Enter
    Finalizar compra

Dado que realizei uma reserva preenchendo os dados do titular e visitante
    Ir Para Emissão de Bilhetes
    Selecionar bilhete preenchendo pais, estado e município   14    1
    Sleep                   1s        
    Preencher dados do visitante
    Finalizar compra

Dado que realizei uma reserva como outras receitas
    Ir Para Emissão de Bilhetes
    Trocar Operação  6  
    Selecionar o bilhete   1    1
    Finalizar compra

Dado que realizei uma reserva verificando a quantidade de bilhetes
    Ir Para Emissão de Bilhetes
    ${qtd_vagas_string}=   Selecionar o bilhete e retornar quantidade de vagas   12    1
    ${qtd_vagas}=        Convert to Integer    ${qtd_vagas_string}
    Sleep    1s
    Finalizar compra
    RETURN    ${qtd_vagas}

Dado que realizei uma reserva com fundo iguaçu
    Ir Para Emissão de Bilhetes
    RPA.Desktop.Press Keys  F4
    Selecionar o bilhete    13    1
    Finalizar compra

Dado que realizei uma reserva com valor Zerado
    Ir Para Emissão de Bilhetes
    Selecionar o bilhete    22   1
    RPA.Desktop.Press Keys  F5

Dado que realizei um novo cadastro de suprimento
    Caixa Operador
    RPA.Windows.Click         Suprimento / Sangria
    RPA.Windows.Click         Novo
    Sleep                     1s
    RPA.Desktop.Press Keys    Down
    RPA.Desktop.Press Keys    Enter
    RPA.Desktop.Type Text     200,00
    RPA.Desktop.Press Keys    Enter
    Consultar Cadastros       4
    RPA.Desktop.Type Text     Suprimento gerado a partir de testes automatizados

    RPA.Windows.Click         Confirmar

Dado que realizei um novo cadastro de Sangria
    Caixa Operador
    RPA.Windows.Click         Suprimento / Sangria
    RPA.Windows.Click         Novo
    Sleep                     1s
    RPA.Desktop.Press Keys    Down
    RPA.Desktop.Press Keys    Down
    RPA.Desktop.Press Keys    Enter
    RPA.Desktop.Type Text     200,00
    RPA.Desktop.Press Keys    Enter
    Consultar Cadastros       4
    RPA.Desktop.Type Text     Sangria gerado a partir de testes automatizados
    RPA.Windows.Click         Confirmar

Dado que vou consultar um cadastro de suprimento/sangria
    Caixa Operador
    RPA.Windows.Click         Suprimento / Sangria
    
Dado que realizei um novo cadastro de Sangria E Suprimento
    Dado que realizei um novo cadastro de Suprimento
    ${tempo1}=  Get Time   
    ${tempo1_split}=    Split String    ${tempo1}    ${SPACE}
    ${hora_minuto_segundo1}=    Get From List    ${tempo1_split}    1 
    ${tempo_final1}=    Somar Tempos    ${hora_minuto_segundo1}    00:01:34  
    Quando salvo o arquivo de suprimento
    Dado que realizei um novo cadastro de Sangria
    ${tempo2}=  Get Time   
    ${tempo2_split}=    Split String    ${tempo2}    ${SPACE}
    ${hora_minuto_segundo2}=    Get From List    ${tempo2_split}    1  
    ${tempo_final2}=    Somar Tempos    ${hora_minuto_segundo2}    00:01:35  
    @{ano_mes_dia}=  Get Time	year month day 
    ${data_formatada}=    Formatar Data Para DD/MM/AAAA    @{ano_mes_dia} 
    Quando salvo o arquivo de Sangria
    @{tempos}=  Create List    ${data_formatada}    ${tempo_final1}    ${tempo_final2}    (-) Sangria    (+) Suprimento
    RETURN    @{tempos}
    
    
#----------------------------------------QUANDO----------------------------------------
Quando imprimo o bilhete
    Salvo a Impressão do RPS
    Salvo a Impressão    Impressão do Bilhete
    Sleep                1s
    Fechar com Sim
    
Quando preencho a observação 
    RPA.Desktop.Type Text     Gustavo Zanotto Automatizado
    RPA.Desktop.Press Keys    Enter
    RPA.Desktop.Type Text     Liberado pelos teste automatizados
    RPA.Desktop.Press Keys    Enter
    Finalizar compra
    Sleep                     4s    
    RPA.Windows.Click         Fechar
    Fechar com Sim

Quando finalizo o pagamento 
    [Arguments]    ${qtd_de_bilhetes}
    Sleep                        5s
    RPA.Windows.Click            Fechar
    FOR    ${qtd_de_bilhetes}    IN RANGE    0    ${qtd_de_bilhetes}
    RPA.Windows.Click            Fechar
    Sleep                5s
    END
    Fechar janela
    RPA.Windows.Click    Sim
 
Quando finalizo o pagamento (sem fechar a janela)
    [Arguments]    ${qtd_de_bilhetes}
    Sleep                        5s
    RPA.Windows.Click            Fechar
    FOR    ${qtd_de_bilhetes}    IN RANGE    0    ${qtd_de_bilhetes}
    RPA.Windows.Click            Fechar
    Sleep                5s
    END
    
Quando peço a Reimpressão do bilhete
    Ir Para Reimpressão de Bilhetes
    Selecionar a ultima venda para reimpressão    F5
    Salvo a Reimpressão    Reimpressão do Bilhete
    Sleep                  1s
    Fechar Janela

Quando salvo o arquivo de suprimento
    Salvo a Impressão    Suprimento
    Fechar janela

Quando salvo o arquivo de Sangria
    Salvo a Impressão    Sangria
    Fechar janela

Quando peço a Reimpressão do RPS
    Ir Para Reimpressão de Bilhetes
    Selecionar a ultima venda para reimpressão    F6
    Salvo a Reimpressão    Reimpressão do RPS
    Fechar Janela

Quando salvo a edição do Suprimento/Sangria
    Consultar Cadastros       2
    RPA.Windows.Click         Confirmar

Quando vou consultar o histórico de operações do caixa
    Ir para:                Fechamento de Caixa    3
    Repetidor de teclas     enter                  2
    Consultar Cadastros     1
    Repetidor de teclas     enter                  2
    Sleep                   1s
    RPA.Windows.Click       Arquivo
    RPA.Windows.Click       Abrir
    Repetidor de teclas     Down                   5
    Sleep                   1s
    RPA.Desktop.Press Keys  Enter
    RPA.Desktop.Press Keys  Shift    Tab
    Sleep                   1s
    RPA.Desktop.Type Text   C:\\Users\\Gustavo Zanotto\\Documents\\Testes Regressivos\\Relatório de Caixa
    Repetidor de teclas     TAB                   2
    Sleep                   1s
    RPA.Desktop.Press Keys  Enter
    
Quando vou consultar o histórico de operações do caixa por turno
    Ir para:                Abertura / Fechamento  4
    RPA.Windows.Click       Fechar Caixa
    RPA.Windows.Click       Sim
    Sleep                   3s
    RPA.Desktop.Press Keys  Esc
    Sleep                   3s
    RPA.Desktop.Press Keys  Enter 
    Sleep                   1s
    Ir para:                Fechamento de Caixa    3
    Repetidor de teclas     enter                  2
    Consultar Cadastros     1
    Sleep                   1s
    Consultar ultimo registro
    RPA.Desktop.Press Keys  Enter 
    Sleep                   1s
    RPA.Windows.Click       Arquivo
    RPA.Windows.Click       Abrir
    Repetidor de teclas     Down                   5
    Sleep                   1s
    RPA.Desktop.Press Keys  Enter
    RPA.Desktop.Press Keys  Shift    Tab
    Sleep                   1s
    RPA.Desktop.Type Text   C:\\Users\\Gustavo Zanotto\\Documents\\Testes Regressivos\\Relatório de Caixa por Turno
    Repetidor de teclas     TAB                   2
    Sleep                   1s
    RPA.Desktop.Press Keys  Enter

#----------------------------------------ENTÃO----------------------------------------
Então valido a venda foi realizada com sucesso
    [Arguments]    @{Texto_Bilhete}    ${metodo}    ${valor}
    Consultas Front    Consulta de Vendas
    Carregar
    Rolar barra até o Final
    Analisa texto dos bilhetes vendidos   @{Texto_Bilhete}
    Analisa texto da forma de pagamento (contém)  ${metodo}    ${valor}    

Então valido a venda foi realizada com sucesso (valor zerado)
    [Arguments]    @{Texto_Bilhete}    ${metodo}    ${valor}
    Consultas Front    Consulta de Vendas
    Carregar
    Rolar barra até o Final
    Analisa texto dos bilhetes vendidos   @{Texto_Bilhete}
    Analisa texto da forma de pagamento (não contém)  ${metodo}    ${valor}    
    
Então valido se a quantidade foi reduzida corretamente
    [Arguments]    ${qtd_vagas}
    ${qtd_vagas_novo_string}=     Selecionar o bilhete e retornar quantidade de vagas    12    1
    ${qtd_vagas_novo}=            Convert to Integer    ${qtd_vagas_novo_string}
    ${qtd_vagas}=            Evaluate    ${qtd_vagas}-1
    IF     ${qtd_vagas} == ${qtd_vagas_novo}
        Log    A quantidade de vagas foi reduzida corretamente de ${qtd_vagas} para ${qtd_vagas_novo}
    ELSE
        Fail    A quantidade de vagas não foi reduzida corretamente. Esperado: ${qtd_vagas}, Obtido: ${qtd_vagas_novo} 
    END
    Fechar com Sim

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
    Sleep                     8s
    RPA.Desktop.Press Keys    Alt    F4
    Sleep                     3s
    

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
    Should Contain            ${pagina1}             PDV: 1 Operador: 1-Usuário
    Sleep                     7s
    RPA.Desktop.Press Keys    Alt    F4
    Fechar janela


Então valido se a impressão saiu corretamente 2
    [Arguments]       ${Caminho_impressão}        ${nome_do_arquivo}        ${Nome_da_tela}       ${Caminho_Screenshot}     ${Nome_da_screenshot}    @{texto_impressão}
    Sleep                     1s
    Abrir arquivo             ${Caminho_impressão}  ${nome_do_arquivo} 
    Sleep                     6s
    RPA.Windows.Get Element   ${Nome_da_tela}
    BaseDesktop.Screenshot    ${Nome_da_tela}        ${Caminho_Screenshot}${Nome_da_screenshot}    
    ${texto}=                 Get Text From Pdf      ${Caminho_impressão}${nome_do_arquivo}  
    ${keys}=                  Get Dictionary Keys    ${texto}
    ${primeira}=              Get From List          ${keys}    0
    ${pagina1}=               Get From Dictionary    ${texto}    ${primeira}
    Should Contain            ${pagina1}             @{texto_impressão}
    Sleep                     8s
    RPA.Desktop.Press Keys    Alt    F4
    Sleep                     3s
    

Então valido se o usuário tem permissão
    ${mensagem}=    Capturar mensagem em tela    Atenção    
    Should Contain    Edição não permitida. Lançamento realizado em outro PDV ou o usuário de inclusão é diferente do usuário logado.    ${mensagem} 
    RPA.Windows.Click    OK  
    Fechar com Sim 
    
Então o sistema deve exibir corretamente todos os registros
    [Arguments]       ${Caminho_impressão}        ${nome_do_arquivo}        ${Nome_da_tela}       ${Caminho_Screenshot}     ${Nome_da_screenshot}    @{texto_impressão}
    Sleep                     1s
    Abrir arquivo             ${Caminho_impressão}  ${nome_do_arquivo} 
    Sleep                     6s
    RPA.Windows.Get Element   ${Nome_da_tela}
    BaseDesktop.Screenshot    ${Nome_da_tela}        ${Caminho_Screenshot}${Nome_da_screenshot}    
    ${texto}=                 Get Text From Pdf      ${Caminho_impressão}${nome_do_arquivo}  
    ${keys}=                  Get Dictionary Keys    ${texto}
    ${primeira}=              Get From List          ${keys}    0
    ${pagina1}=               Get From Dictionary    ${texto}    ${primeira}
    FOR    ${element}    IN    @{texto_impressão}
        Should Contain      ${pagina1}        ${element}
    END
    Sleep                     8s
    RPA.Desktop.Press Keys    Alt    F4
    Sleep                     3s
    Fechar janela