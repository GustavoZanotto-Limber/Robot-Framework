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
*** Keywords ***
    
#--------------------------------------------DADO--------------------------------------------
Dado que estou na página inicial do CARD
    Go To    ${URL_Card}
    Sleep    3s


#--------------------------------------------QUANDO--------------------------------------------
    
Quando acesso o menu lateral
    [Arguments]    ${numero_menu}    ${numero_submenu}=0
    sleep                    2s
    Mouse Over        xpath:/html/body/app-root/app-pages/div/div/card-sidenav/div/app-menu-item[${numero_menu}]
    IF    '${numero_submenu}' != '0'
        Clicar no Elemento    xpath:/html/body/div[3]/div/div/div/div/section[${numero_submenu}]/a
        sleep                2s
    ELSE
        Clicar no Elemento    xpath:/html/body/app-root/app-pages/div/div/card-sidenav/div/app-menu-item[${numero_menu}]
        sleep                2s
    END

Quando acesso a tela de consulta de terminal
    sleep                    1s
    Mouse Over        xpath:/html/body/app-root/app-pages/div/div/card-sidenav/div/app-menu-item[12]
    sleep                    1s
    Clicar no Elemento            xpath:/html/body/div[3]/div/div/div/div/section[2]/div

#--------------------------------------------ENTÃO--------------------------------------------

Então o sistema deve apresentar o Dashboard corretamente
    Clicar no Botão                xpath:/html/body/app-root/app-pages/div/div/div/dashboard/div/div[1]/button[1]
    Clicar no Botão                xpath:/html/body/app-root/app-pages/div/div/div/dashboard/div/div[1]/button[3]
    Clicar no Elemento             xpath:/html/body/div[3]/div[2]/div/div/mat-form-field
    RPA.Desktop.Type Text          Automação
    Tentar Clicar Em Um Dos Elementos            xpath:/html/body/div[3]/div[4]/div/div/div/internal-limber-option[2]    xpath:/html/body/div[2]/div[4]/div/div/div/internal-limber-option[2]
    Clicar no Botão                xpath:/html/body/div[3]/div[2]/div/div/div/button[2]
    Sleep                          2s
    
Então valido se a tela de Gerenciamento de Vendas foi carregada corretamente
    Sleep                                    2s
    Element Should Be Visible    xpath:/html/body/app-root/app-pages/div/div/div/vendas/div/div[1]/h1
    Sleep                                    2s
    Clicar no Elemento            xpath:/html/body/app-root/app-pages/div/div/div/vendas/div/div[2]/filtros-vendas/form/mat-form-field[5]
    Sleep                                    1s
    RPA.Desktop.Type Text                    Automação
    sleep                                    1s 
    RPA.Desktop.Press Keys                   Down
    RPA.Desktop.Press Keys                   Enter
    Sleep                                    1s
    Clicar no Elemento            xpath:html/body/app-root/app-pages/div/div/div/vendas/div/div[2]/filtros-vendas/form/div/section[2]/button[2]

Então valido se a tela de Extração de Dados/Relatórios foi carregada corretamente
    Sleep                                    2s
    Element Should Be Visible    xpath:/html/body/app-root/app-pages/div/div/div/app-relatorios/h1
    Sleep                                    2s
    Clicar no Elemento            xpath:/html/body/app-root/app-pages/div/div/div/app-relatorios/filtros-vendas/form/mat-form-field[5]
    Sleep                                    1s
    RPA.Desktop.Press Keys                   Down
    RPA.Desktop.Press Keys                   Enter
    Clicar no Elemento            xpath:/html/body/app-root/app-pages/div/div/div/app-relatorios/div[1]/button[1]
    Sleep                                    1s

Então valido se a tela de Gerenciamento - No Show foi carregada corretamente
    Sleep                                    3s
    Element Should Be Visible    xpath:/html/body/app-root/app-pages/div/div/div/app-no-show/div/h1
    Sleep                                    2s
    Clicar no Elemento            xpath:/html/body/app-root/app-pages/div/div/div/app-no-show/div/div[1]/mat-form-field[1]
    Sleep                                    1s
    RPA.Desktop.Type Text                    ZANOTTO Bilheteria ONLINE
    RPA.Desktop.Press Keys                   Down
    RPA.Desktop.Press Keys                   Enter
    Sleep                                    1s

