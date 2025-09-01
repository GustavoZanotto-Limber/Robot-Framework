*** Settings ***
Documentation    Keywords para automação WEB com Robot Framework e Selenium
Library    OperatingSystem
Library    Process
Library    RPA.Excel.Files
Library    RPA.Excel.Application
Library    String
Library    Collections
Library    RPA.PDF
Library    SeleniumLibrary
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
    Sleep                      1s
    Repetidor de teclas        Tab    2
    RPA.Desktop.Press Keys     Enter


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