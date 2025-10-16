*** Settings ***
Documentation    Keywords para automação WEB com Robot Framework e Selenium
Library    OperatingSystem
Library    Process
Library    RPA.Excel.Files
Library    RPA.Excel.Application
Library    String
Library    Collections
Library    RPA.PDF
Library    SeleniumLibrary    screenshot_root_directory=EstruturasBase\\DESKTOP\\ScreenShots\\Selenium
Library    RPA.Desktop
Resource    BaseKeywordsDesktop.robot
Resource    BDDKeywordsDesktop.robot

*** Variables ***
${front}
${nome_exe}
${achou}
${Erro}
${i}=    0
${Senha}   name:senha

*** Keywords ***

Abrir pagina login card
    Open Browser    https://testescard.limbersoftware.com.br/#/auth/login     Chrome


Preencher email
    Sleep       1s
    Input Text  xpath:/html/body/app-root/login/div/mat-card/form/mat-form-field[1]/div[1]/div/div[2]/input     gustavozanotto119@gmail.com

Preencher senha
    Sleep       1s
    Input Text  ${Senha}      Zanotto123@

clicar em continuar
    Click Element   xpath:/html/body/app-root/login/div/mat-card/form/button

Fechar navegador
    Close Browser

Abrir CARD e logar 
    Abrir pagina login card
    Sleep                      2s
    # RPA.Windows.Click          Google Chrome - 1 executando o windows
    Minimize Browser Window
    Sleep                      1s
    Maximize Browser Window
    Sleep                      1s
    Preencher email
    Sleep                      1s
    Preencher senha
    Sleep                      1s
    clicar em continuar
    Sleep                      4s
    Tirar notificação
    Sleep                      7s
    Maximize Browser Window
    Colocar Filtro de estabelecimento    Zanotto
    Sleep                      2s
    # Tirar notificação
    Sleep                      2s

Caso aconteca erro WEB
        [Arguments]     ${Caminho_Screenshots}        ${nome_print}    
        Run Keyword If Test Failed    Run Keyword And Ignore error    Remove File                     ${Caminho_Screenshots}${nome_print}.png
        Run Keyword If Test Failed    Take Screenshot                 ${Caminho_Screenshots}Erro ${nome_print}.png
        Run Keyword If Test Failed    Run Keyword And Ignore error    Inativar bilhete
        Run Keyword If Test Failed    Encerrar Tudo
        Run Keyword If Test Failed    Fechar navegador
        Run Keyword If Test Failed    Abrir CARD e logar
    
Mudar Página
    [Arguments]    ${url}
    Go To    ${url}
    Sleep    2s

Criar Bilhete
    [Arguments]    ${nome}    ${bilheteria}    ${controla_por:int}    ${descrição_do_bilhete}=${None}
    Sleep                     2s
    Input Text                xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[1]/div/div/form/div[2]/mat-form-field[1]/div[1]/div/div[2]/input    ${nome}
    Sleep                     1s
    Repetidor de teclas       tab    2
    Sleep                     1s
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s
    Input Text                xpath:/html/body/div[3]/div[2]/div/div/mat-option[1]/span/ngx-mat-select-search/div/div/input    ${bilheteria}
    RPA.Desktop.Press Keys    Enter
    #Valida se a bilheteria é a integrada para colocar no grupo de bilhetes
    ${integrada}=             Run Keyword And Ignore error    Should Contain    ${bilheteria}    ZANOTTO NAO MEXER
    IF    ${integrada} == ('PASS', None)
        Click Element    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[1]/div/div/form/div[2]/mat-form-field[6]
        Sleep                     1s
        RPA.Desktop.Press Keys    Enter
        Repetidor de teclas       tab    7
    ELSE
        Repetidor de teclas       tab    10
    END
    #Valida se o usuario colocou alguma descrição ou se vai deixar a padrão
    IF    ${descrição_do_bilhete} == None
        RPA.Desktop.Type Text     Descrição de um bilhete gerado automaticamente por um sistema de testes automatizado.
    ELSE
        RPA.Desktop.Type Text     ${descrição_do_bilhete}
    END
    sleep                              2s
    Adicionar categoria                
    Adicionar receita                  1    3627
    sleep                              1s
    Navegar Configurações de venda > sessões    2
    Sleep                        1s       
    Click Element                xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/bilhete-configuracao-venda/div[2]/form/section[2]/div/div/div[3]/block-with-title[1]/div/section/div/mat-form-field[1]/div[1]
    Click Element                xpath:/html/body/div[3]/div[2]/div/div/mat-option[${controla_por:int}]
    Criar Temporada    
    Click Element             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[2]/buttons/div/div/button[2]
    Sleep                     5s       


