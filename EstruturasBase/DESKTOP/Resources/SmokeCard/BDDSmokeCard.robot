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
Resource   BaseSmokeTestCard.robot

*** Variables ***
${URL_Card}=    https://testescard.limbersoftware.com.br/
*** Keywords ***
    
#--------------------------------------------DADO--------------------------------------------
Dado que estou na página inicial do CARD
    Go To    ${URL_Card}
    Sleep    3s


#--------------------------------------------QUANDO--------------------------------------------
    
Quando acesso o menu lateral
    [Arguments]    ${numero_menu}    ${numero_submenu}=0
    sleep                    1s
    SeleniumLibrary.Mouse Over        xpath:/html/body/app-root/app-pages/div/div/card-sidenav/div/app-menu-item[${numero_menu}]
    sleep                    2s
    IF    '${numero_submenu}' != '0'
        SeleniumLibrary.Click Element    xpath:/html/body/div[3]/div/div/div/div/section[${numero_submenu}]/a
        sleep                2s
    ELSE
        SeleniumLibrary.Click Element    xpath:/html/body/app-root/app-pages/div/div/card-sidenav/div/app-menu-item[${numero_menu}]
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
    SeleniumLibrary.Click Element            xpath:/html/body/app-root/app-pages/div/div/div/app-relatorios/div[1]/button[1]
    Sleep                                    1s

Então valido se a tela de Gerenciamento - No Show foi carregada corretamente
    Sleep                                    3s
    SeleniumLibrary.Element Should Be Visible    xpath:/html/body/app-root/app-pages/div/div/div/app-no-show/div/h1
    Sleep                                    2s
    SeleniumLibrary.Click Element            xpath:/html/body/app-root/app-pages/div/div/div/app-no-show/div/div[1]/mat-form-field[1]
    Sleep                                    1s
    RPA.Desktop.Type Text                    ZANOTTO Bilheteria ONLINE
    RPA.Desktop.Press Keys                   Down
    RPA.Desktop.Press Keys                   Enter
    Sleep                                    1s

Então valido se a tela de Extrato Eletrônico de Transações foi carregada corretamente
    Sleep                                    2s
    SeleniumLibrary.Element Should Contain                   xpath:/html/body/app-root/app-pages/div/div/div/app-split/div/h1    Gerenciamento Split de Pagamento
    SeleniumLibrary.Click Element                            xpath:/html/body/app-root/app-pages/div/div/div/app-split/div/div/form/mat-expansion-panel/div/div/div/div/div[2]/button
    Sleep                                    2s
    SeleniumLibrary.Element Should Contain                   xpath:/html/body/div[3]/div/div/mat-snack-bar-container/div/div/div/div/simple-snack-bar/div[1]            Selecione um Modo de Pagamento
    
Então valido se a tela de Gerenciamento de Compradores foi carregada corretamente
    Sleep                                    2s
    SeleniumLibrary.Element Should Contain   xpath:/html/body/app-root/app-pages/div/div/div/app-compradores/h1    Gerenciamento de Compradores
    Sleep                                    1s
    #Seleciona o tipo de comprador
    SeleniumLibrary.Click Element            xpath:/html/body/app-root/app-pages/div/div/div/app-compradores/div/mat-expansion-panel/div/div/div/div/form/div[1]/mat-form-field[1]/div[1]
    Sleep                                    1s
    RPA.Desktop.Press Keys                   Down
    RPA.Desktop.Press Keys                   Enter
    Sleep                                    1s
    #Seleciona o período de venda para o dia de hoje
    SeleniumLibrary.Click Element            xpath:/html/body/app-root/app-pages/div/div/div/app-compradores/div/mat-expansion-panel/div/div/div/div/form/div[1]/mat-form-field[2]/div[1]/div/div[3]/mat-datepicker-toggle/button
    Sleep                                    1s
    Repetidor de Teclas                      Enter    2
    Sleep                                    1s
    #Seleciona o estabelecimento
    SeleniumLibrary.Click Element            xpath:/html/body/app-root/app-pages/div/div/div/app-compradores/div/mat-expansion-panel/div/div/div/div/form/div[2]/mat-form-field[3]/div[1]
    Sleep                                    1s
    RPA.Desktop.Type Text                    ZANOTTO Bilheteria ONLINE
    RPA.Desktop.Press Keys                   Down
    RPA.Desktop.Press Keys                   Enter
    Sleep                                    1s
    SeleniumLibrary.Click Element            xpath:/html/body/app-root/app-pages/div/div/div/app-compradores/div/mat-expansion-panel/div/div/div/div/div/button
    
Então valido se a tela de Horário de Vendas foi carregada corretamente
    Sleep                                        2s
    Configurar o Relatório                       Horário de Vendas    
    Sleep                                        1s

Então configuro o relatório com o nome
    [Arguments]    ${nome_relatorio}
    Sleep                                        2s
    Configurar o Relatório                       ${nome_relatorio}
    Sleep                                        1s

Então valido se a tela de bilhetes abriu corretamente
    Sleep                                        2s
    SeleniumLibrary.Element Should Contain       xpath:/html/body/app-root/app-pages/div/div/div/lista-bilhetes/lista-cadastros-com-busca/div/div/h1    Gerenciamento de Bilhetes
    Sleep                                        2s
    SeleniumLibrary.Click Element                xpath:/html/body/app-root/app-pages/div/div/div/lista-bilhetes/lista-cadastros-com-busca/div/div/h1/button
    Sleep                                        2s
    SeleniumLibrary.Element Should Contain       xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/div/h1    Novo Bilhete
    Sleep                                        2s
    SeleniumLibrary.Click Element                xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[2]/buttons/div/div/button[1]

