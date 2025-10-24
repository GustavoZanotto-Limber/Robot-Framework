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
Resource    ../BDD/BDDKeywordsDesktop.robot

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
    Inserir Texto  xpath:/html/body/app-root/login/div/mat-card/form/mat-form-field[1]/div[1]/div/div[2]/input     automacao@limbersoftware.com.br

Preencher senha
    Sleep       1s
    Inserir Texto  ${Senha}      Auto123@

clicar em continuar
    Clicar no Botão   xpath:/html/body/app-root/login/div/mat-card/form/button

Fechar navegador
    Close Browser

Abrir CARD e logar 
    Abrir pagina login card
    Minimize Browser Window
    Sleep                      1s
    Maximize Browser Window
    Preencher email
    Sleep                      1s
    Preencher senha
    clicar em continuar
    Maximize Browser Window
    Sleep                      1s
    Colocar Filtro de estabelecimento    Automação
    # Sleep                      2s
    # Tirar notificação

Caso aconteca erro WEB
        [Arguments]     ${Caminho_Screenshots}        ${nome_print}    
        Run Keyword If Test Failed    Run Keyword And Ignore error    Remove File                     ${Caminho_Screenshots}${nome_print}.png
        Run Keyword If Test Failed    Take Screenshot                 ${Caminho_Screenshots}Erro ${nome_print}.png
        Run Keyword If Test Failed    Encerrar Tudo
        Run Keyword If Test Failed    Fechar navegador
        Run Keyword If Test Failed    Abrir CARD e logar
    
Mudar Página
    [Arguments]    ${url}
    Go To    ${url}
    Sleep    2s

Criar Bilhete
    [Arguments]    ${nome}    ${bilheteria}    ${controla_por:int}    ${descrição_do_bilhete}=${None}
    Inserir Texto                xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[1]/div/div/form/div[2]/mat-form-field[1]/div[1]/div/div[2]/input    ${nome}
    Sleep                     1s
    Repetidor de teclas       tab    2
    Sleep                     1s
    RPA.Desktop.Press Keys    Enter
    Inserir Texto                xpath:/html/body/div[3]/div[2]/div/div/mat-option[1]/span/ngx-mat-select-search/div/div/input    ${bilheteria}
    RPA.Desktop.Press Keys    Enter
    #Valida se a bilheteria é a integrada para colocar no grupo de bilhetes
    ${integrada}=             Run Keyword And Ignore error    Should Contain    ${bilheteria}    ZANOTTO NAO MEXER
    IF    ${integrada} == ('PASS', None)
        Clicar no Elemento    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[1]/div/div/form/div[2]/mat-form-field[6]
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
    Adicionar categoria                
    Adicionar receita                  1    3627
    Navegar Configurações de venda > sessões    2    
    Clicar no Elemento                xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/bilhete-configuracao-venda/div[2]/form/section[2]/div/div/div[3]/block-with-title[1]/div/section/div/mat-form-field[1]/div[1]
    Clicar no Elemento           xpath:/html/body/div[3]/div[2]/div/div/mat-option[${controla_por:int}]
    Criar Temporada    
    Clicar no Botão             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[2]/buttons/div/div/button[2]
    Sleep                     5s       


Navegar configuração de bilhete
    [Arguments]    ${numero}
    Clicar no Elemento   xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[${numero}]

Navegar Configurações de venda > sessões
    [Arguments]    ${numero}
    Clicar no Elemento          xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/bilhete-configuracao-venda/div[1]/button[${numero}]

Colocar Filtro de estabelecimento
    [Arguments]    ${estabelecimento}
    Clicar no Botão             xpath:/html/body/app-root/app-pages/div/card-toolbar/mat-toolbar/div/button
    Inserir Texto               xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/filtro-estabs/table-with-selection/div/div[1]/mat-form-field/div[1]/div[2]/div[1]/input      ${estabelecimento}
    Clicar no Elemento          xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/filtro-estabs/table-with-selection/div/div[2]/cdk-virtual-scroll-viewport/div[1]/table/thead/th[1]/mat-checkbox
    Clicar no Botão             xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/filtro-estabs/div/button[3]

Tirar notificação
    Clicar no Botão    xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/popup-notificacoes/div/div[2]/div[3]/button[2]

