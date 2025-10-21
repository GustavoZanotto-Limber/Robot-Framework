*** Settings ***   
Library    OperatingSystem
Library    SeleniumLibrary    screenshot_root_directory=EstruturasBase\\DESKTOP\\ScreenShots\\Selenium
Library    Process
Library    Collections
Library    String
Resource   BaseKeywordsDesktop.robot
Resource   BDDKeywordsDesktop.robot
Resource   BaseKeywordsWeb.robot

*** Variables ***
${qtd_vagas}
${Espaço}=    ${SPACE}

*** Keywords ***

# ****** BDDs **********
#----------------------------------------DADO----------------------------------------

Dado que estou na tela de criação de bilhete
    Go to   https://testescard.limbersoftware.com.br/#/pages/cadastro/bilhete/novo
    Sleep    1s

Dado que estou na tela de preço e disponibilidade
    [Arguments]    ${numero_bilhete}=6275    ${nome_tabela}=Tabela de Preço Automatizada     ${taxa}=0
    Adicionar no Perfil    ${numero_bilhete}
    Criar tabela de preço               ${numero_bilhete}   ${nome_tabela}     500    ${taxa}
    Sleep    1s

Dado que estou na tela de Exceções de Preço e Disponibilidade
    [Arguments]    ${numero_bilhete}=6275
    Sleep          2s
    Go To   https://testescard.limbersoftware.com.br/#/pages/calendarioPrecoDisp/config/tabelaPreco?bilhete=${numero_bilhete}
    Sleep    2s
    Criar tabela de preço               ${numero_bilhete}   tabela de preço     500
    Criar tabela de disponibilidade     ${numero_bilhete}
    @{ano_mes_dia}=  Get Time	year month day 
    Preencher dia do calendario    ${ano_mes_dia[1]}    ${ano_mes_dia[2]}
    Sleep                       2s
    
Dado que estou na tela de emissão de bilhetes
    Iniciar sessao        cde_win_bca_front
    Ir Para Emissão de Bilhetes
    Sleep    2s

Dado que o usuário acessa o Cadastro de Categorias
    Cadastrar nova categoria      Categoria Gerada pelos Testes Automatizados: CONVÊNIO    CONVÊNIO

Dado que adicionei uma categoria no bilhete 
     Adicionar categoria em bilhetes ja existente    CATEGORIA 2 - INTEGRADA   2    3627
     Adicionar categoria em bilhetes ja existente    CATEGORIA 3 - INTEGRADA   3    3627

Dado que criei novas temporadas
    [Arguments]    ${numero_bilhete}=6275
    Adicionar nova temporada em um bilhete    ${numero_bilhete}
    
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

Quando crio uma Exceção de Disponibilidade para o bilhete
    Sleep                    2s
    Criar exceção de disponibilidade     
   
Quando emito um bilhete com saldo atualizado 
    [Arguments]    ${numero_bilhete}=6275    ${qtd_vagas}=5
    Sleep                    2s
    ${qtd_vagas_coletada}=    Selecionar o bilhete e retornar quantidade de vagas (categoria)   ${numero_bilhete}    1
    log    Quantidade de vagas antes da emissão: ${qtd_vagas_coletada}
    ${qtd_vagas_coletada}=        Convert to Integer    ${qtd_vagas_coletada}
    ${qtd_vagas}=            Convert to Integer    ${qtd_vagas}
    Should Be Equal    ${qtd_vagas}    ${qtd_vagas_coletada} 
    Sleep              1s
    Finalizar compra
    sleep          2s
    Quando finalizo o pagamento    1

Quando realizo o bloqueio de horário para o bilhete
    [Arguments]    ${numero_bilhete}=6275
    Criar bloqueio de disponibilidade
    Sleep    2s

Quando ele insere a tabela com taxa no calendario
    [Arguments]                ${numero_bilhete}=6275
    Criar tabela de disponibilidade    ${numero_bilhete}
    @{ano_mes_dia}=  Get Time	year month day 
    Preencher dia do calendario    ${ano_mes_dia[1]}    ${ano_mes_dia[2]}
    Sleep                          3s
    
