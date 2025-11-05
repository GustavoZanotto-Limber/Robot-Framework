*** Settings ***   
Library    OperatingSystem
Library    SeleniumLibrary    screenshot_root_directory=EstruturasBase\\DESKTOP\\ScreenShots\\Selenium
Library    Process
Library    Collections
Library    String
Resource   ../Base/BaseKeywordsDesktop.robot
Resource   BDDKeywordsDesktop.robot
Resource  ../Base/BaseKeywordsCARD.robot
Resource    ../Base/BaseKeywordE-Commerce.robot

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
    [Arguments]    ${numero_bilhete}    ${nome_tabela}=Tabela de Preço Automatizada     ${taxa}=0
    Adicionar no Perfil    ${numero_bilhete}    962
    Criar tabela de preço               ${numero_bilhete}   ${nome_tabela}     500    ${taxa}    

Dado que estou na tela de Exceções de Preço e Disponibilidade
    [Arguments]    ${numero_bilhete}
    Sleep          2s
    Go To   https://testescard.limbersoftware.com.br/#/pages/calendarioPrecoDisp/config/tabelaPreco?bilhete=${numero_bilhete}
    Criar tabela de preço               ${numero_bilhete}   Tabela de Preço Automatizada     500
    Criar tabela de disponibilidade     ${numero_bilhete}
    @{ano_mes_dia}=  Get Time	year month day 
    Preencher dia do calendario    ${ano_mes_dia[1]}    ${ano_mes_dia[2]}
    
Dado que estou na tela de emissão de bilhetes
    [Arguments]    ${numero_bilhete}
    IF    ${numero_bilhete} == 6491 
        Go To   https://testescard.limbersoftware.com.br/#/pages/calendarioPrecoDisp/config/tabelaPreco?bilhete=${numero_bilhete}
        Criar tabela de preço               ${numero_bilhete}   tabela de preço     1000
        Criar tabela de disponibilidade     ${numero_bilhete}
        @{ano_mes_dia}=  Get Time	year month day 
        Preencher dia do calendario    ${ano_mes_dia[1]}    ${ano_mes_dia[2]}
        Sleep    2s
    END
    Sleep    2s
    Iniciar sessao e abrir caixa    cde_win_bca_front       
    Ir Para Emissão de Bilhetes
    Sleep    2s

Dado que o usuário acessa o Cadastro de Categorias
    Cadastrar nova categoria      Categoria Convênio    CONVÊNIO
    ${nome_numero}=    Pegar codigo e nome da Ultima Categoria
    Set Suite Variable    $numero_categoria   ${nome_numero[0]}

Dado que adicionei uma categoria no bilhete 
     Adicionar categoria em bilhetes ja existente    Categoria 2    2    3752    6422
     Sleep    1s
     Adicionar categoria em bilhetes ja existente    Categoria 3    3    3752    6422

Dado que criei novas temporadas
    [Arguments]    ${numero_bilhete}
    Adicionar nova temporada em um bilhete    ${numero_bilhete}
    Sleep    2s
    
#---------------------------------------QUANDO---------------------------------------

Quando insiro as informações para um novo cadastro de bilhete
    Sleep    1s
    Criar Bilhete     LB-42 Cadastro e alteração de Programação de Horario (Criado)     Bilheteria Automação   1

Quando crio uma nova tabela de preço e disponibilidade para o bilhete
    [Arguments]    ${numero_bilhete}
    Criar tabela de disponibilidade     ${numero_bilhete}
    @{ano_mes_dia}=  Get Time	year month day 
    Preencher dia do calendario    ${ano_mes_dia[1]}    ${ano_mes_dia[2]}

Quando crio uma Exceção de Disponibilidade para o bilhete
    Criar exceção de disponibilidade     
   
Quando emito um bilhete com saldo atualizado 
    [Arguments]    ${numero_bilhete}    ${qtd_vagas}=5
    IF    ${numero_bilhete} == 6491 
        ${qtd_vagas}=    Set Variable        1000
    END
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
    [Arguments]    ${numero_bilhete}
    Criar bloqueio de disponibilidade
    Sleep    2s

