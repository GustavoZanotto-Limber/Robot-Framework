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