Então valido se a tela de Extrato Eletrônico de Transações foi carregada corretamente
    Sleep                                    2s
    Element Should Contain                   xpath:/html/body/app-root/app-pages/div/div/div/app-split/div/h1    Gerenciamento Split de Pagamento
    Clicar no Elemento                            xpath:/html/body/app-root/app-pages/div/div/div/app-split/div/div/form/mat-expansion-panel/div/div/div/div/div[2]/button
    Sleep                                    2s
    Element Should Contain                   xpath:/html/body/div[3]/div/div/mat-snack-bar-container/div/div/div/div/simple-snack-bar/div[1]            Selecione um Modo de Pagamento
    
Então valido se a tela de Gerenciamento de Compradores foi carregada corretamente
    Sleep                                    2s
    Element Should Contain   xpath:/html/body/app-root/app-pages/div/div/div/app-compradores/h1    Gerenciamento de Compradores
    Sleep                                    1s
    #Seleciona o tipo de comprador
    Clicar no Elemento            xpath:/html/body/app-root/app-pages/div/div/div/app-compradores/div/mat-expansion-panel/div/div/div/div/form/div[1]/mat-form-field[1]/div[1]
    Sleep                                    1s
    RPA.Desktop.Press Keys                   Down
    RPA.Desktop.Press Keys                   Enter
    Sleep                                    1s
    #Seleciona o período de venda para o dia de hoje
    Clicar no Elemento            xpath:/html/body/app-root/app-pages/div/div/div/app-compradores/div/mat-expansion-panel/div/div/div/div/form/div[1]/mat-form-field[2]/div[1]/div/div[3]/mat-datepicker-toggle/button
    Sleep                                    1s
    Repetidor de Teclas                      Enter    2
    Sleep                                    1s
    #Seleciona o estabelecimento
    Clicar no Elemento            xpath:/html/body/app-root/app-pages/div/div/div/app-compradores/div/mat-expansion-panel/div/div/div/div/form/div[2]/mat-form-field[3]/div[1]
    Sleep                                    1s
    RPA.Desktop.Type Text                    ZANOTTO Bilheteria ONLINE
    RPA.Desktop.Press Keys                   Down
    RPA.Desktop.Press Keys                   Enter
    Sleep                                    1s
    Clicar no Elemento            xpath:/html/body/app-root/app-pages/div/div/div/app-compradores/div/mat-expansion-panel/div/div/div/div/div/button
    
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
    Element Should Contain       xpath:/html/body/app-root/app-pages/div/div/div/lista-bilhetes/lista-cadastros-com-busca/div/div/h1  Gerenciamento de Bilhetes
    Sleep                                        2s
    Clicar no Elemento                xpath:/html/body/app-root/app-pages/div/div/div/lista-bilhetes/lista-cadastros-com-busca/div/div/h1/button
    Sleep                                        2s
    Element Should Contain       xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[1]/div/h1    Novo Bilhete
    Sleep                                        2s
    Clicar no Elemento                xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-bilhete/div[2]/buttons/div/div/button[1]

Então valido o titulo clico em novo
    [Arguments]    ${titulo_pagina}    ${tiulo_pagina_novo}    ${rota_html}    ${rota_html_novo}
    Sleep                                        2s
    Validar o titulo e clicar em novo    ${titulo_pagina}      ${rota_html}
    Validar titulo de criar ou editar cadastros    ${tiulo_pagina_novo}    ${rota_html_novo}

