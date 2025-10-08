*** Settings ***
Library    RPA.Desktop
Library    RPA.Windows    
Library    OperatingSystem
Library    Process
Library    RPA.Excel.Files
Library    RPA.Excel.Application
Library    String
Library    SeleniumLibrary        screenshot_root_directory=EstruturasBase\\DESKTOP\\ScreenShots\\Selenium
Library    Collections
Library    RPA.PDF
Resource   ../BaseKeywordsWeb.robot

*** Variables ***
${URL_Card}=    https://testescard.limbersoftware.com.br/
*** Keywords ***
    
#--------------------------------------------DADO--------------------------------------------
Dado que loguei no CARD
    Go To    ${URL_Card}
    Sleep    3s


#--------------------------------------------QUANDO--------------------------------------------

Quando eu acessar o Dashboard
    Sleep                2s
    SeleniumLibrary.Click Element   xpath:/html/body/app-root/app-pages/div/div/card-sidenav/div/app-menu-item[1]/a
    Sleep    2s
    
Quando acesso o menu lateral
    [Arguments]    ${numero_menu}    ${numero_submenu}=0
    sleep                    1s
    SeleniumLibrary.Click Element        xpath:/html/body/app-root/app-pages/div/div/card-sidenav/div/app-menu-item[${numero_menu}]
    sleep                    3s
    IF    '${numero_submenu}' != '0'
        SeleniumLibrary.Click Element    xpath:/html/body/div[3]/div/div/div/div/section[${numero_submenu}]/a
        sleep                2s
    END

#--------------------------------------------ENTÃO--------------------------------------------

Então o sistema deve apresentar o Dashboard corretamente
    Sleep                                    5s
    SeleniumLibrary.Click Element  xpath:/html/body/app-root/app-pages/div/div/div/dashboard/div/div[1]/button[1]
    Sleep    5s
    SeleniumLibrary.Click Element  xpath:/html/body/app-root/app-pages/div/div/div/dashboard/div/div[1]/button[3]
    Sleep    1s
    SeleniumLibrary.Click Element  xpath:/html/body/div[3]/div[2]/div/div/mat-form-field
    RPA.Desktop.Type Text          Zanotto
    Repetidor de Teclas            Down    2
    RPA.Desktop.Press Keys         Enter
    SeleniumLibrary.Click Element  xpath:/html/body/div[3]/div[2]/div/div/div/button[2]
    Sleep                          2s
    
Então valido se a tela de Gerenciamento de Vendas foi carregada corretamente
    Sleep                                    2s
    SeleniumLibrary.Element Should Be Visible    xpath:/html/body/app-root/app-pages/div/div/div/vendas/div/div[1]/h1
    Sleep                                    2s
    SeleniumLibrary.Click Element            xpath:/html/body/app-root/app-pages/div/div/div/vendas/div/div[2]/filtros-vendas/form/mat-form-field[5]
    Sleep                                    1s
    RPA.Desktop.Type Text                    ZANOTTO Bilheteria ONLINE
    sleep                                    1s 
    RPA.Desktop.Press Keys                   Down
    RPA.Desktop.Press Keys                   Enter
    Sleep                                    1s
    SeleniumLibrary.Click Element            xpath:html/body/app-root/app-pages/div/div/div/vendas/div/div[2]/filtros-vendas/form/div/section[2]/button[2]

Então valido se a tela de Extração de Dados/Relatórios foi carregada corretamente
    Sleep                                    2s
    SeleniumLibrary.Element Should Be Visible    xpath:/html/body/app-root/app-pages/div/div/div/app-relatorios/h1
    Sleep                                    2s
    SeleniumLibrary.Click Element            xpath:/html/body/app-root/app-pages/div/div/div/app-relatorios/filtros-vendas/form/mat-form-field[5]
    Sleep                                    1s
    RPA.Desktop.Press Keys                   Down
    RPA.Desktop.Press Keys                   Enter
    SeleniumLibrary.Click Element            xpath:/html/body/app-root/app-pages/div/div/div/app-relatorios/div/div[2]/filtros-vendas/form/div/section[2]/button[1]