Adicionar Categoria
    [Arguments]        ${nome_categoria}=Inteira
    Navegar configuração de bilhete    2
    Navegar Configurações de venda > sessões    1
    Clicar no Elemento             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/bilhete-configuracao-venda/div[2]/form/section[1]/div/div/title-btn-add/div/button
    Clicar no Elemento             xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/add-categoria/div[1]/mat-form-field/div[1]/div/div[2]
    ${contador}=    Set Variable    0
    WHILE    ${contador} < 100 
        ${nome_coletado}=         Run Keyword and Ignore Error    Seleniumlibrary.Get Text    xpath:/html/body/div[3]/div[4]/div/div/div/mat-option[${contador}]/span
        Log                       ${nome_coletado[1]}
        IF    $nome_coletado[1] == $nome_categoria
            Clicar no Elemento             xpath:/html/body/div[3]/div[4]/div/div/div/mat-option[${contador}]
            BREAK
        ELSE
            ${contador}=    Evaluate    ${contador} + 1
            RPA.Desktop.Press Keys      Down
        END
    END
    Clicar no Elemento             xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/add-categoria/div[2]/buttons/div/div/button[2]

Adicionar Receita
    [Arguments]    ${categoria}    ${receita}
    Clicar no Elemento             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/bilhete-configuracao-venda/div[2]/form/section[1]/div/div/div/mat-accordion/mat-expansion-panel[${categoria}]/mat-expansion-panel-header/span[1]
    Clicar no Elemento             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/bilhete-configuracao-venda/div[2]/form/section[1]/div/div/div/mat-accordion/mat-expansion-panel[${categoria}]/div/div/div/div/title-btn-add/div/button
    Clicar no Elemento             xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/add-receitas/div/form/mat-form-field[1]/div[1]/div/div[2]
    Inserir Texto                xpath:/html/body/div[3]/div[4]/div/div/mat-option[1]/span/ngx-mat-select-search/div/div/input     ${receita}
    Clicar no Elemento             xpath:/html/body/div[3]/div[4]/div/div/mat-option[2]
    Inserir Texto                xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/add-receitas/div/form/mat-form-field[2]/div[1]/div/div[2]/input     100
    Clicar no Botão           xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/add-receitas/div/div/button[2]

Criar Temporada
    [Arguments]    ${codigo_temporada}=1    ${nome_temporada}=Temporada 1    ${vermelho}=255    ${verde}=0    ${azul}=0
    Navegar configuração de bilhete    6
    Sleep                              1s
    Navegar configuração de bilhete    7
    Sleep                        1s
    Clicar no Botão                xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[7]/div/div[1]/title-btn-add/div/button
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
    Clicar no Elemento             xpath:/html/body/div[3]/div[4]/div/div/mat-option
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    Enter
    Colocar cor               ${vermelho}    ${verde}    ${azul}
    sleep                     2s
    Clicar no Elemento             xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/add-temporada/div[2]/button[2]
    sleep                     1s

Pegar codigo e nome do Ultimo Bilhete
    Clicar no Elemento        xpath:/html/body/app-root/app-pages/div/div/div/lista-bilhetes/lista-cadastros-com-busca/div/mat-card/div/table/thead/tr/th[1]
    Sleep                1s
    Clicar no Elemento        xpath:/html/body/app-root/app-pages/div/div/div/lista-bilhetes/lista-cadastros-com-busca/div/mat-card/div/table/thead/tr/th[1]
    ${numero_bilhete}=   SeleniumLibrary.Get Text             xpath:/html/body/app-root/app-pages/div/div/div/lista-bilhetes/lista-cadastros-com-busca/div/mat-card/div/table/tbody/tr[1]/td[1]/div/div
    ${nome_bilhete}=     SeleniumLibrary.Get Text             xpath:/html/body/app-root/app-pages/div/div/div/lista-bilhetes/lista-cadastros-com-busca/div/mat-card/div/table/tbody/tr[1]/td[2]/div/div
    ${nome_e_numero}=    Create List                          ${numero_bilhete}     ${nome_bilhete}
    log   ${nome_e_numero}
    RETURN    ${nome_e_numero}