Então valido o a pagina de metas 
    Sleep                                 1s
    Element Should Contain                xpath:/html/body/app-root/app-pages/div/div/div/app-metas/div/div/h1    Configurações de Meta
    Clicar no Elemento                    xpath:/html/body/app-root/app-pages/div/div/div/app-metas/div[1]/mat-card/div/form/mat-form-field[1]/div[1]/div/div[2]
    Sleep                                 1s
    RPA.Desktop.Type Text                 Automação  
    RPA.Desktop.Press Keys                Down
    RPA.Desktop.Press Keys                Enter
    Clicar no Botão                       xpath:/html/body/app-root/app-pages/div/div/div/app-metas/div[1]/mat-card/div/form/button  

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
    Filtrar dropdown           6422    xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div/mat-form-field/div[1]/div/div[2]
    Sleep                      4s
    Element Should Contain     xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[1]/span[2]/span/span    Tabela de Preço
    Clicar no Elemento              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[2]
    Sleep                      2s
    Element Should Contain     xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[2]/span[2]/span/span    Tabela de Disponibilidade
    Clicar no Elemento              xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[3]
    Sleep                      2s
    Element Should Contain     xpath:/html/body/app-root/app-pages/div/div/div/app-config-preco/mat-card/div[2]/nav/div[2]/div/div/a[3]/span[2]/span/span    Calendário

Então valido se a tela de Gerenciamento de Lotes foi carregada corretamente
    Validar o titulo e clicar em novo    Gerenciamento de Grupos de Lotes    app-grupo-lotes
    Sleep    1s
    Element Should Contain               xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/div/h1    Grupo de Lotes
    Inserir Texto                        xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/mat-card/mat-tab-group/div/mat-tab-body[1]/div/div/form/mat-form-field[1]/div[1]/div/div[2]/input    Grupo Gerado por Automação
    Filtrar dropdown                     2503        xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/mat-card/mat-tab-group/div/mat-tab-body[1]/div/div/form/mat-form-field[2]/div[1]/div/div[2]
    Clicar no Elemento                   xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/mat-card/mat-tab-group/div/mat-tab-body[1]/div/buttons/div/div/button[2]
    Clicar no Elemento                   xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[2]
    Sleep                                1s    
    Element Should Contain               xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/mat-card/mat-tab-group/div/mat-tab-body[2]/div/tabela-config-lotes/div/div[1]/h3    Selecione a data de visita
    Clicar no Elemento                   xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[2]
    Sleep                                1s
    Element Should Contain               xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/mat-card/mat-tab-group/div/mat-tab-body[2]/div/tabela-config-lotes/div/div[1]/h3    Selecione a data de visita
    Clicar no Elemento                   xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[1]
    Sleep                                1s
    Clicar no Botão                      xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-grupo-lote/div/mat-card/mat-tab-group/div/mat-tab-body[1]/div/buttons/div/div/button[1]
    Clicar no Botão                      xpath:/html/body/div[3]/div[3]/div/mat-dialog-container/div/div/confirm-dialog/div/div[3]/button[2]

Então valido se a tela de Ocupação de Disponibilidade Online foi carregada corretamente
    Sleep                      2s
    Element Should Contain     xpath:/html/body/app-root/app-pages/div/div/div/app-disp-online/div/h1    Calendário de disponibilidade online
    Filtrar dropdown           6436    xpath:/html/body/app-root/app-pages/div/div/div/app-disp-online/mat-card/div/mat-form-field/div[1]/div/div[2]
    Sleep                      4s  
    Element Should Be Visible  xpath:/html/body/app-root/app-pages/div/div/div/app-disp-online/mat-card/div[2]/div[1]/mat-tab-group/div/mat-tab-body[1]/div

Então Valido a tela de SAC
    Sleep                     2s
    Element Should Contain    xpath:/html/body/app-root/app-pages/div/div/div/app-sac/div/h1    Registro de Chamados
    Clicar no Elemento        xpath:/html/body/app-root/app-pages/div/div/div/app-sac/div/mat-form-field/div[2]/div/mat-hint
    Clicar no Botão           xpath:/html/body/app-root/app-pages/div/div/div/app-sac/div/mat-card/div/table/tbody/tr[1]/td[9]/button
    Sleep                     1s
    Element Should Contain    xpath:/html/body/app-root/app-pages/div/div/div/app-view-sac/div[1]/div/h1    Chamado: 2025-10-457723
    Element Should Contain    xpath:/html/body/app-root/app-pages/div/div/div/app-view-sac/div[1]/mat-card/div[2]/mat-form-field/div[1]/div/div[2]/textarea    Testes Automatizados
    