Quando adiciono o convênio no bilhete
    [Arguments]    ${numero_bilhete}=6275
    Adicionar categoria em bilhetes ja existente    Categoria Gerada pelos Testes Automatizados: CONVÊNIO    2    3627
    Criar tabela de preço               ${numero_bilhete}   Tabela de Preço com Convênio     500    0    2
    Criar tabela de disponibilidade     ${numero_bilhete}
    @{ano_mes_dia}=  Get Time	year month day 
    Preencher dia do calendario    ${ano_mes_dia[1]}    ${ano_mes_dia[2]}

Quando cadastro a tabela de preço
    Criar tabela de preço               ${numero_bilhete}   Tabela de Preço com multiplas categorias     500    0    3

Quando coloco as temporadas no calendario
    [Arguments]    ${numero_bilhete}=6275
    Criar tabela de preço               ${numero_bilhete}   tabela de preço     500
    Criar tabela de disponibilidade     ${numero_bilhete}
    @{ano_mes_dia}=  Get Time	year month day 
    ${dia}=     Convert To Integer     ${ano_mes_dia[2]}    
    ${amanha}=       Evaluate       ${dia} + 1
    Preencher dia do calendario    ${ano_mes_dia[1]}    ${ano_mes_dia[2]}
    Sleep                       1s
    Preencher dia do calendario    ${ano_mes_dia[1]}    ${amanha}     n°_temporada=2
    Sleep                       2s


#---------------------------------------ENTAO----------------------------------------

Então valido se o bilhete foi criado corretamente
    Wait Until Element Is Visible      xpath:/html/body/app-root/app-pages/div/div/div/lista-bilhetes/lista-cadastros-com-busca/div/mat-card/div/table/thead/tr/th[1]
    ${codigo_e_nome}=    Pegar codigo e nome do Ultimo Bilhete
    Should Contain        ${codigo_e_nome[1]}     Bilhete Automatizado: Por Horario
    Iniciar sessao        cde_win_bca_front
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
    Iniciar sessao    cde_win_bca_front
    Ir Para Emissão de Bilhetes
    ${qtd_vagas_bilhete}=    Selecionar o bilhete e retornar quantidade de vagas (categoria)   ${numero_bilhete}    1
    ${qtd_vagas_bilhete}=        Convert to Integer    ${qtd_vagas_bilhete}
    IF    ${qtd_vagas_bilhete} == ${qtd_vagas}
        Log     A disponibilidade integrou corretamente.
    ELSE
        Fechar com Sim
        Encerrar Tudo
        Fail    A disponibilidade não integrou corretamente.
    END
    Fechar com Sim
    Encerrar Tudo

Então valido a Exceção no E-commerce e na bilheteria
    [Arguments]    ${numero_bilhete}=6275    ${qtd_vagas}=5
    Colocar o bilhete no e-commerce    ${numero_bilhete}
    Abro o E-Commerce
    Pesquisar bilhete no e-commerce    
    Coletar quantidade de vagas (E-Commerce)    ${qtd_vagas}
    Então valido se a disponibilidade integrou corretamente    ${numero_bilhete}    ${qtd_vagas}
    Inativar bilhete
    Retirar Exceção



Então valido o bloqueio de horário no E-commerce e na bilheteria
    [Arguments]    ${numero_bilhete}=6275    
    Abro o E-commerce
    Pesquisar bilhete no e-commerce   
    Sleep             4s
    ${bloqueio}=      SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-product-receita/app-title-with-edit[1]/section/div[3]/div/div/div/span
    Should Contain    ${bloqueio}    Esgotado
    Iniciar sessao    cde_win_bcs_frontR40
    Ir Para Emissão de Bilhetes
    Selecionar o bilhete   ${numero_bilhete}    4321
    RPA.Desktop.Press Keys           F5
    RPA.Windows.Get Text           Bilhete com configuração por horário mas horário não definido.
    RPA.Desktop.Press Keys           Enter
    Fechar com Sim
    Encerrar Tudo

Então valido se a tarifa foi salva corretamente 
    [Arguments]     ${valor}=5,00    ${nome_bilhete}=Bilhete Automatizado: Por Horario
    Abro o E-commerce
    Pesquisar bilhete no e-commerce    Z - Data de Evento
    Adicionar categoria (Compra E-Commerce)    1    100
    Coleta Valor bilhete (E-commerce)     5,00    0,08
    Inativar bilhete
    
