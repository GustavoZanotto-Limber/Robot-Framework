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
Resource   ../Base/BaseKeywordsCARD.robot


*** Variables ***
${URL_Card}=    https://testescard.limbersoftware.com.br/
${URL_E-Commerce}=     https://regressivoscard.testescard.limber.net.br/
*** Keywords ***
    
# ---------------------DADO---------------------
Dado que estou no e-commerce
    Go To   ${URL_E-Commerce}
    Sleep    2s


# ---------------------Quando---------------------


    


# ---------------------Então---------------------