Então valido as Requisições de Acordo
    Sleep                     2s
    Element Should Contain    xpath:/html/body/app-root/app-pages/div/div/div/app-requisicoes-acordo/h2    Agências/Parceiros que requisitaram um acordo
    Sleep                     2s
    Filtrar dropdown          349      xpath:/html/body/app-root/app-pages/div/div/div/app-requisicoes-acordo/div[1]/mat-form-field[1]/div[1]/div/div[2]
    RPA.Desktop.Press Keys    ESC        
    Clicar no Elemento        xpath:/html/body/app-root/app-pages/div/div/div/app-requisicoes-acordo/div[1]/mat-form-field[2]/div[1]/div/div[2]
    Repetidor de Teclas       Down    2
    RPA.Desktop.Press Keys    Enter
    RPA.Desktop.Press Keys    ESC
    Clicar no Botão           xpath:/html/body/app-root/app-pages/div/div/div/app-requisicoes-acordo/div[1]/button
    Sleep                     3s

Então Valido a tela de bilheteria
    Sleep                     2s
    Element Should Contain    xpath:/html/body/app-root/app-pages/div/div/div/app-lista-bilheterias/lista-cadastros-com-busca/div/div/h1    Configurações de bilheteria
    Sleep                     2s
    Clicar no Elemento             xpath:/html/body/app-root/app-pages/div/div/div/app-lista-bilheterias/lista-cadastros-com-busca/div/mat-card/div/table/tbody/tr/td[6]/button
    Sleep                     2s
    Clicar no Elemento             xpath:/html/body/app-root/app-pages/div/div/div/app-editar-bilheteria/div/a
    Sleep                     2s
    Element Should Contain    xpath:/html/body/app-root/app-pages/div/div/div/app-popups-totem/lista-cadastros-com-busca/div/div/h1    Popups - Totem
    Clicar no Elemento             xpath:/html/body/app-root/app-pages/div/div/div/app-popups-totem/lista-cadastros-com-busca/div/div/h1/button    
    Sleep                     2s
    Element Should Contain    xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-popup-totem/div[1]/div/h2    Novo pop-up
    Clicar no Elemento             xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-popup-totem/div[1]/mat-card/div[2]/title-btn-add/div/button
    Sleep                     2s    

Então valido a tela de Perfil de Venda
    Validar o titulo e clicar em novo    Gerenciamento de Perfis    app-perfil
    Sleep                                1s
    Element Should Contain               xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-perfil/div[1]/div/h2    Novo Perfil
    Clicar no Elemento                        xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-perfil/div[1]/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[2]
    Sleep                                1s
    Clicar no Elemento                        xpath:/html/body/app-root/app-pages/div/div/div/app-new-or-edit-perfil/div[1]/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[3]      

Então valido se a tela de Notificações foi carregada corretamente     
    Element Should Contain    xpath:/html/body/app-root/app-pages/div/div/div/notificacoes/h1    Notificações
    Clicar no Elemento        xpath:/html/body/app-root/app-pages/div/div/div/notificacoes/h1
    Sleep                     2s
    Element Should Contain    xpath:/html/body/app-root/app-pages/div/div/div/notificacoes/div/mat-card[5]/logs/div[2]/table/tbody/tr[1]/td[1]    Automação