Pegar codigo e nome da Ultima Categoria
    Clicar no Elemento        xpath:/html/body/app-root/app-pages/div/div/div/categoria/lista-cadastros-com-busca/div/mat-card/div/table/thead/tr/th[1]
    Sleep                1s
    Clicar no Elemento        xpath:/html/body/app-root/app-pages/div/div/div/categoria/lista-cadastros-com-busca/div/mat-card/div/table/thead/tr/th[1]
    ${numero_bilhete}=   SeleniumLibrary.Get Text             xpath:/html/body/app-root/app-pages/div/div/div/categoria/lista-cadastros-com-busca/div/mat-card/div/table/tbody/tr[1]/td[1]/div/div
    ${nome_bilhete}=     SeleniumLibrary.Get Text             xpath:/html/body/app-root/app-pages/div/div/div/categoria/lista-cadastros-com-busca/div/mat-card/div/table/tbody/tr[1]/td[2]/div/div
    ${nome_e_numero}=    Create List                          ${numero_bilhete}     ${nome_bilhete}
    log   ${nome_e_numero}
    RETURN    ${nome_e_numero}

Colocar cor 
    [Arguments]    ${RED}    ${GREEN}    ${BLUE}    ${xpath}
    Clicar no Elemento         xpath:${xpath}
    Sleep    1
    Repetidor de teclas        Up    5
    Repetidor de teclas        Down    5
    Sleep                      1
    Repetidor de teclas        tab    3
    RPA.Desktop.Type Text      ${RED}
    Sleep                      1
    Repetidor de teclas        tab    1
    RPA.Desktop.Type Text      ${GREEN}
    Sleep                      1
    Repetidor de teclas        tab    1
    RPA.Desktop.Type Text      ${BLUE}
    Sleep                      1
    RPA.Desktop.Press Keys     Enter

Criar tabela de preço
    [Arguments]    ${numero_bilhete}    ${nome_tabela}=Tabela de Preço Automatizada    ${preço}=100    ${taxa}=0    ${qtd_de_categorias}=1    
    Go To                      https://testescard.limbersoftware.com.br/#/pages/calendarioPrecoDisp/config/tabelaPreco?bilhete=${numero_bilhete}
    Clicar no Elemento         xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[1]/div/table/thead/tr/th[4]/div/button
    Inserir Texto              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[2]/div/tabela-preco/div[1]/div/div/mat-form-field[1]/div[1]/div/div[2]/input    ${nome_tabela}
    Sleep                      2s
    Repetidor de teclas        tab    2
    Clicar no Elemento         xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[2]/div/tabela-preco/div[1]/mat-card/mat-card-content/table/thead/tr/th[6]/div/button[1] 
    sleep                      2s
    FOR    ${i}    IN RANGE    0    ${qtd_de_categorias}   
        ${valor}=                  Evaluate    ${i} + 1
        Repetidor de teclas        Down    2
        Clicar no Elemento         xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[2]/div/tabela-preco/div[1]/mat-card/mat-card-content/table/tbody/tr[${valor}]/td[4]/div/button
        Clicar no Botão            xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/ng-component/div[2]/table/thead/tr/th[4]/button
        Clicar no Elemento         xpath:/html/body/div[3]/div[4]/div/div/mat-option[2]
        ${resul}=                  Evaluate                   ${preço} * ${valor}
        Clicar no Elemento         xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/ng-component/div[2]/table/tbody/tr/td[3]/mat-form-field/div[1]/div[2]/div/input    
        Inserir Texto              xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/ng-component/div[2]/table/tbody/tr/td[3]/mat-form-field/div[1]/div[2]/div/input      ${resul} 
        Clicar no Elemento         xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/ng-component/mat-dialog-actions/button[2] 
        Inserir Texto              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[2]/div/tabela-preco/div[1]/mat-card/mat-card-content/table/tbody/tr/td[5]/mat-form-field/div[1]/div[2]/div/input    ${taxa}        
        Clicar no Elemento         xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[2]/div/tabela-preco/div[1]/mat-card/mat-card-content/table/tbody/tr/td[6]/div/div/button
        Sleep                      1s
        Repetidor de teclas        Down    2
    END
    Sleep                      1s
    Colocar cor                49    0    53    /html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[2]/div/tabela-preco/div[1]/div/div/mat-form-field[3]/div[1]/div/div[2]
    Clicar no Botão            xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[2]/div/tabela-preco/div[2]/buttons/div/div/button[3]
    Sleep                      2s

