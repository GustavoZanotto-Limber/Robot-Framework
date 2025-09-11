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
Resource    BaseDesktop.robot

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
    Input Text  xpath:/html/body/app-root/login/div/mat-card/form/mat-form-field[1]/div[1]/div/div[2]/input     gustavozanotto119@gmail.com

Preencher senha
    Input Text  ${Senha}      Zanotto123@

clicar em continuar
    Click Element   xpath:/html/body/app-root/login/div/mat-card/form/button

Fechar navegador
    Close Browser

Abrir CARD e logar 
    Abrir pagina login card
    Sleep                      2s
    Maximize Browser Window
    Sleep                      1s
    Preencher email
    Sleep                      1s
    Preencher senha
    Sleep                      1s
    clicar em continuar
    Sleep                      2s
    Tirar notificação
    Sleep                      3s
    Colocar Filtro de estabelecimento    Zanotto

Caso aconteca erro WEB
        [Arguments]     ${Caminho_Screenshots}        ${nome_print}    
        Run Keyword If Test Failed    Run Keyword And Ignore error    Remove File                     ${Caminho_Screenshots}${nome_print}.png
        Run Keyword If Test Failed    Take Screenshot                 ${Caminho_Screenshots}Erro ${nome_print}.png
        Run Keyword If Test Failed    Fechar navegador
        Run Keyword If Test Failed    Abrir CARD e logar
    
Mudar Página
    [Arguments]    ${url}
    Go To    ${url}
    Sleep    2s
    Tirar notificação

Criar Bilhete
    [Arguments]    ${nome}    ${bilheteria}    ${controla_por:int}    ${descrição_do_bilhete}=${None}
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
    Adicionar categoria                1
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
    Click Element    mat-tab-group-0-label-${numero}
    sleep           1s

Navegar Configurações de venda > sessões
    [Arguments]    ${numero}
    Click Element    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/bilhete-configuracao-venda/div[1]/button[${numero}]

Colocar Filtro de estabelecimento
    [Arguments]    ${estabelecimento}
    Click Element     xpath:/html/body/app-root/app-pages/div/card-toolbar/mat-toolbar/div/button
    Input Text        xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/filtro-estabs/table-with-selection/div/div[1]/mat-form-field/div[1]/div[2]/div[1]/input      ${estabelecimento}
    RPA.Desktop.Press Keys    Tab
    RPA.Desktop.Press Keys    SPACE
    Sleep             1s
    Click Element     xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/filtro-estabs/div/button[3]

Tirar notificação
    Sleep                      2s
    Repetidor de teclas        Tab    2
    RPA.Desktop.Press Keys     Enter

Adicionar Categoria
    [Arguments]    ${categoria}
    Navegar configuração de bilhete    1
    Navegar Configurações de venda > sessões    1
    Sleep                     1s
    Click Element             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/bilhete-configuracao-venda/div[2]/form/section[1]/div/div/title-btn-add/div/button
    Sleep                     1s
    RPA.Desktop.Press Keys    Enter
    Sleep                     2s
    Click Element             xpath:/html/body/div[3]/div[4]/div/div/div/mat-option[${categoria}]/span
    Sleep                     1s
    Click Element             xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/add-categoria/div[2]/buttons/div/div/button[2]

Adicionar Receita
    [Arguments]    ${categoria}    ${receita}
    Click Element             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/bilhete-configuracao-venda/div[2]/form/section[1]/div/div/div/mat-accordion/mat-expansion-panel[${categoria}]/mat-expansion-panel-header/span[1]
    Sleep                     1s
    Click Element             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/bilhete-configuracao-venda/div[2]/form/section[1]/div/div/div/mat-accordion/mat-expansion-panel/div/div/div/div/title-btn-add/div/button
    sleep                     1s
    RPA.Desktop.Press Keys    Enter
    sleep                     1s
    Input Text                xpath:/html/body/div[3]/div[4]/div/div/mat-option[1]/span/ngx-mat-select-search/div/div/input     ${receita}
    Sleep                     1s
    RPA.Desktop.Press Keys    Enter
    RPA.Desktop.Press Keys    Tab
    RPA.Desktop.Type Text     100
    Repetidor de teclas       tab     3
    RPA.Desktop.Press Keys    Enter