Navegar configuração de bilhete
    [Arguments]    ${numero}
    Click Element   xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[${numero}]
    sleep           1s

Navegar Configurações de venda > sessões
    [Arguments]    ${numero}
    Sleep            1s
    Click Element    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/bilhete-configuracao-venda/div[1]/button[${numero}]

Colocar Filtro de estabelecimento
    [Arguments]    ${estabelecimento}
    Click Element     xpath:/html/body/app-root/app-pages/div/card-toolbar/mat-toolbar/div/button
    Sleep             2s
    Input Text        xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/filtro-estabs/table-with-selection/div/div[1]/mat-form-field/div[1]/div[2]/div[1]/input      ${estabelecimento}
    RPA.Desktop.Press Keys    Tab
    Sleep                     2s
    RPA.Desktop.Press Keys    SPACE
    Sleep             3s
    Click Element     xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/filtro-estabs/div/button[3]

Tirar notificação
    Click Element    xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/popup-notificacoes/div/div[2]/div[3]/button[2]

Adicionar Categoria
    [Arguments]        ${nome_categoria}=Inteira
    Sleep                              2s
    Navegar configuração de bilhete    2
    Sleep                              2s
    Navegar Configurações de venda > sessões    1
    Sleep                     1s
    Click Element             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/bilhete-configuracao-venda/div[2]/form/section[1]/div/div/title-btn-add/div/button
    Sleep                     2s
    RPA.Desktop.Press Keys    Enter
    ${contador}=    Set Variable    0
    WHILE    ${contador} < 100 
        ${nome_coletado}=         Run Keyword and Ignore Error    Seleniumlibrary.Get Text    xpath:/html/body/div[3]/div[4]/div/div/div/mat-option[${contador}]/span
        Log                       ${nome_coletado[1]}
        IF    $nome_coletado[1] == $nome_categoria
            Click Element             xpath:/html/body/div[3]/div[4]/div/div/div/mat-option[${contador}]
            BREAK
        ELSE
            ${contador}=    Evaluate    ${contador} + 1
            RPA.Desktop.Press Keys      Down
        END
    END
    Sleep                     2s
    Click Element             xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/add-categoria/div[2]/buttons/div/div/button[2]

Adicionar Receita
    [Arguments]    ${categoria}    ${receita}
    Sleep                     1s
    Click Element             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/bilhete-configuracao-venda/div[2]/form/section[1]/div/div/div/mat-accordion/mat-expansion-panel[${categoria}]/mat-expansion-panel-header/span[1]
    Sleep                     2s
    Click Element             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/bilhete-configuracao-venda/div[2]/form/section[1]/div/div/div/mat-accordion/mat-expansion-panel[${categoria}]/div/div/div/div/title-btn-add/div/button
    sleep                     2s
    RPA.Desktop.Press Keys    Enter
    sleep                     2s
    Input Text                xpath:/html/body/div[3]/div[4]/div/div/mat-option[1]/span/ngx-mat-select-search/div/div/input     ${receita}
    Sleep                     1s
    RPA.Desktop.Press Keys    Enter
    RPA.Desktop.Press Keys    Tab
    RPA.Desktop.Type Text     100
    Repetidor de teclas       tab     3
    RPA.Desktop.Press Keys    Enter

Criar Temporada
    [Arguments]    ${codigo_temporada}=1    ${nome_temporada}=Temporada 1    ${vermelho}=255    ${verde}=0    ${azul}=0
    Navegar configuração de bilhete    6
    Sleep                              1s
    Navegar configuração de bilhete    7
    Sleep                        1s
    Click Element                xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[7]/div/div[1]/title-btn-add/div/button
    sleep                     1s   
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    ${codigo_temporada}
    Sleep                     1s
    RPA.Desktop.Press Keys    tab
    Sleep                     1s
    RPA.Desktop.Type Text     ${nome_temporada}
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s
    Click Element             xpath:/html/body/div[3]/div[4]/div/div/mat-option
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    Enter
    Colocar cor               ${vermelho}    ${verde}    ${azul}
    sleep                     2s
    Click Element             xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/add-temporada/div[2]/button[2]
    sleep                     1s

