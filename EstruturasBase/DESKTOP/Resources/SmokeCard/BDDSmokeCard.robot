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
    