Criar Temporada
    Navegar configuração de bilhete    6
    Click Element                xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[7]/div/div[1]/title-btn-add/div/button
    sleep                     1s   
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    1
    Sleep                     1s
    RPA.Desktop.Press Keys    tab
    Sleep                     1s
    RPA.Desktop.Type Text     Temporada 1
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    Enter
    Click Element             xpath:/html/body/div[3]/div[4]/div/div/mat-option
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    Enter
    Repetidor de teclas       tab    3
    RPA.Desktop.Type Text     255
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
    [Return]    ${nome_e_numero}

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
    [Arguments]    ${numero_bilhete}=6275    ${nome_tabela}=Tabela de Preço Automatizada    ${preço}=100
    Mudar Página               https://testescard.limbersoftware.com.br/#/pages/calendarioPrecoDisp/config/tabelaPreco?bilhete=${numero_bilhete}
    Sleep                      5s
    Click Element              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[1]/div/table/thead/tr/th[4]/div/button
    Sleep                      2s
    Input Text                 xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[2]/div/tabela-preco/div[1]/div/div/mat-form-field[1]/div[1]/div/div[2]/input    ${nome_tabela}
    Repetidor de teclas        tab    2
    Colocar cor                49    0    53
    Repetidor de teclas em sequencia    tab    enter    2    4    1 
    sleep                      2s
    RPA.Desktop.Press Keys     Shift    Tab
    RPA.Desktop.Press Keys     Enter
    Sleep                      1s
    Click Element              xpath:/html/body/div[3]/div[4]/div/div/mat-option[2]
    RPA.Desktop.Press Keys     Tab
    RPA.Desktop.Type Text      ${preço}
    Repetidor de teclas        tab    3
    RPA.Desktop.Press Keys     Enter
    Repetidor de teclas        tab    2
    RPA.Desktop.Press Keys     Enter
    Click Element              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[2]/div/tabela-preco/div[2]/buttons/div/div/button[3]
    Sleep                      2s

Criar tabela de disponibilidade
    [Arguments]    ${numero_bilhete}=6275    ${nome_tabela}=Tabela de Disponibilidade Automatizada    ${hora_inico}=0600    ${hora_fim}=2200    ${qtd_vagas}=1000
    Click Element              id:mat-tab-link-1
    sleep                      2s
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
    [Arguments]    ${mês}    ${dia}
    Click Element              id:mat-tab-link-2
    sleep                      2s
    Click Element              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/div/ng-full-year-calendar-lib
    sleep                      2s
    Selecionar dia do calendário    ${mês}    ${dia}
    RPA.Desktop.Press Keys     Tab
    RPA.Desktop.Press Keys     Enter
    RPA.Desktop.Press Keys     Down
    RPA.Desktop.Press Keys     Enter
    Repetidor de teclas        tab    2
    RPA.Desktop.Press Keys     Enter
    RPA.Desktop.Press Keys     Down
    RPA.Desktop.Press Keys     Enter
    RPA.Desktop.Press Keys     Tab
    RPA.Desktop.Press Keys     Enter
    RPA.Desktop.Press Keys     Down
    RPA.Desktop.Press Keys     Enter
    Repetidor de teclas        tab    2
    RPA.Desktop.Press Keys     Enter

Selecionar dia do calendário
    [Arguments]    ${mês}    ${dia}
    sleep           1s
    ${mês}=    Convert To Integer    ${mês}
    IF    ${mês} < 10
        ${mês}=    Convert To String    ${mês}
        ${mês}=    Replace String   ${mês}    0    ${EMPTY}
    END
    FOR    ${linha}    IN RANGE    1    7    
        FOR    ${coluna}    IN RANGE    0    7    
            Sleep                 2s
            @{dia_calendario}=    Run Keyword And Ignore Error     SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/div/ng-full-year-calendar-lib/dts-select-container/div[1]/div[${mês}]/table/tbody/tr[${linha}]/td[${coluna}]/div/section
            Log    ${dia_calendario[1]}
            ${tem_dia}=    Run Keyword And Ignore Error    Should Contain    ${dia_calendario[1]}    Element with locator 'xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/div/ng-full-year-calendar-lib/dts-select-container/div[1]/div[${mês}]/table/tbody/tr[${linha}]/td[${coluna}]/div/section' not found.
            Log    ${tem_dia}
            IF    ${tem_dia} == ('PASS', None)
                Log    Dia não existe nesse mês
            ELSE
                IF    ${dia_calendario[1]} == ${dia}
                Click Element     xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/div/ng-full-year-calendar-lib/dts-select-container/div[1]/div[${mês}]/table/tbody/tr[${linha}]/td[${coluna}]/div
                BREAK
                END    
            END         
        END
    END

    