Quando ele insere a tabela com taxa no calendario
    [Arguments]                ${numero_bilhete}
    Criar tabela de disponibilidade    ${numero_bilhete}
    @{ano_mes_dia}=  Get Time	year month day 
    Preencher dia do calendario    ${ano_mes_dia[1]}    ${ano_mes_dia[2]}
    Sleep                          3s
    
Quando adiciono o convênio no bilhete
    [Arguments]    ${numero_bilhete}
    Adicionar categoria em bilhetes ja existente   Categoria Convênio    2    3752    ${numero_bilhete}
    Sleep    2s
    RPA.Desktop.Press Keys              F5
    Criar tabela de preço               ${numero_bilhete}   Tabela de Preço com Convênio     500    0    2
    Criar tabela de disponibilidade     ${numero_bilhete}
    @{ano_mes_dia}=  Get Time	year month day 
    Preencher dia do calendario    ${ano_mes_dia[1]}    ${ano_mes_dia[2]}

Quando cadastro a tabela de preço
    Criar tabela de preço               ${numero_bilhete}   Tabela de Preço com multiplas categorias     500    0    3
    Criar tabela de disponibilidade     6422    qtd_vagas=250
    @{ano_mes_dia}=  Get Time	year month day 
    Preencher dia do calendario    ${ano_mes_dia[1]}    ${ano_mes_dia[2]}

Quando coloco as temporadas no calendario
    [Arguments]    ${numero_bilhete}
    Criar tabela de preço               ${numero_bilhete}   tabela de preço     500
    Criar tabela de disponibilidade     ${numero_bilhete}
    @{ano_mes_dia}=  Get Time	year month day 
    ${dia}=     Convert To Integer     ${ano_mes_dia[2]}    
    ${amanha}=       Evaluate       ${dia} + 1
    Preencher dia do calendario    ${ano_mes_dia[1]}    ${ano_mes_dia[2]}
    Sleep                       1s
    Preencher dia do calendario    ${ano_mes_dia[1]}    ${amanha}     n°_temporada=3
    Sleep                       2s
    Set Global Variable    ${dia}    ${dia}
    Set Global Variable    ${mês}       ${ano_mes_dia[1]}    

#---------------------------------------ENTAO----------------------------------------

Então valido se o bilhete foi criado corretamente
    Wait Until Element Is Visible      xpath:/html/body/app-root/app-pages/div/div/div/lista-bilhetes/lista-cadastros-com-busca/div/mat-card/div/table/thead/tr/th[1]
    ${codigo_e_nome}=    Pegar codigo e nome do Ultimo Bilhete
    Should Contain        ${codigo_e_nome[1]}     LB-42 Cadastro e alteração de Programação de Horario (Criado)
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
    [Arguments]    ${numero_bilhete}    ${qtd_vagas}=5
    Colocar o bilhete no e-commerce    ${numero_bilhete}    2
    Abro o E-commerce
    Pesquisar bilhete no e-commerce      LB-42 Cadastro e alteração de Programação de Horario
    Coletar quantidade de vagas (E-Commerce)    ${qtd_vagas}
    Então valido se a disponibilidade integrou corretamente    ${numero_bilhete}    ${qtd_vagas}
    Retirar Exceção    ${numero_bilhete}

Então valido o bloqueio de horário no E-commerce e na bilheteria
    [Arguments]    ${numero_bilhete}    
    Abro o E-commerce
    Pesquisar bilhete no e-commerce   LB-42 Cadastro e alteração de Programação de Horario
    Sleep             4s
    ${bloqueio}=      SeleniumLibrary.Get Text    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-product-receita/app-title-with-edit[1]/section/div[3]/div/div/div/span
    Should Contain    ${bloqueio}    Esgotado
    Iniciar sessao    cde_win_bcs_frontR40
    Ir Para Emissão de Bilhetes
    Selecionar o bilhete   ${numero_bilhete}    4321
    RPA.Desktop.Press Keys           F5
    RPA.Windows.Get Text             Bilhete com configuração por horário mas horário não definido.
    RPA.Desktop.Press Keys           Enter
    Fechar com Sim
    Encerrar Tudo