Então valido se a tela de Logs Nuvem foi carregada corretamente
    Element Should Contain    xpath:/html/body/app-root/app-pages/div/div/div/ng-component/mat-card[1]/mat-card-title    Gerenciamento de Logs - Nuvem
    Clicar no Elemento        xpath:/html/body/app-root/app-pages/div/div/div/ng-component/mat-card[1]/mat-card-content/form/div/mat-form-field[1]/div[1]/div[2]/div[2]/mat-datepicker-toggle/button
    Sleep                     1s
    RPA.Desktop.Press Keys    Enter
    Filtrar dropdown          2503    xpath:/html/body/app-root/app-pages/div/div/div/ng-component/mat-card[1]/mat-card-content/form/div/mat-form-field[2]/div[1]
    Clicar no Elemento        xpath:/html/body/app-root/app-pages/div/div/div/ng-component/mat-card[1]/mat-card-content/form/div/div/button

Então valido o cadastro de e-commerce
    Validar o titulo e clicar em novo    Gerenciamento de E-commerce`s    ec-config
    Sleep                        1s
    RPA.Desktop.Press Keys    Enter
    Validar titulo de criar ou editar cadastros    Novo Ecommerce   new-or-edit-ec-config
    FOR    ${counter}    IN RANGE    1    5    
        Clicar no Elemento        xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-ec-config/div[1]/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[${counter}]
    END

Então valido o cadastro de Clientes de E-Commerce's
    Sleep                     2s    
    Element Should Contain    xpath:/html/body/app-root/app-pages/div/div/div/clientes-ecommerce/lista-cadastros/div/div[1]/h1    Clientes de E-commerce`s
    Inserir Texto                xpath:/html/body/app-root/app-pages/div/div/div/clientes-ecommerce/lista-cadastros/div/div[2]/form/mat-form-field[1]/div[1]/div/div[2]/input    Gustavo Zanotto
    Clicar no Elemento             xpath:/html/body/app-root/app-pages/div/div/div/clientes-ecommerce/lista-cadastros/div/div[2]/div/button[1]
    Sleep                     1s
    Clicar no Elemento             xpath:/html/body/app-root/app-pages/div/div/div/clientes-ecommerce/lista-cadastros/div/mat-card/div/table/tbody/tr[1]/td[7]/button
    Sleep                     1s
    Element Should Contain    xpath:/html/body/div[3]/div[3]/div/mat-dialog-container/div/div/info-cliente/form/div[1]/div/h2[1]    609 - Gustavo Zanotto Limber

Então valido o cadastro de Tick Ingressos
    Então valido o titulo clico em novo    Gerenciamento de Tick Ingressos - POS    Novo Tick Ingresso    tick-ingressos    new-or-edit-tick
    Clicar no Elemento                     xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-tick/div[1]/mat-card/mat-tab-group/mat-tab-header/div[2]/div/div/div[2]
    Sleep                                  1s
    Clicar no Elemento                     xpath:/html/body/app-root/app-pages/div/div/div/new-or-edit-tick/div[1]/mat-card/mat-tab-group/div/mat-tab-body[2]/div/div/title-btn-add/div/button
    Sleep                                  1s
    Element Should Contain                 xpath:/html/body/div[3]/div[3]/div/mat-dialog-container/div/div/add-estabelecimento-usuario/div/div[1]/h2    Novo Terminal

Então valido a localização de Terminal
    Conferir Texto                xpath:/html/body/div[3]/div[3]/div/mat-dialog-container/div/div/app-localizar-terminal/h2    Localizar Terminal
    Inserir Texto                 xpath:/html/body/div[3]/div[3]/div/mat-dialog-container/div/div/app-localizar-terminal/div/mat-form-field/div[1]/div/div[2]/input    18CDFA831895
    Clicar no Botão               xpath:/html/body/div[3]/div[3]/div/mat-dialog-container/div/div/app-localizar-terminal/div/button
    Sleep                         1s
    Element Should Be Visible     xpath:/html/body/div[3]/div[3]/div/mat-dialog-container/div/div/app-localizar-terminal/div[2]/div[1]

