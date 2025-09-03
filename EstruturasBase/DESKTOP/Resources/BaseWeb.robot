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
    Maximize Browser Window
    Sleep                      1s
    Preencher email
    Sleep                      1s
    Preencher senha
    Sleep                      1s
    clicar em continuar
    Sleep                      2s
    Tirar notificação
    Sleep                      2s
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