Então Valido se o convênio foi salvo corretamente
    [Arguments]    ${nome_bilhete}=Bilhete Automatizado: Por Horario
    Abro o E-commerce
    Pesquisar bilhete no e-commerce    ${nome_bilhete}
    Adicionar categoria (Compra E-Commerce)    2    1
    Comprar Ingressos
    Preencher convênio
    sleep                1s
    Iniciar sessao       cde_win_bca_front 
    Ir Para Emissão de Bilhetes
    ${nome_coletado}=    Selecionar o bilhete e o convênio    6275    1
    IF    $nome_coletado != CONVÊNIO
        FAIL    Convênio errado ou não aplicado corretamente.
    END
    Encerrar Tudo
    Retirar Categoria    2
    Excluir Categoria 
    Inativar bilhete   

Então valido se os preços foram salvos corretamente
    [Arguments]    ${numero_bilhete}=6275   ${valor_cat1}=5,00      ${valor_cat2}=10,00    ${valor_cat3}=15,00
    Abro o E-commerce
    Pesquisar bilhete no e-commerce    Bilhete Automatizado: Por Horario
    Adicionar categoria (Compra E-Commerce)    1    1
    Adicionar categoria (Compra E-Commerce)    2    1
    Adicionar categoria (Compra E-Commerce)    3    1
    Coleta Valor bilhete (E-commerce)     ${valor_cat1}       1
    Coleta Valor bilhete (E-commerce)     ${valor_cat2}       2
    Coleta Valor bilhete (E-commerce)     ${valor_cat3}       3
    sleep                1s
    Iniciar sessao       cde_win_bca_front 
    Ir Para Emissão de Bilhetes
    Selecionar o bilhete  6275   1
    Selecionar o bilhete  6275   2
    Selecionar o bilhete  6275   3
    ${nome_coletado}=    Coleta valor atraves da planilha    3    1
    IF    $nome_coletado != Inteira
        FAIL    Categoria errada ou não aplicada corretamente.
    END
    ${nome_coletado}=    Coleta valor atraves da planilha    3    2
    IF    $nome_coletado != CATEGORIA 2 - INTEGRADA
        FAIL    Categoria 2 errada ou não aplicada corretamente.
    END
    ${nome_coletado}=    Coleta valor atraves da planilha    3    3
    IF    $nome_coletado != CATEGORIA 3 - INTEGRADA
        FAIL    Categoria 3 errada ou não aplicada corretamente.
    END
    Encerrar Tudo
    Retirar Categoria    2
    Retirar Categoria    3
    Inativar bilhete

Então valido se o preço foi salvo corretamente
    [Arguments]    ${numero_bilhete}=6275   ${valor_cat1}=5,00      
    Abro o E-commerce
    Pesquisar bilhete no e-commerce    Bilhete Automatizado: Por Horario
    Adicionar categoria (Compra E-Commerce)    1    1
    Coleta Valor bilhete (E-commerce)     ${valor_cat1}       1
    sleep                1s
    Iniciar sessao       cde_win_bca_front 

Então valido as temporadas no E-Commerce
    [Arguments]    ${numero_bilhete}=6275
    Abro o E-commerce
    Sleep                              1s
    Pesquisar bilhete no e-commerce    Bilhete Automatizado: Por Horario
    Sleep                              3s
    ${temporada1}=    SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-product-receita/app-title-with-edit[1]/section/div[3]/div/div/div/span
    ${temporada2}=    SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-product-receita/app-title-with-edit[1]/section/div[4]/div/div/div/span
    Should Be Equal    ${temporada1}    Temporada 1
    Should Be Equal    ${temporada2}    Temporada 2
    Go to    https://testescard.limbersoftware.com.br/#/pages/cadastro/bilhete/${numero_bilhete}
    sleep    5s
    Navegar configuração de bilhete    7
    Click Element    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/mat-card/mat-tab-group/div/mat-tab-body[7]/div/div[2]/div/div/div[2]/button[2]
    Sleep    1s
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    enter
    Click Element    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[2]/buttons/div/div/button[3]
    Sleep    4s
    Inativar bilhete    
    