Criar tabela de disponibilidade
    [Arguments]    ${numero_bilhete}    ${nome_tabela}=Tabela de Disponibilidade Automatizada    ${hora_inico}=0600    ${hora_fim}=2200    ${qtd_vagas}=1000
    Clicar no Elemento         id:mat-tab-link-1
    Clicar no Elemento         xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/app-lista-tabelas-disp/mat-tab-group/div/mat-tab-body[1]/div/table/thead/tr/th[4]/div/button
    Inserir Texto              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/app-lista-tabelas-disp/mat-tab-group/div/mat-tab-body[2]/div/config-disp/div[1]/div/div/mat-form-field[1]/div[1]/div/div[2]/input    ${nome_tabela}
    Repetidor de teclas        tab    1
    Colocar cor                106    0    28    /html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/app-lista-tabelas-disp/mat-tab-group/div/mat-tab-body[2]/div/config-disp/div[1]/div/div/mat-form-field[2]/div[1]/div/div[2]
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
    Clicar no Elemento         xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/app-lista-tabelas-disp/mat-tab-group/div/mat-tab-body[2]/div/config-disp/div[2]/buttons/div/div/button[3]
    Sleep                      2s

Preencher dia do calendario
    [Arguments]    ${mês}    ${dia}    ${n°_tabela_preco}=1    ${n°_tabela_dispo}=1    ${n°_temporada}=1
    Clicar no Elemento              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[3]
    Clicar no Elemento              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/div/ng-full-year-calendar-lib
    sleep                      1s
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
                # Sleep    1s
                @{dia_calendario}=    Run Keyword And Ignore Error     SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/div/ng-full-year-calendar-lib/dts-select-container/div[1]/div[${mês}]/table/tbody/tr[${linha}]/td[${coluna}]/div/section
                Log    ${dia_calendario[1]}
                ${tem_dia}=    Run Keyword And Ignore Error    Should Contain    ${dia_calendario[1]}    Element with locator 'xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/div/ng-full-year-calendar-lib/dts-select-container/div[1]/div[${mês}]/table/tbody/tr[${linha}]/td[${coluna}]/div/section' not found.
                Log    ${tem_dia}
                IF    ${tem_dia} == ('PASS', None)
                    Log    Dia incorreto.
                ELSE
                    IF    ${dia_calendario[1]} == ${dia}
                    Clicar no Elemento     xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/div/ng-full-year-calendar-lib/dts-select-container/div[1]/div[${mês}]/table/tbody/tr[${linha}]/td[${coluna}]/div
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
        Clicar no Elemento          xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/section/mat-card[2]/footer/button
    ELSE
        Clicar no Elemento          xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/section/mat-card[2]/footer/button[2]
    END
    Sleep                      2s
    RPA.Desktop.Press Keys     Tab
    RPA.Desktop.Type Text      ${qtd_vagas}
    Repetidor de teclas        tab    4
    RPA.Desktop.Press Keys     Enter

Criar bloqueio de disponibilidade
    ${validador}=              Valida campo               /html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/section/mat-card[2]/footer/button    Configurar exceções e alta procura
    IF    ${validador} == 1
        Clicar no Elemento          xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/section/mat-card[2]/footer/button
    ELSE
        Clicar no Elemento          xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/section/mat-card[2]/footer/button[2]
    END
    Clicar no Elemento              xpath:/html/body/div[3]/div[3]/div/mat-dialog-container/div/div/app-excecoes/section/table/tbody/tr/td[4]/div/mat-checkbox
    Inserir Texto                 xpath:/html/body/div[3]/div[4]/div/mat-dialog-container/div/div/app-bloqueio-dialog/div/div[1]/mat-form-field/div[1]/div/div[2]/textarea    Bloqueado pelo Teste Automatizado
    Sleep                      1s
    Repetidor de teclas        tab    2
    Sleep                      1s
    RPA.Desktop.Press Keys     Enter
    Clicar no Elemento              xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/app-excecoes/mat-dialog-actions/button[2]
    
Valida campo
    [Arguments]   ${xpath}   ${texto_esperado}    
    ${texto_obtido}=    Run Keyword and ignore error    SeleniumLibrary.Get Text    xpath:${xpath}
    IF    $texto_esperado == $texto_obtido[1]
        RETURN    1
    ELSE
        RETURN    0
    END

