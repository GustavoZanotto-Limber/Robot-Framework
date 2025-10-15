*** Settings ***
Resource    ../BaseKeywordsDesktop.robot
Resource    ../BDDKeywordsDesktop.robot

*** Keywords ***

Caso aconteca erro SmokeWeb
        [Arguments]     ${Caminho_Screenshots}        ${nome_print}    
        Run Keyword If Test Failed    Run Keyword And Ignore error    Remove File                     ${Caminho_Screenshots}${nome_print}.png
        Run Keyword If Test Failed    Take Screenshot                 ${Caminho_Screenshots}Erro ${nome_print}.png
        Run Keyword If Test Failed    Fechar navegador
        Sleep                         1s
        Run Keyword If Test Failed    Abrir CARD e logar

Selecionar estabelecimento nos relatórios
    SeleniumLibrary.Click Element    xpath:/html/body/app-root/app-relatorios/div/div/div/div[2]/mat-select
    Sleep                            2s
    SeleniumLibrary.Click Element    xpath:/html/body/div[2]/div[2]/div/div/mat-option[1]/span/ngx-mat-select-search/div/div/input
    SeleniumLibrary.Input Text       xpath:/html/body/div[2]/div[2]/div/div/mat-option[1]/span/ngx-mat-select-search/div/div/input            1929
    Sleep                            1s
    RPA.Desktop.Press Keys           Enter
    Sleep                            2s

Selecionar a data de hoje nos relatórios
    Sleep    2s
    SeleniumLibrary.Click Element    xpath:/html/body/app-root/app-relatorios/div/div/div/div[1]/div[2]/mat-datepicker-toggle/button
    Repetidor de Teclas              Enter    2

Configurar o Relatório
    [Arguments]    ${nome_relatorio}
    SeleniumLibrary.Element Should Contain        xpath:/html/body/app-root/app-relatorios/div/div/div/div[1]/h2    ${nome_relatorio}
    Selecionar estabelecimento nos relatórios
    Selecionar a data de hoje nos relatórios
    Sleep    2

Validar o titulo e clicar em novo
    [Arguments]    ${titulo_pagina}    ${rota_html}  
    Sleep                                     2s
    Element Should Contain                    xpath:/html/body/app-root/app-pages/div/div/div/${rota_html}/lista-cadastros-com-busca/div/div/h1    ${titulo_pagina}                                               
    Click Element                             xpath:/html/body/app-root/app-pages/div/div/div//${rota_html}/lista-cadastros-com-busca/div/div/h1/button
    Sleep                                     2s

Validar titulo de criar ou editar cadastros
        [Arguments]    ${tiulo_pagina_novo}    ${rota_html_novo}
        Element Should Contain                    xpath:/html/body/app-root/app-pages/div/div/div/${rota_html_novo}/div/div/h1    ${tiulo_pagina_novo}
        Sleep                                     2s

Filtrar dropdown
    [Arguments]    ${codigo}    ${xpath}
    Click Element                        xpath:${xpath}             
    Input Text                           xpath:/html/body/div[3]/div[3]/div/div/mat-option[1]/span/ngx-mat-select-search/div/div/input     ${codigo}
    Sleep                                2s
    Click Element                        xpath:/html/body/div[3]/div[3]/div/div/mat-option[2]                            