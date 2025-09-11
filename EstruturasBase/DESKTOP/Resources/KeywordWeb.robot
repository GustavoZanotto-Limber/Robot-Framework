*** Settings ***   
Library    OperatingSystem
Library    SeleniumLibrary    screenshot_root_directory=EstruturasBase\\DESKTOP\\ScreenShots\\Selenium
Library    Process
Library    Collections
Library    String
Resource   BaseDesktop.robot
Resource   Keywords.robot
Resource   BaseWeb.robot

*** Variables ***
${qtd_vagas}
${Espaço}=    ${SPACE}

*** Keywords ***

# ****** BDDs **********
#----------------------------------------DADO----------------------------------------

Dado que estou na tela de criação de bilhete
    Mudar Página   https://testescard.limbersoftware.com.br/#/pages/cadastro/bilhete/novo
    Sleep    1s

Dado que estou na tela de preço e disponibilidade
    [Arguments]    ${numero_bilhete}=6275
    Criar tabela de preço               ${numero_bilhete}    preço=500
    Sleep    1s



#---------------------------------------QUANDO---------------------------------------

Quando insiro as informações para um novo cadastro de bilhete
    Sleep    1s
    Criar Bilhete     Bilhete Automatizado: Por Horario     ZANOTTO NAO MEXER   1

Quando crio uma nova tabela de preço e disponibilidade para o bilhete
    [Arguments]    ${numero_bilhete}=6275
    Sleep                    1s
    Criar tabela de disponibilidade     ${numero_bilhete}
    @{ano_mes_dia}=  Get Time	year month day 
    Preencher dia do calendario    ${ano_mes_dia[1]}    ${ano_mes_dia[2]}


#---------------------------------------ENTAO----------------------------------------

Então valido se o bilhete foi criado corretamente
    Wait Until Element Is Visible      xpath:/html/body/app-root/app-pages/div/div/div/lista-bilhetes/lista-cadastros-com-busca/div/mat-card/div/table/thead/tr/th[1]
    ${codigo_e_nome}=    Pegar codigo e nome do Ultimo Bilhete
    Should Contain        ${codigo_e_nome[1]}     Bilhete Automatizado: Por Horario
    Iniciar sessao        cde_win_bca_frontR40
    Ir Para Emissão de Bilhetes
    Escrever para consultar    ${codigo_e_nome[0]}
    ${texto}=    Run keyword and ignore error    RPA.Windows.Get Text       	Bilhete não cadastrado, ou específico para venda em outro PDV.
    IF    $texto == ('FAIL', "ElementNotFound: Element not found with locator 'Bilhete não cadastrado, ou específico para venda em outro PDV.'")
        Log     Bilhete encontrado.
        Fechar com Sim
        Encerrar Tudo
    ELSE
        RPA.Windows.Click    OK
        Fechar com Sim
        RPA.Windows.Click    OK
        RPA.Windows.Click    Fechar
        Encerrar Tudo
        Fail    O Bilhete não foi cadastrado com sucesso, ou não integrou na bilheteria.
    END
    Sleep                    1s
    ${numero_bilhete}=    Set Variable    ${codigo_e_nome[0]}
    Set Suite Variable    ${numero_bilhete}
    RETURN    ${codigo_e_nome[0]}
    

Então valido se a disponibilidade integrou corretamente  
    [Arguments]    ${numero_bilhete}=6275    ${qtd_vagas}=1000
    Iniciar sessao    cde_win_bca_frontR40
    Ir Para Emissão de Bilhetes
    ${qtd_vagas_bilhete}=    Selecionar o bilhete e retornar quantidade de vagas (categoria)   ${numero_bilhete}    1
    ${qtd_vagas_bilhete}=        Convert to Integer    ${qtd_vagas_bilhete}
    IF    ${qtd_vagas_bilhete} == ${qtd_vagas}
        Log     A disponibilidade integrou corretamente.
    ELSE
        Fail    A disponibilidade não integrou corretamente.
    END

    