Pegar codigo e nome do Ultimo Bilhete
    Click Element        xpath:/html/body/app-root/app-pages/div/div/div/lista-bilhetes/lista-cadastros-com-busca/div/mat-card/div/table/thead/tr/th[1]
    Sleep                1s
    Click Element        xpath:/html/body/app-root/app-pages/div/div/div/lista-bilhetes/lista-cadastros-com-busca/div/mat-card/div/table/thead/tr/th[1]
    ${numero_bilhete}=   SeleniumLibrary.Get Text             xpath:/html/body/app-root/app-pages/div/div/div/lista-bilhetes/lista-cadastros-com-busca/div/mat-card/div/table/tbody/tr[1]/td[1]/div/div
    ${nome_bilhete}=     SeleniumLibrary.Get Text             xpath:/html/body/app-root/app-pages/div/div/div/lista-bilhetes/lista-cadastros-com-busca/div/mat-card/div/table/tbody/tr[1]/td[2]/div/div
    ${nome_e_numero}=    Create List                          ${numero_bilhete}     ${nome_bilhete}
    log   ${nome_e_numero}
    RETURN    ${nome_e_numero}

Colocar cor 
    [Arguments]    ${RED}    ${GREEN}    ${BLUE}
    RPA.Desktop.Press Keys     Enter
    Repetidor de teclas        tab    3
    RPA.Desktop.Type Text      ${RED}
    Repetidor de teclas        tab    1
    RPA.Desktop.Type Text      ${GREEN}
    Repetidor de teclas        tab    1
    RPA.Desktop.Type Text      ${BLUE}
    RPA.Desktop.Press Keys     Enter

Criar tabela de preço
    [Arguments]    ${numero_bilhete}=6275    ${nome_tabela}=Tabela de Preço Automatizada    ${preço}=100    ${taxa}=0    ${qtd_de_categorias}=1    
    Sleep                      4s
    Go To                      https://testescard.limbersoftware.com.br/#/pages/calendarioPrecoDisp/config/tabelaPreco?bilhete=${numero_bilhete}
    Sleep                      7s
    Click Element              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[1]/div/table/thead/tr/th[4]/div/button
    Sleep                      2s
    Input Text                 xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[2]/div/tabela-preco/div[1]/div/div/mat-form-field[1]/div[1]/div/div[2]/input    ${nome_tabela}
    Sleep                      1s
    Repetidor de teclas        tab    2
    Sleep                      1s
    Colocar cor                49    0    53
    Sleep                      1s
    Repetidor de teclas em sequencia    tab    enter    1    4    1 
    sleep                      5s
    FOR    ${i}    IN RANGE    0    ${qtd_de_categorias}   
        ${valor}=                  Evaluate    ${i} + 1
        Repetidor de teclas        Down    2
        Sleep                      2s
        Click Element              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[2]/div/tabela-preco/div[1]/mat-card/mat-card-content/table/tbody/tr[${valor}]/td[4]/div/button
        Sleep                      1s
        Click Element              xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/ng-component/div[2]/table/thead/tr/th[4]/button
        Sleep                      1s
        Click Element              xpath:/html/body/div[3]/div[4]/div/div/mat-option[2]
        RPA.Desktop.Press Keys     Tab
        ${resul}=                  Evaluate                   ${preço} * ${valor}
        RPA.Desktop.Type Text      ${resul}
        Repetidor de teclas        tab    3
        RPA.Desktop.Press Keys     Enter
        Repetidor de teclas        tab    1
        RPA.Desktop.Type Text      ${taxa}
        Repetidor de teclas        tab    1
        RPA.Desktop.Press Keys     Enter
        Sleep                      1s
        Repetidor de teclas        Down    2
    END
    Click Element              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[2]/div/tabela-preco/div[2]/buttons/div/div/button[3]
    Sleep                      2s