Colocar o bilhete no e-commerce
    [Arguments]     ${numero_bilhete}    
    Mudar Página    https://testescard.limbersoftware.com.br/#/pages/ecommerce/ec-config?id=349
    Sleep           1s
    Clicar no Elemento   xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-ec-config/div[1]/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[4]
    Clicar no Elemento   xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-ec-config/div[1]/mat-card/mat-tab-group/div/mat-tab-body[4]/div/div/div/div[2]/mat-accordion/mat-expansion-panel/mat-expansion-panel-header
    Clicar no Elemento   xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-ec-config/div[1]/mat-card/mat-tab-group/div/mat-tab-body[4]/div/div/div/div[2]/mat-accordion/mat-expansion-panel/div/div/div/mat-card/div/div[2]/div/button
    Inserir Texto      xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/limber-select-product/div/div[1]/mat-form-field/div[1]/div/div[2]/input    ${numero_bilhete}
    Sleep           1s
    ${ativo}=       Get Element Attribute     xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/limber-select-product/div/div[3]/view-product/mat-card/div[2]/img   style
    Log    ${ativo}
    ${resultado}=    Run Keyword and ignore error     Should Be Equal    ${ativo}    opacity 1;
    Log    ${resultado}
    IF    ${resultado} == ('FAIL', 'opacity: 0; != opacity 1;') 
        Clicar no Elemento   xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/limber-select-product/div/div[3]/view-product/mat-card/div[2]
        Clicar no Elemento   xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/limber-select-product/div/div[4]/button[2]
        Clicar no Elemento   xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-ec-config/div[2]/buttons/div/div/button[3]
        sleep           15s
        Log             Bilhete adicionado ao E-commerce. 
    ELSE
        Log    Bilhete já adicionado ao E-commerce.
    END

Adicionar no perfil
    [Arguments]    ${numero_bilhete}   ${id_perfil_de_venda}   
    Go To          https://testescard.limbersoftware.com.br/#/pages/config/perfil?id=${id_perfil_de_venda}
    Clicar no Elemento  xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-perfil/div[1]/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[3]
    Inserir Texto     xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-perfil/div[1]/mat-card/mat-tab-group/div/mat-tab-body[3]/div/div/limber-select-product/div/div[1]/mat-form-field/div[1]/div/div[2]/input    ${numero_bilhete}
    Sleep          1s
    ${ativo}=      Get Element Attribute     xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-perfil/div[1]/mat-card/mat-tab-group/div/mat-tab-body[3]/div/div/limber-select-product/div/div[3]/view-product/mat-card/div[2]/img   style
    Log    ${ativo}
    ${resultado}=    Run Keyword and ignore error     Should Be Equal    ${ativo}    opacity 1;
    Log    ${resultado}
    IF    ${resultado} == ('FAIL', 'opacity: 0; != opacity 1;') 
        Clicar no Elemento   xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-perfil/div[1]/mat-card/mat-tab-group/div/mat-tab-body[3]/div/div/limber-select-product/div/div[3]/view-product/mat-card/div[2]
        Clicar no Elemento   xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-perfil/div[2]/buttons/div/div/button[3]
        sleep           15s
        Log             Bilhete adicionado ao perfil. 
    ELSE
        Log    Bilhete já adicionado ao perfil.
    END

Comparar valores
    [Arguments]    ${valor1}    ${valor2}   
    ${resultado}=    Run keyword and ignore error    Should Be Equal    ${valor1}    ${valor2}  
    RETURN    ${resultado}


Inativar bilhete
    [Arguments]    ${numero_bilhete}
    IF    ${numero_bilhete} == 6275
            Go to            https://testescard.limbersoftware.com.br/
            sleep            5s
            Go to            https://testescard.limbersoftware.com.br/#/pages/calendarioPrecoDisp/config/tabelaPreco?bilhete 
            Run Keyword and Ignore Error    Clicar no Elemento    xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[2]/div/tabela-preco/div[2]/buttons/div/div/button[1]
            Sleep                     1s
            RPA.Desktop.Press Keys    tab
            Sleep                     1s
            RPA.Desktop.Press Keys    Enter
            Run Keyword and Ignore Error    Clicar no Elemento    xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[2]
            Run Keyword and Ignore Error    Clicar no Elemento    xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/app-lista-tabelas-disp/mat-tab-group/div/mat-tab-body[1]/div/table/tbody/tr[1]/td[4]/div/button[1]
            Run Keyword and Ignore Error    Clicar no Elemento    xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/app-lista-tabelas-disp/mat-tab-group/div/mat-tab-body[2]/div/config-disp/div[2]/buttons/div/div/button[1]
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
        Clicar no Elemento    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[1]/div/div/form/div[1]/mat-checkbox
        Clicar no Elemento    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[2]/buttons/div/div/button[3]
    END