Então valido o titulo clico em novo
    [Arguments]    ${titulo_pagina}    ${tiulo_pagina_novo}    ${rota_html}    ${rota_html_novo}
    Sleep                                        2s
    Validar o titulo e clicar em novo    ${titulo_pagina}      ${rota_html}
    Validar titulo de criar ou editar cadastros    ${tiulo_pagina_novo}    ${rota_html_novo}

Então valido o a pagina de metas 
    Sleep                                 1s
    Element Should Contain                xpath:/html/body/app-root/app-pages/div/div/div/app-metas/div/div/h1    Configurações de Meta
    Click Element                         xpath:/html/body/app-root/app-pages/div/div/div/app-metas/div[1]/mat-card/div/form/mat-form-field[1]/div[1]/div/div[2]
    Sleep                                 1s
    RPA.Desktop.Type Text                 ZANOTTO Bilheteria ONLINE   
    RPA.Desktop.Press Keys                Down
    RPA.Desktop.Press Keys                Enter
    Click Element                         xpath:/html/body/app-root/app-pages/div/div/div/app-metas/div[1]/mat-card/div/form/button  

Então valido o titulo e clico em novo 2   
    [Arguments]    ${titulo_pagina}    ${tiulo_pagina_novo}    ${rota_html}    ${rota_html_novo}
    Validar o titulo e clicar em novo     ${titulo_pagina}     ${rota_html}
    Element Should Contain                xpath:/html/body/app-root/app-pages/div/div/div/${rota_html_novo}/div[1]/h1    ${tiulo_pagina_novo}
                                                

Então valido o titulo das TAG clico em novo 
    Validar o titulo e clicar em novo      Gerenciamento de Tag's     app-tag
    Sleep                                  1s
    Element Should Contain                 xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-tag/div[1]/div/h1    Nova TAG

                                                  
Então valido se a tela de Configuração de preços e Disponibilidades foi carregada corretamente
    Element Should Contain     xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/div/h1    Configuração de preço
    Filtrar dropdown           6275    /html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div/mat-form-field/div[1]/div/div[2]
    Sleep                      4s
    Element Should Contain     xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[1]/span[2]/span/span    Tabela de Preço
    Click Element              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[2]
    Sleep                      2s
    Element Should Contain     xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[2]/span[2]/span/span    Tabela de Disponibilidade
    Click Element              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[3]
    Sleep                      2s
    Element Should Contain     xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[3]/span[2]/span/span    Calendário

Então valido se a tela de Gerenciamento de Lotes foi carregada corretamente
    Validar o titulo e clicar em novo    Gerenciamento de Grupos de Lotes    app-grupo-lotes
    Sleep                                1s
    Element Should Contain               xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/div/h1    Grupo de Lotes
    Input Text                           xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/mat-card/mat-tab-group/div/mat-tab-body[1]/div/div/form/mat-form-field[1]/div[1]/div/div[2]/input    Grupo Gerado por Automação
    Filtrar dropdown                     1927        /html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/mat-card/mat-tab-group/div/mat-tab-body[1]/div/div/form/mat-form-field[2]/div[1]/div/div[2]
    Click Element                        xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/mat-card/mat-tab-group/div/mat-tab-body[1]/div/buttons/div/div/button[2]
    Sleep                                2s
    Click Element                        xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[2]
    Sleep                                1s    
    Element Should Contain               xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/mat-card/mat-tab-group/div/mat-tab-body[2]/div/tabela-config-lotes/div/div[1]/h3    Selecione a data de visita
    Sleep                                2s
    Click Element                        xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[2]
    Sleep                                1s
    Element Should Contain               xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/mat-card/mat-tab-group/div/mat-tab-body[2]/div/tabela-config-lotes/div/div[1]/h3    Selecione a data de visita
    
Então valido se a tela de Ocupação de Disponibilidade Online foi carregada corretamente
    Sleep                      2s
    Element Should Contain     xpath:/html/body/app-root/app-pages/div/div/div/app-disp-online/div/h1    Calendário de disponibilidade online
    Filtrar dropdown           5787    /html/body/app-root/app-pages/div/div/div/app-disp-online/mat-card/div/mat-form-field/div[1]/div/div[2]
    Sleep                      4s  
    Element Should Be Visible  xpath:/html/body/app-root/app-pages/div/div/div/app-disp-online/mat-card/div[2]/div[1]/mat-tab-group/div/mat-tab-body[1]/div

Então Valido a tela de SAC
    Sleep                     2s
    Element Should Contain    xpath:/html/body/app-root/app-pages/div/div/div/app-sac/div/h1    Registro de Chamados
    Sleep                     2s
    Click Element             xpath:/html/body/app-root/app-pages/div/div/div/app-sac/div/mat-form-field/div[2]/div/mat-hint
    Sleep                     2s
    Click Element             xpath:/html/body/app-root/app-pages/div/div/div/app-sac/div/mat-card/div/table/tbody/tr/td[9]/button
    Sleep                     1s
    Element Should Contain    xpath:/html/body/app-root/app-pages/div/div/div/app-view-sac/div[1]/div/h1    Chamado: 2025-09-700347
    Element Should Contain    xpath:/html/body/app-root/app-pages/div/div/div/app-view-sac/div[1]/mat-card/div[2]/mat-form-field/div[1]/div/div[2]/textarea    aaaaaaaaaaaaaa