Criar tabela de disponibilidade
    [Arguments]    ${numero_bilhete}=6275    ${nome_tabela}=Tabela de Disponibilidade Automatizada    ${hora_inico}=0600    ${hora_fim}=2200    ${qtd_vagas}=1000
    Click Element              id:mat-tab-link-1
    sleep                      3s
    Click Element              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/app-lista-tabelas-disp/mat-tab-group/div/mat-tab-body[1]/div/table/thead/tr/th[4]/div/button
    Sleep                      2s
    Input Text                 xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/app-lista-tabelas-disp/mat-tab-group/div/mat-tab-body[2]/div/config-disp/div[1]/div/div/mat-form-field[1]/div[1]/div/div[2]/input    ${nome_tabela}
    Repetidor de teclas        tab    1
    Colocar cor                106    0    28
    Repetidor de teclas        tab    3
    RPA.Desktop.Press Keys     Enter
    Repetidor de teclas        tab      2
    Repetidor de teclas        Enter    2
    Repetidor de teclas        tab      2
    RPA.Desktop.Type Text      ${hora_inico}
    RPA.Desktop.Press Keys     tab
    RPA.Desktop.Type Text      ${hora_fim}
    RPA.Desktop.Press Keys     tab
    RPA.Desktop.Type Text      ${qtd_vagas}
    Repetidor de teclas        tab    4
    RPA.Desktop.Press Keys     Enter
    Click Element              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/app-lista-tabelas-disp/mat-tab-group/div/mat-tab-body[2]/div/config-disp/div[2]/buttons/div/div/button[3]
    Sleep                      2s

Preencher dia do calendario
    [Arguments]    ${mês}    ${dia}    ${n°_tabela_preco}=1    ${n°_tabela_dispo}=1    ${n°_temporada}=1
    sleep                      3s
    Click Element              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[3]
    sleep                      2s
    Click Element              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/div/ng-full-year-calendar-lib
    sleep                      2s
    Selecionar dia do calendário    ${mês}    ${dia}
    RPA.Desktop.Press Keys     Tab
    RPA.Desktop.Press Keys     Enter
    Repetidor de teclas        Down    ${n°_tabela_preco}
    RPA.Desktop.Press Keys     Enter
    Repetidor de teclas        tab    2
    RPA.Desktop.Press Keys     Enter
    Repetidor de teclas        Down    ${n°_tabela_dispo}
    RPA.Desktop.Press Keys     Enter
    RPA.Desktop.Press Keys     Tab
    RPA.Desktop.Press Keys     Enter
    Repetidor de teclas        Down    ${n°_temporada}
    RPA.Desktop.Press Keys     Enter
    Repetidor de teclas        tab    2
    RPA.Desktop.Press Keys     Enter

Selecionar dia do calendário
    [Arguments]    ${mês}    ${dia}
    ${termina_loop}=    Set Variable    0    
    sleep           1s
    ${mês}=    Convert To Integer    ${mês}
    @{dia_calendario}=  Set Variable  a    Set Variable    b
    IF    ${mês} < 10
        ${mês}=    Convert to String    ${mês}
        ${mês}=    Replace String   ${mês}    0    ${EMPTY}
    END
    FOR    ${linha}    IN RANGE    1    7    
       ${dia}=    Convert To Integer    ${dia}
       ${dia_max}=    Evaluate    ${linha}*7
        IF  ${dia} < ${dia_max}
            FOR    ${coluna}    IN RANGE    0    7   
                Sleep                 2s
                @{dia_calendario}=    Run Keyword And Ignore Error     SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/div/ng-full-year-calendar-lib/dts-select-container/div[1]/div[${mês}]/table/tbody/tr[${linha}]/td[${coluna}]/div/section
                Log    ${dia_calendario[1]}
                ${tem_dia}=    Run Keyword And Ignore Error    Should Contain    ${dia_calendario[1]}    Element with locator 'xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/div/ng-full-year-calendar-lib/dts-select-container/div[1]/div[${mês}]/table/tbody/tr[${linha}]/td[${coluna}]/div/section' not found.
                Log    ${tem_dia}
                IF    ${tem_dia} == ('PASS', None)
                    Log    Dia incorreto.
                ELSE
                    IF    ${dia_calendario[1]} == ${dia}
                    Click Element     xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/div/ng-full-year-calendar-lib/dts-select-container/div[1]/div[${mês}]/table/tbody/tr[${linha}]/td[${coluna}]/div
                    ${termina_loop}=    Set Variable    1
                        
                        BREAK
                    END  
                END
                ${exists}=     Run Keyword And Return Status    Element Should Be Visible    /html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/div/ng-full-year-calendar-lib/dts-select-container/div[1]/div[${mês}]/table/tbody/tr[${linha}]/td[${coluna}]/div/section
                IF    ${exists} and ${dia} >= 29
                    ${dia}=    Set Variable    1
                     ${mês}=    Evaluate        ${mês} + 1
                END 
            END
        END      
        IF    ${termina_loop} == 1
            Log    Dia encontrado, saindo do loop
            BREAK 
        END
    END