Retirar Categoria
    [Arguments]        ${numero_categoria}    ${numero_bilhete}
    Go to     https://testescard.limbersoftware.com.br/#/pages/cadastro/bilhete/${numero_bilhete}
    Navegar configuração de bilhete    2
    Navegar Configurações de venda > sessões    1
    Clicar no Elemento    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/bilhete-configuracao-venda/div[2]/form/section[1]/div/div/div/mat-accordion/mat-expansion-panel[${numero_categoria}]/mat-expansion-panel-header/span[1]/mat-panel-description/button[2]
    Sleep            1s    
    RPA.Desktop.Press Keys    Tab
    Sleep                     1s
    RPA.Desktop.Press Keys    Enter
    Clicar no Elemento        xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[2]/buttons/div/div/button[3]
    Sleep                     6s
    RPA.Desktop.Press Keys    Enter
    Sleep                     2s
    
Excluir Categoria
    [Arguments]    ${codigo_categoria}=1
    IF    ${codigo_categoria} == 1
        Go to    https://testescard.limbersoftware.com.br/#/pages/cadastro/categorias
        Clicar no Elemento        xpath:/html/body/app-root/app-pages/div/div/div/categoria/lista-cadastros-com-busca/div/mat-card/div/table/thead/tr/th[1]
        Clicar no Elemento        xpath:/html/body/app-root/app-pages/div/div/div/categoria/lista-cadastros-com-busca/div/mat-card/div/table/thead/tr/th[1]
        Clicar no Elemento        xpath:/html/body/app-root/app-pages/div/div/div/categoria/lista-cadastros-com-busca/div/mat-card/div/table/tbody/tr[1]/td[4]/button                           
    ELSE
        Go to        https://testescard.limbersoftware.com.br/#/pages/cadastro/categoria?id=${codigo_categoria}
        
    END
    Clicar no Elemento    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-categoria/div[3]/buttons/div/div/button[1]
    Sleep        1s
    RPA.Desktop.Press Keys    Tab
    RPA.Desktop.Press Keys    Enter
    
    
Cadastrar nova categoria
    [Arguments]    ${nome_categoria}=Categoria Gerada Pelos Testes Automatizados       ${nome_convênio}=n 
    Go To    https://testescard.limbersoftware.com.br/#/pages/cadastro/categoria
    Inserir Texto    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-categoria/div[2]/mat-card/mat-tab-group/div/mat-tab-body[1]/div/form/div/div[1]/div[2]/mat-form-field[1]/div[1]/div/div[2]/input    ${nome_categoria}
    Clicar no Elemento    Xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-categoria/div[2]/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[2]
    Clicar no Elemento    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-categoria/div[2]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/lista-permissoes/div/title-btn-add/div/button
    Clicar no Elemento    xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/add-permissao-acesso-dialog/div/table-with-selection/div/div[2]/cdk-virtual-scroll-viewport/div[1]/table/thead/th[1]/mat-checkbox
    Clicar no Elemento    xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/add-permissao-acesso-dialog/div/div/button[2]
    ${resultado}=    Comparar valores    ${nome_convênio}    n
    log    ${resultado}
    IF  "$resultado" != "None"
        Clicar no Elemento    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-categoria/div[2]/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[3]
        Clicar no Elemento    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-categoria/div[2]/mat-card/mat-tab-group/div/mat-tab-body[3]/div/div/title-btn-add/div/button
        Inserir Texto       xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/app-add-convenio/div[1]/mat-form-field[1]/div[1]/div/div[2]/input    1
        Inserir Texto       xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/app-add-convenio/div[1]/mat-form-field[2]/div[1]/div/div[2]/input     ${nome_convênio}
        Clicar no Botão     xpath:/html/body/div[3]/div[2]/div/mat-dialog-container/div/div/app-add-convenio/div[2]/button[2]
    END
    Clicar no Elemento    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-categoria/div[3]/buttons/div/div/button[2]
    