Então valido se a tarifa foi salva corretamente 
    [Arguments]     ${valor}=5,00 
    Abro o E-commerce
    Pesquisar bilhete no e-commerce    LB-41 Programação de Preços
    Adicionar categoria (Compra E-Commerce)    1    1
    Coleta Valor bilhete (E-commerce)     5,00    1    0,08    
    

Então Valido se o convênio foi salvo corretamente
    [Arguments]    ${nome_bilhete}=LB-41 Programação de Preços
    Abro o E-commerce
    Pesquisar bilhete no e-commerce    ${nome_bilhete}
    Adicionar categoria (Compra E-Commerce)    2    1
    Comprar Ingressos
    Preencher convênio
    sleep                1s
    Iniciar sessao       cde_win_bca_front 
    Abrir caixa operador
    Ir Para Emissão de Bilhetes
    ${nome_coletado}=    Selecionar o bilhete e o convênio    6422    2
    IF    '${nome_coletado}' != 'CONVÊNIO'
        FAIL    Convênio errado ou não aplicado corretamente.
    END
    Encerrar Tudo    


Então valido se os preços foram salvos corretamente
    [Arguments]    ${numero_bilhete}   ${valor_cat1}=5,00      ${valor_cat2}=10,00    ${valor_cat3}=15,00
    Abro o E-commerce
    Pesquisar bilhete no e-commerce    LB-41 Programação de Preços
    Adicionar categoria (Compra E-Commerce)    1    1
    Adicionar categoria (Compra E-Commerce)    2    1
    Adicionar categoria (Compra E-Commerce)    3    1
    Coleta Valor bilhete (E-commerce)     ${valor_cat1}       1    
    Coleta Valor bilhete (E-commerce)     ${valor_cat2}       2        
    Coleta Valor bilhete (E-commerce)     ${valor_cat3}       3    
    sleep                1s
    Iniciar sessao       cde_win_bca_front 
    Ir Para Emissão de Bilhetes
    Selecionar o bilhete  6422   4651
    Selecionar o bilhete  6422   4683
    Selecionar o bilhete abrir filtro    6422   3
    ${nome_coletado}=    Coleta valor atraves da planilha    3    1
    Sleep    1s
    Should Contain    ${nome_coletado}    Categoria 1
    # IF    '$nome_coletado' != 'Categoria 1\r\n'
    #     FAIL    Categoria errada ou não aplicada corretamente.
    # END
    Sleep    2
    ${nome_coletado}=    Coleta valor atraves da planilha    3    2
    Should Contain    ${nome_coletado}    Categoria 2
    # IF    '$nome_coletado' != 'Categoria 2\r\n'
    #     FAIL    Categoria 2 errada ou não aplicada corretamente.
    # END
    Sleep    2
    ${nome_coletado}=    Coleta valor atraves da planilha    3    3
    Should Contain    ${nome_coletado}    Categoria 3
    # IF    '$nome_coletado' != 'Categoria 3\r\n'
    #     FAIL    Categoria 3 errada ou não aplicada corretamente.
    # END
    Encerrar Tudo

Então valido as temporadas no E-Commerce
    [Arguments]    ${numero_bilhete}
    Abro o E-commerce
    Pesquisar bilhete no e-commerce    LB-41 Programação de Preços
    Sleep                              3s
    Element Should Contain    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-product-receita/app-title-with-edit[1]/section/div[3]/div/div/div/span       Temporada 1
    Element Should Contain    xpath:/html/body/app-root/app-home/div/main/app-dashboard/app-product/div/div/div/div/div[2]/div/app-product-receita/app-title-with-edit[1]/section/div[3]/div/div/div[2]/span    Temporada 2
    
Então valido se o preço foi salvo corretamente
    [Arguments]    ${numero_bilhete}   ${valor_cat1}=5,00      
    Abro o E-commerce
    Pesquisar bilhete no e-commerce    LB-41 Programação de Preços
    Adicionar categoria (Compra E-Commerce)    1    1
    Coleta Valor bilhete (E-commerce)     ${valor_cat1}       1
    Iniciar sessao       cde_win_bca_front 