Criar exceção de disponibilidade
    [Arguments]    ${qtd_vagas}=5
    ${validador}=              Valida campo               /html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/section/mat-card[2]/footer/button    Configurar exceções e alta procura
    IF    ${validador} == 1
        Click Element          xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/section/mat-card[2]/footer/button
    ELSE
        Click Element          xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/section/mat-card[2]/footer/button[2]
    END
    Sleep                      2s
    RPA.Desktop.Press Keys     Tab
    RPA.Desktop.Type Text      ${qtd_vagas}
    Repetidor de teclas        tab    4
    RPA.Desktop.Press Keys     Enter

Criar bloqueio de disponibilidade
    ${validador}=              Valida campo               /html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/section/mat-card[2]/footer/button    Configurar exceções e alta procura
    IF    ${validador} == 1
        Click Element          xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/section/mat-card[2]/footer/button
    ELSE
        Click Element          xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/section/mat-card[2]/footer/button[2]
    END
    Sleep                      1s
    Click Element              xpath:/html/body/div[3]/div[3]/div/mat-dialog-container/div/div/app-excecoes/section/table/tbody/tr/td[4]/div/mat-checkbox
    Sleep                      2s
    input text                 xpath:/html/body/div[3]/div[4]/div/mat-dialog-container/div/div/app-bloqueio-dialog/div/div[1]/mat-form-field/div[1]/div/div[2]/textarea    Bloqueado pelo Teste Automatizado
    Sleep                      1s
    Repetidor de teclas        tab    2
    Sleep                      1s
    RPA.Desktop.Press Keys     Enter
    sleep                      1s
    Click Element              xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/app-excecoes/mat-dialog-actions/button[2]
    
Valida campo
    [Arguments]   ${xpath}   ${texto_esperado}    
    ${texto_obtido}=    Run Keyword and ignore error    SeleniumLibrary.Get Text    xpath:${xpath}
    IF    $texto_esperado == $texto_obtido[1]
        RETURN    1
    ELSE
        RETURN    0
    END

Colocar o bilhete no e-commerce
    [Arguments]     ${numero_bilhete}=6275    
    Mudar Página    https://testescard.limbersoftware.com.br/#/pages/ecommerce/ec-config?id=349
    Sleep           6s
    Click Element   xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-ec-config/div[1]/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[4]
    Sleep           1s
    Click Element   xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-ec-config/div[1]/mat-card/mat-tab-group/div/mat-tab-body[4]/div/div/div/div[2]/mat-accordion/mat-expansion-panel/mat-expansion-panel-header
    Sleep           1s
    Click Element   xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-ec-config/div[1]/mat-card/mat-tab-group/div/mat-tab-body[4]/div/div/div/div[2]/mat-accordion/mat-expansion-panel/div/div/div/mat-card/div/div[2]/div/button
    Sleep           3s
    Input text      xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/limber-select-product/div/div[1]/mat-form-field/div[1]/div/div[2]/input    ${numero_bilhete}
    Sleep           1s
    ${ativo}=       Get Element Attribute     xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/limber-select-product/div/div[3]/view-product/mat-card/div[2]/img   style
    Log    ${ativo}
    Sleep          1s
    ${resultado}=    Run Keyword and ignore error     Should Be Equal    ${ativo}    opacity 1;
    Log    ${resultado}
    IF    ${resultado} == ('FAIL', 'opacity: 0; != opacity 1;') 
        Click Element   xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/limber-select-product/div/div[3]/view-product/mat-card/div[2]
        sleep           1s
        Click Element   xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/limber-select-product/div/div[4]/button[2]
        sleep           1s
        Click Element   xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-ec-config/div[2]/buttons/div/div/button[3]
        sleep           25s
        Log             Bilhete adicionado ao E-commerce. 
    ELSE
        Log    Bilhete já adicionado ao E-commerce.
    END