Adicionar categoria em bilhetes ja existente
    [Arguments]    ${categoria}    ${qtd_de_categorias}    ${receita}    ${numero_bilhete}
    Go to    https://testescard.limbersoftware.com.br/#/pages/cadastro/bilhete/${numero_bilhete}
    Adicionar categoria       ${categoria}
    Adicionar receita         ${qtd_de_categorias}    ${receita}
    Clicar no Elemento             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[2]/buttons/div/div/button[3]
    Sleep                     1s
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s

Preencher convênio
    [Arguments]    ${nome_convênio}=CONVÊNIO
    Sleep            2s
    Clicar no Elemento    xpath:/html/body/div[3]/div[2]/div/mat-bottom-sheet-container/app-visitors-form/div/div[1]/div[2]/form/mat-form-field/div[1]/div/div[2]/mat-select
    sleep            1s
    ${nome_coletado}=    SeleniumLibrary.get text    xpath:/html/body/div[3]/div[4]/div/div/mat-option/span
    IF    $nome_convênio == $nome_coletado
        Clicar no Elemento    xpath:/html/body/div[3]/div[4]/div/div/mat-option
    ELSE
        Fail    Convênio errado ou não existênte.
    END    
    
Retirar Exceção
    [Arguments]    ${numero_bilhete}
    Go to    https://testescard.limbersoftware.com.br/#/pages/calendarioPrecoDisp/config/calendario?bilhete=${numero_bilhete}
    sleep    4s
    Clicar no Elemento  xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[3]
    Sleep    2s
    @{ano_mes_dia}=  Get Time	year month day 
    Preencher dia do calendario    ${ano_mes_dia[1]}    ${ano_mes_dia[2]}
    Sleep          1s    
    Clicar no Elemento  xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/calendario-temporadas/div/div[2]/section/mat-card[2]/footer/button[1]
    Sleep    1s

Adicionar nova temporada em um bilhete
    [Arguments]    ${numero_bilhete}
    Go to    https://testescard.limbersoftware.com.br/#/pages/cadastro/bilhete/${numero_bilhete}
    sleep    5s
    Criar Temporada   2    Temporada 2     0    255    0
    Clicar no Elemento             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[2]/buttons/div/div/button[3]
    Sleep                     1s
    # RPA.Desktop.Press Keys    tab
    # RPA.Desktop.Press Keys    Enter

Caso aconteca erro SmokeWeb
        [Arguments]     ${Caminho_Screenshots}        ${nome_print}    
        Run Keyword If Test Failed    Run Keyword And Ignore error    Remove File                     ${Caminho_Screenshots}${nome_print}.png
        Run Keyword If Test Failed    Take Screenshot                 ${Caminho_Screenshots}Erro ${nome_print}.png
        Run Keyword If Test Failed    Fechar navegador
        Sleep                         1s
        Run Keyword If Test Failed    Abrir CARD e logar

Selecionar estabelecimento nos relatórios
    Clicar no Elemento               xpath:/html/body/app-root/app-relatorios/div/div/div/div[2]/mat-select
    Clicar no Elemento               xpath:/html/body/div[2]/div[2]/div/div/mat-option[1]/span/ngx-mat-select-search/div/div/input
    Inserir Texto                    xpath:/html/body/div[2]/div[2]/div/div/mat-option[1]/span/ngx-mat-select-search/div/div/input            2503
    Sleep                            1s
    RPA.Desktop.Press Keys           Enter
    Sleep                            2s

Selecionar a data de hoje nos relatórios
    Clicar no Botão                  xpath:/html/body/app-root/app-relatorios/div/div/div/div[1]/div[2]/mat-datepicker-toggle/button
    Repetidor de Teclas              Enter    2

Configurar o Relatório
    [Arguments]    ${nome_relatorio}
    Conferir Texto       xpath:/html/body/app-root/app-relatorios/div/div/div/div[1]/h2    ${nome_relatorio}
    Selecionar estabelecimento nos relatórios
    Selecionar a data de hoje nos relatórios
    Sleep    2

