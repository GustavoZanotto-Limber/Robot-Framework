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