Adicionar no perfil
    [Arguments]    ${numero_bilhete}=6275    ${id_perfil_de_venda}=882    
    Go To          https://testescard.limbersoftware.com.br/#/pages/config/perfil?id=${id_perfil_de_venda}
    sleep          6s
    Click Element  xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-perfil/div[1]/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[3]
    Sleep          2s
    Input Text     xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-perfil/div[1]/mat-card/mat-tab-group/div/mat-tab-body[3]/div/div/limber-select-product/div/div[1]/mat-form-field/div[1]/div/div[2]/input    ${numero_bilhete}
    Sleep          3s
    ${ativo}=      Get Element Attribute     xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-perfil/div[1]/mat-card/mat-tab-group/div/mat-tab-body[3]/div/div/limber-select-product/div/div[3]/view-product/mat-card/div[2]/img   style
    Log    ${ativo}
    Sleep          1s
    ${resultado}=    Run Keyword and ignore error     Should Be Equal    ${ativo}    opacity 1;
    Log    ${resultado}
    IF    ${resultado} == ('FAIL', 'opacity: 0; != opacity 1;') 
        Click Element   xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-perfil/div[1]/mat-card/mat-tab-group/div/mat-tab-body[3]/div/div/limber-select-product/div/div[3]/view-product/mat-card/div[2]
        sleep           1s
        Click Element   xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-perfil/div[2]/buttons/div/div/button[3]
        sleep           25s
        Log             Bilhete adicionado ao perfil. 
    ELSE
        Log    Bilhete já adicionado ao perfil.
    END

Abro o E-commerce
    Go to                     https://automacao.testescard.limber.net.br/
    Sleep                     4s
    Click Element             accountButton   
    sleep                     3s
    Input Text                xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/mat-form-field/div[1]/div/div[2]/input    gustavozanotto119@gmail.com
    RPA.Desktop.Press keys    Backspace
    RPA.Desktop.Type Text     m
    RPA.Desktop.Press keys    Enter
    Sleep                     15s
    Input Text                xpath:/html/body/app-root/app-home/div/main/ng-component/app-login-client/ec-wrapper/form/mat-form-field/div[1]/div/div[2]/input    Z
    RPA.Desktop.Press keys    Backspace
    RPA.Desktop.Type Text     Zanotto123@
    RPA.Desktop.Press keys    Enter
    Sleep                     15s

Pesquisar bilhete no e-commerce
    [Arguments]   ${nome_bilhete}=Bilhete Automatizado: Por Horario
    Sleep              4s
    Input Text         xpath:/html/body/app-root/app-home/div/main/app-dashboard/div/mat-form-field/div[1]/div/div[3]/input       ${nome_bilhete}
    Sleep              2s
    Repetidor de teclas       tab    2
    sleep                     1s    
    RPA.Desktop.PRess Keys    Enter

Coletar quantidade de vagas (E-Commerce)
    [Arguments]    ${qtd_vagas}
    sleep                         4s
    ${qtd_vagas_no_ecommerce}=    SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-product-receita/app-title-with-edit[2]/section/div[2]/div[1]/span[2]/span
    log     ${qtd_vagas_no_ecommerce}
    Should Contain    ${qtd_vagas_no_ecommerce}    ${qtd_vagas} Vagas

Comparar valores
    [Arguments]    ${valor1}    ${valor2}   
    ${resultado}=    Run keyword and ignore error    Should Be Equal    ${valor1}    ${valor2}  
    RETURN    ${resultado}

Inativar bilhete
    [Arguments]    ${numero_bilhete}=6275
    IF    ${numero_bilhete} == 6275
            Go to            https://testescard.limbersoftware.com.br/
            sleep            5s
            Go to            https://testescard.limbersoftware.com.br/#/pages/calendarioPrecoDisp/config/tabelaPreco?bilhete=6275
            Sleep            7s     
            Run Keyword and Ignore Error    Click Element    xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[2]/div/tabela-preco/div[2]/buttons/div/div/button[1]
            Sleep                     1s
            RPA.Desktop.Press Keys    tab
            Sleep                     1s
            RPA.Desktop.Press Keys    Enter
            Sleep                     3s     
            Run Keyword and Ignore Error    Click Element    xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[2]
            Sleep                     2s
            Run Keyword and Ignore Error    Click Element    xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/app-lista-tabelas-disp/mat-tab-group/div/mat-tab-body[1]/div/table/tbody/tr[1]/td[4]/div/button[1]
            Sleep            1s
            Run Keyword and Ignore Error    Click Element    xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/app-lista-tabelas-disp/mat-tab-group/div/mat-tab-body[2]/div/config-disp/div[2]/buttons/div/div/button[1]
            Sleep                     1s
            RPA.Desktop.Press Keys    tab
            Sleep                     1s
            RPA.Desktop.Press Keys    Enter
            Run Keyword and Ignore Error    Retirar Categoria  2
            Sleep                     2s
            Run Keyword and Ignore Error    Retirar Categoria  2
            sleep                     1s
    ELSE
        Go to     https://testescard.limbersoftware.com.br/#/pages/cadastro/bilhete/${numero_bilhete}
        sleep            3s
        Click Element    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[1]/div/div/form/div[1]/mat-checkbox
        Sleep            1s
        Click element    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[2]/buttons/div/div/button[3]
    END

    