Validar o titulo e clicar em novo
    [Arguments]    ${titulo_pagina}    ${rota_html}  
    Sleep                                     2s
    Element Should Contain                    xpath:/html/body/app-root/app-pages/div/div/div/${rota_html}/lista-cadastros-com-busca/div/div/h1    ${titulo_pagina}                                               
    Clicar no Botão                           xpath:/html/body/app-root/app-pages/div/div/div//${rota_html}/lista-cadastros-com-busca/div/div/h1/button

Validar titulo de criar ou editar cadastros
        [Arguments]    ${tiulo_pagina_novo}    ${rota_html_novo}
        Wait Until Element Is Visible      xpath:/html/body/app-root/app-pages/div/div/div/${rota_html_novo}/div/div/h1
        Element Should Contain             xpath:/html/body/app-root/app-pages/div/div/div/${rota_html_novo}/div/div/h1     ${tiulo_pagina_novo}   
        Sleep                                     2s

Filtrar dropdown
    [Arguments]    ${codigo}    ${xpath}
    Clicar no Elemento                   ${xpath}             
    Inserir Texto                        xpath:/html/body/div[3]/div[3]/div/div/mat-option[1]/span/ngx-mat-select-search/div/div/input     ${codigo}
    Clicar no Elemento                   xpath:/html/body/div[3]/div[3]/div/div/mat-option[2]                            

Mudar para a nova janela
    @{handles}=    SeleniumLibrary.Get Window Handles
    ${new_handle}=    Set Variable    ${handles[1]}
    SeleniumLibrary.Switch Window    ${new_handle}
    Log    Mudou para a nova janela com o handle: ${new_handle}

Caso aconteca erro Regressivos CARD
        [Arguments]     ${Caminho_Screenshots}        ${nome_print}    
        Run Keyword If Test Failed    Run Keyword And Ignore error    Remove File                     ${Caminho_Screenshots}${nome_print}.png
        Run Keyword If Test Failed    Take Screenshot                 ${Caminho_Screenshots}Erro ${nome_print}.png
        Run Keyword If Test Failed    Fechar navegador
        Sleep                         1s
        Run Keyword If Test Failed    Abrir CARD e logar

Excluir tabela de preço e disponibilidade
    [Arguments]    ${numero_bilhete}
    Go To    https://testescard.limbersoftware.com.br/#/pages/calendarioPrecoDisp/config/tabelaPreco?bilhete=${numero_bilhete}
    Clicar no Botão            xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[1]/div/table/tbody/tr/td[4]/div/button[1]
    Clicar no Botão            xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/lista-tabelas-preco/mat-tab-group/div/mat-tab-body[2]/div/tabela-preco/div[2]/buttons/div/div/button[1]
    Clicar no Botão            xpath:/html/body/div[3]/div[3]/div/mat-dialog-container/div/div/confirm-dialog/div/div[3]/button[2]
    Sleep                      2s
    Clicar no Elemento         xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[2]
    Clicar no Botão            xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/app-lista-tabelas-disp/mat-tab-group/div/mat-tab-body[1]/div/table/tbody/tr/td[4]/div/button[1]
    Clicar no Botão            xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/mat-tab-nav-panel/app-lista-tabelas-disp/mat-tab-group/div/mat-tab-body[2]/div/config-disp/div[2]/buttons/div/div/button[1]
    Clicar no Botão            xpath:/html/body/div[3]/div[3]/div/mat-dialog-container/div/div/confirm-dialog/div/div[3]/button[2]

Clicar no Botão
    [Arguments]    ${xpath_botão}
    Wait Until Element Is Enabled    ${xpath_botão}
    Click Button                     ${xpath_botão}

Clicar no Elemento
    [Arguments]    ${xpath_elemento}
    Wait Until Element Is Visible    ${xpath_elemento}
    Click Element                    ${xpath_elemento}

Inserir Texto
    [Arguments]    ${xpath_input}    ${texto}
    Wait Until Element Is Visible    ${xpath_input}
    Input Text                       ${xpath_input}    ${texto}

Conferir Texto
    [Arguments]    ${xpath_texto}    ${texto}
    Wait Until Element Is Visible    ${xpath_texto}
    Element Should Contain           ${xpath_texto}    ${texto}