Então valido o cadastro de Agrupador de Agências
    Element Should Contain     xpath:/html/body/app-root/app-pages/div/div/div/app-agrupador-agencias/div/div/h1    Agrupador de Agências/Parceiros
    Clicar no Elemento         xpath:/html/body/app-root/app-pages/div/div/div/app-agrupador-agencias/div/mat-card/div[1]/section[1]/mat-form-field/div[1]/div/div[2]
    RPA.Desktop.Press Keys     ESC
    Clicar no Elemento         xpath:/html/body/app-root/app-pages/div/div/div/app-agrupador-agencias/div/mat-card/div[1]/section[2]/mat-form-field/div[1]/div/div[2]

Então valido se a tela de Central de Vendas foi carregada corretamente
    Element Should Contain    xpath:/html/body/app-root/app-central-vendas/div/central-vendas-toolbar/mat-toolbar     Central de Vendas
    Element Should Contain    xpath:/html/body/app-root/app-central-vendas/div/div/div/central-vendas-estabelecimentos/lista-cadastros-com-busca/div/div/h1    Estabelecimentos
    Clicar no Elemento        xpath:/html/body/app-root/app-central-vendas/div/div/div/central-vendas-estabelecimentos/lista-cadastros-com-busca/div/mat-card/div/table/tbody/tr[1]/td[3]
    Sleep                     1s
    RPA.Desktop.Press Keys    CTRL    TAB
    Go To    https://testescard.limbersoftware.com.br/#/central-vendas/estabelecimentos/1916/Central%20de%20Vendas%20Zanotto/venda
    Element Should Contain    xpath:/html/body/app-root/app-central-vendas/div/div/div/app-venda/div/mat-card/h1    Dados Iniciais
    Preencher dados central de vendas
    Element Should Contain    xpath:/html/body/app-root/app-central-vendas/div/div/div/app-venda/div/div/mat-card/h1    Experiências   
    Clicar no Elemento        xpath:/html/body/app-root/app-central-vendas/div/central-vendas-toolbar/div/ul/li[2]
    Sleep                     1s    
    Element Should Contain    xpath:/html/body/app-root/app-central-vendas/div/div/div/app-gerenciador-vendas/div/div[1]/h1    Gerenciamento de Vendas

Então valido o Load Balancing
    Element Should Contain    xpath:/html/body/app-root/app-pages/div/div/div/app-load-balancing/h1     Load Balacing - E-commerce's  
    Clicar no Botão           xpath:/html/body/app-root/app-pages/div/div/div/app-load-balancing/h1/button
    Element Should Be Disabled    xpath:/html/body/app-root/app-pages/div/div/div/app-load-balancing/div[2]/buttons/div/div/button

Então valido se a tela de Verificar Transações foi carregada corretamente
    Element should Contain    xpath:/html/body/app-root/app-pages/div/div/div/app-transacoes/mat-expansion-panel/mat-expansion-panel-header/span[1]/mat-panel-title/h1    Verificador de Transações
    Clicar no Botão           xpath:/html/body/app-root/app-pages/div/div/div/app-transacoes/mat-expansion-panel/div/div/div/div/form/mat-form-field[1]/div[1]/div/div[3]/mat-datepicker-toggle/button
    Repetidor de teclas       Enter    2
    Clicar no Elemento        xpath:/html/body/app-root/app-pages/div/div/div/app-transacoes/mat-expansion-panel/div/div/div/div/form/mat-form-field[2]/div[1]/div/div[2]
    Inserir Texto             xpath:/html/body/div[3]/div[3]/div/div/mat-option[1]/span/ngx-mat-select-search/div/div/input    61
    Clicar no Elemento        xpath:/html/body/div[3]/div[3]/div/div/mat-option[2]
    RPA.Desktop.Press Keys    ESC
    Clicar no Botão           xpath:/html/body/app-root/app-pages/div/div/div/app-transacoes/mat-expansion-panel/div/div/div/div/form/button
    Sleep    1
    Wait Until Element Is Visible    xpath:/html/body/div[3]/div/div/mat-snack-bar-container/div/div/div/div/simple-snack-bar/div[1] 
    Element Should Contain    xpath:/html/body/div[3]/div/div/mat-snack-bar-container/div/div/div/div/simple-snack-bar/div[1]     Pesquisa das Transações realizada.