Coleta Valor bilhete (E-commerce)
    [Arguments]    ${valor_bilhete}   ${numero_categoria}=1     ${valor_taxa}=0  
    Sleep                   3s  
    ${valor_bilhete_EC}=    SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-title-with-edit[${numero_categoria}]/section/div[3]/div/app-escolha-categoria/div/div[2]/div[1]/section/div
    IF    $valor_taxa != 0                                    
    ${valor_taxa_EC}=       SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-title-with-edit/section/div[3]/div/app-escolha-categoria/div/div[2]/div[1]/div
    END
    Log    ${valor_bilhete_EC}
    Log    ${valor_taxa_EC}
    Comparar Valores    R$ ${valor_bilhete}    ${valor_bilhete_EC}
    Comparar Valores    (+R$ ${valor_taxa} Taxa)       ${valor_taxa_EC}
    Sleep        1s

Adicionar categoria (Compra E-Commerce)
    [Arguments]    ${categoria}    ${quantidade}
    Sleep            3s
    FOR    ${i}    IN RANGE    ${quantidade}
        Click Element    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-title-with-edit/section/div[3]/div/app-escolha-categoria[${categoria}]/div/div[2]/button[2]
    END

# Retirar categoria (Compra E-Commerce)
#     [Arguments]    ${categoria}    ${quantidade}
#     Sleep            3s
#     FOR    ${i}    IN RANGE    ${quantidade}
#         Click Element    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-title-with-edit/section/div[3]/div/app-escolha-categoria[${categoria}]/div/div[2]/button[1]
#     END

Retirar Categoria
    [Arguments]        ${numero_categoria}    ${numero_bilhete}=6275
    Go to     https://testescard.limbersoftware.com.br/#/pages/cadastro/bilhete/${numero_bilhete}
    Sleep                              2s
    Navegar configuração de bilhete    2
    Sleep                              1s
    Navegar Configurações de venda > sessões    1
    Click Element    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/bilhete-configuracao-venda/div[2]/form/section[1]/div/div/div/mat-accordion/mat-expansion-panel[${numero_categoria}]/mat-expansion-panel-header/span[1]/mat-panel-description/button[2]
    Sleep            1s    
    RPA.Desktop.Press Keys    Tab
    Sleep                     1s
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s
    Click Element             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[2]/buttons/div/div/button[3]
    Sleep                     6s
    RPA.Desktop.Press Keys    Enter
    Sleep                     2s
    
Excluir Categoria
    [Arguments]    ${codigo_categoria}=1
    IF    ${codigo_categoria} == 1
        Go to    https://testescard.limbersoftware.com.br/#/pages/cadastro/categorias
        sleep        3s
        Click Element        xpath:/html/body/app-root/app-pages/div/div/div/categoria/lista-cadastros-com-busca/div/mat-card/div/table/thead/tr/th[1]
        Sleep                1s
        Click Element        xpath:/html/body/app-root/app-pages/div/div/div/categoria/lista-cadastros-com-busca/div/mat-card/div/table/thead/tr/th[1]
        Sleep                1s
        Click Element        xpath:/html/body/app-root/app-pages/div/div/div/categoria/lista-cadastros-com-busca/div/mat-card/div/table/tbody/tr[1]/td[4]/button                           
    ELSE
        Go to        https://testescard.limbersoftware.com.br/#/pages/cadastro/categoria?id=${codigo_categoria}
        
    END
    sleep        1s
    Click Element    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-categoria/div[3]/buttons/div/div/button[1]
    Sleep        1s
    RPA.Desktop.Press Keys    Tab
    RPA.Desktop.Press Keys    Enter
    
    
Cadastrar nova categoria
    [Arguments]    ${nome_categoria}=Categoria Gerada Pelos Testes Automatizados       ${nome_convênio}=n 
    Go To    https://testescard.limbersoftware.com.br/#/pages/cadastro/categoria
    Sleep    2s
    Input Text    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-categoria/div[2]/mat-card/mat-tab-group/div/mat-tab-body[1]/div/form/div/div[1]/div[2]/mat-form-field[1]/div[1]/div/div[2]/input    ${nome_categoria}
    Sleep    1s
    Click Element    Xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-categoria/div[2]/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[2]
    Sleep            1s
    Click Element    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-categoria/div[2]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/lista-permissoes/div/title-btn-add/div/button
    Sleep            1s
    RPA.Desktop.Press Keys    Tab
    Sleep            2s
    RPA.Desktop.Press Keys    SPACE
    Sleep            3s
    Click Element    xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/add-permissao-acesso-dialog/div/div/button[2]
    Sleep            2s
    ${resultado}=    Comparar valores    ${nome_convênio}    n
    log    ${resultado}
    IF  "$resultado" != "None"
        Click Element    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-categoria/div[2]/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[3]
        Sleep            2s
        Click Element    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-categoria/div[2]/mat-card/mat-tab-group/div/mat-tab-body[3]/div/div/title-btn-add/div/button
        Sleep            1s
        RPA.Desktop.Press Keys    Tab
        RPA.Desktop.Press Keys    1
        RPA.Desktop.Press Keys    Tab
        RPA.Desktop.Type Text     ${nome_convênio}
        Repetidor de Teclas       tab    3
        RPA.Desktop.Press Keys    Enter
    END
    Click Element    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-categoria/div[3]/buttons/div/div/button[2]
    Sleep            4s
    
Adicionar categoria em bilhetes ja existente
    [Arguments]    ${categoria}    ${qtd_de_categorias}    ${receita}    ${numero_bilhete}=6275
    Go to    https://testescard.limbersoftware.com.br/#/pages/cadastro/bilhete/${numero_bilhete}
    Sleep                     3s
    Adicionar categoria       ${categoria}
    Adicionar receita         ${qtd_de_categorias}    ${receita}
    Sleep                     3s
    Click Element             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[2]/buttons/div/div/button[3]
    Sleep                     4s
    RPA.Desktop.Press Keys    Enter
    Sleep                     2s

Preencher convênio
    [Arguments]    ${nome_convênio}=CONVÊNIO
    Sleep            2s
    Click Element    xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-visitors-form/div/div[1]/div[2]/form/mat-form-field/div[1]/div/div[2]/mat-select
    sleep            1s
    ${nome_coletado}=    SeleniumLibrary.get text    xpath:/html/body/div[3]/div[4]/div/div/mat-option/span
    IF    $nome_convênio == $nome_coletado
        Click Element    xpath:/html/body/div[3]/div[4]/div/div/mat-option
    ELSE
        Fail    Convênio errado ou não existênte.
    END    

Comprar Ingressos
    Click Element    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/div[3]/button
    sleep            1s
    
Retirar Exceção
    [Arguments]    ${numero_bilhete}=6275
    Go to    https://testescard.limbersoftware.com.br/#/pages/calendarioPrecoDisp/config/calendario?bilhete=${numero_bilhete}
    sleep    4s
    Click Element  xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[3]
    Sleep    2s
    @{ano_mes_dia}=  Get Time	year month day 
    Preencher dia do calendario    ${ano_mes_dia[1]}    ${ano_mes_dia[2]}
    Sleep          1s    
    Click Element  xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/section/mat-card[2]/footer/button[1]
    Sleep    1s

Adicionar nova temporada em um bilhete
    [Arguments]    ${numero_bilhete}=6275
    Go to    https://testescard.limbersoftware.com.br/#/pages/cadastro/bilhete/${numero_bilhete}
    sleep    5s
    Criar Temporada   2    Temporada 2     0    255    0
    Click Element             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[2]/buttons/div/div/button[3]
    Sleep                     1s
    # RPA.Desktop.Press Keys    tab
    # RPA.Desktop.Press Keys    Enter
