*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         ../../../../Resources/Base/Base_Desktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***
${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/SmokeTest/Bilheteria/ERP/Financeiro/Utilitários/ 
${nome_print}
${nome_exe}=    cde_win_fin
*** Keywords ***

Utilitários
    Cadastros
    repetidor de teclas    right    13

*** Test Cases    ***

Favoritos
    ${nome_print}=     Set Variable     Favoritos
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Favoritos
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    RPA.Desktop.Press Keys  Enter
    Base_Desktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar

Papel de Parede
    ${nome_print}=     Set Variable     Papel de Parede
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Papel de Parede
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    Base_Desktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Configurar Menu Pincipal
    ${nome_print}=     Set Variable     Configurar Menu Pincipal
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurar Menu Principal
    RPA.Windows.Get Text    Configurador de Menus (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    Base_Desktop.Screenshot  Configurador de Menus (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    RPA.Windows.Click       Confirmar
    Fechar Janela

Configurar Barra de Atalhos
    ${nome_print}=     Set Variable     Configurar Barra de Atalhos
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurar Barra de Atalhos
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar com Sim

Estilo do Menu Principal
    ${nome_print}=     Set Variable     Estilo do Menu Principal
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Estilo do Menu Principal
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    RPA.Windows.Click       Standard
    Base_Desktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    ${nome_print}=     Set Variable     Controle de Acessos
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Controle de Acessos
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    RPA.Windows.Click       Confirmar
    Base_Desktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    RPA.Windows.Click       OK
    Fechar janela

Configuração de Liberação
    ${nome_print}=     Set Variable     Configuração de Liberação
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configuração de Liberação
    RPA.Windows.Get Text    Configurações de Liberação (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    Base_Desktop.Screenshot  Configurações de Liberação (1)    ${Caminho_Screenshots}Configuração de Liberação
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Relatórios Personalizados > Cadastro de Categorias
    ${nome_print}=     Set Variable     Cadastro de Categorias
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  c
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    Base_Desktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Categorias
    RPA.Windows.Click       Confirmar
    Fechar janela

Relatórios Personalizados > Cadastro de Relatórios
    ${nome_print}=     Set Variable     Cadastro de Relatórios
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  a
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Click       Confirmar
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    Base_Desktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    RPA.Windows.Click       Confirmar
    Fechar janela

Configurador de Impressões > Relatórios > Contas a Pagar
    ${nome_print}=     Set Variable     Contas a Pagar
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  R
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Configurador de Impressões - Contas a Pagar (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Configurador de Impressões - Contas a Pagar (1)    ${Caminho_Screenshots}Configurador de Impressões/Relatórios/Contas a Pagar
    Fechar com Sim

Configurador de Impressões > Relatórios > Contas a Receber
    ${nome_print}=     Set Variable     Contas a Receber
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  R
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Configurador de Impressões - Contas a Receber (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Configurador de Impressões - Contas a Receber (1)    ${Caminho_Screenshots}Configurador de Impressões/Relatórios/Contas a Receber
    Fechar com Sim

Configurador de Impressões > Recibos > Contas a Pagar
    ${nome_print}=     Set Variable     Recibos Contas a Pagar
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  E
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Configurador de Impressões - Recibo Contas a Pagar (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Configurador de Impressões - Recibo Contas a Pagar (1)    ${Caminho_Screenshots}Configurador de Impressões/Recibos/Contas a Pagar
    Fechar com Sim

Configurador de Impressões > Recibos > Contas a Receber
    ${nome_print}=     Set Variable     Recibos Contas a Receber
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  E
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Configurador de Impressões - Recibo Contas a Receber (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Configurador de Impressões - Recibo Contas a Receber (1)    ${Caminho_Screenshots}Configurador de Impressões/Recibos/Contas a Receber
    Fechar com Sim

Verificar Transações Abertas
    ${nome_print}=     Set Variable     Verificar Transações Abertas
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Verificar Transações Abertas
    RPA.Windows.Get Text    Verificar Transações Abertas (1)
    RPA.Windows.Click       Carregar
    Base_Desktop.Screenshot  Verificar Transações Abertas (1)    ${Caminho_Screenshots}Verificar Transações Abertas
    Fechar janela

Configurar de Dup/Boletos/Carnês
    ${nome_print}=     Set Variable     Configurar de Dup/Boletos/Carnês
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurar de Dup/Boletos/Carnês
    RPA.Windows.Get Text    Configuração de Duplicatas/Carnes/Boletos (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Configuração de Duplicatas/Carnes/Boletos (1)    ${Caminho_Screenshots}Configurar de Dup_Boletos_Carnês
    Fechar com Sim

Importador Extrato Bancário (OFX)
    ${nome_print}=     Set Variable     Importador Extrato Bancário (OFX)
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Importador Extrato Bancário (OFX)
    RPA.Windows.Get Text    Importador Extrato Bancário (OFX) (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    Base_Desktop.Screenshot  Importador Extrato Bancário (OFX) (1)    ${Caminho_Screenshots}Importador Extrato Bancário (OFX)
    RPA.Windows.Click       Confirmar
    RPA.Windows.Click       OK
    Fechar janela
    RPA.Windows.Click       OK

Arquivo Relato - Serasa
    ${nome_print}=     Set Variable     Arquivo Relato - Serasa
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Arquivo Relato - Serasa
    RPA.Windows.Get Text    ARQUIVO RELATO - SERASA (1)
    RPA.Windows.Click       Gerar
    Base_Desktop.Screenshot  ARQUIVO RELATO - SERASA (1)    ${Caminho_Screenshots}Arquivo Relato - Serasa
    RPA.Windows.Click       OK
    Fechar janela

Agenda Telefônica
    ${nome_print}=     Set Variable     Agenda Telefônica
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Agenda Telefônica
    RPA.Windows.Get Text    Agenda Telefônica (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    Base_Desktop.Screenshot  Agenda Telefônica (1)    ${Caminho_Screenshots}Agenda Telefônica
    RPA.Windows.Click         Confirmar
    Fechar janela

Faturamento de Agências - Bilheteria > Geração de Faturas
    ${nome_print}=     Set Variable     Geração de Faturas
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Faturamento de Agências - Bilheteria
    RPA.Desktop.Press Keys  G
    RPA.Windows.Get Text    Faturamento de Agências (1)
    RPA.Windows.Click       Carregar
    Base_Desktop.Screenshot  Faturamento de Agências (1)    ${Caminho_Screenshots}Faturamento de Agências - Bilheteria/Geração de Faturas
    RPA.Windows.Click       OK
    Fechar janela

Faturamento de Agências - Bilheteria > Estorno de Faturas
    ${nome_print}=     Set Variable     Estorno de Faturas
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Faturamento de Agências - Bilheteria
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Estorno de Faturas (1)
    RPA.Windows.Click       Carregar
    Base_Desktop.Screenshot  Estorno de Faturas (1)    ${Caminho_Screenshots}Faturamento de Agências - Bilheteria/Estorno de Faturas
    RPA.Windows.Click       OK
    Fechar janela

Cadastro de Bilheterias
    ${nome_print}=     Set Variable     Cadastro de Bilheterias
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Cadastro de Bilheterias
    RPA.Windows.Get Text    Cadastro de Bilheterias (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Bilheterias (1)    ${Caminho_Screenshots}Cadastro de Bilheterias
    Fechar com Sim

Liberações Contratos de Serviços
    ${nome_print}=     Set Variable     Liberações Contratos de Serviços
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Liberações Contratos de Serviços
    RPA.Windows.Get Text    Liberações Contratos de Serviços (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Liberações Contratos de Serviços (1)    ${Caminho_Screenshots}Liberações Contratos de Serviços
    Fechar com Sim

Processos Personalizados
    ${nome_print}=     Set Variable     Processos Personalizados
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Processos Personalizados
    RPA.Windows.Get Text    Processos Personalizados (1)
    RPA.Windows.Click       Cadastrar Novo Processo
    Base_Desktop.Screenshot  Processos Personalizados (1)    ${Caminho_Screenshots}Processos Personalizados
    RPA.Windows.Click       Fechar
    Fechar janela

Relatório de Análise de Veículos
    ${nome_print}=     Set Variable     Relatório de Análise de Veículos
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Relatório de Análise de Veículos
    RPA.Windows.Get Text    Relatório de Análise de Veículos (1)
    RPA.Desktop.Press Keys  tab
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    Base_Desktop.Screenshot  Relatório de Análise de Veículos (1)    ${Caminho_Screenshots}Relatório de Análise de Veículos
    RPA.Windows.Click       Confirmar
    Fechar janela

Importação de Planilha Excel Personalizada
    ${nome_print}=     Set Variable     Importação de Planilha Excel Personalizada
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Importação de Planilha Excel Personalizada
    RPA.Windows.Get Text    Importação de Planilha Excel Personalizada (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    Base_Desktop.Screenshot  Importação de Planilha Excel Personalizada (1)    ${Caminho_Screenshots}Importação de Planilha Excel Personalizada
    RPA.Windows.Click       Confirmar
    Fechar janela

Bilheteria > Cadastro de Tipos de Receita
    ${nome_print}=     Set Variable     Cadastro de Tipos de Receita
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Bilheteria
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tipos de Receita (1)
    RPA.Windows.Click       Novo
    Base_Desktop.Screenshot  Cadastro de Tipos de Receita (1)    ${Caminho_Screenshots}Bilheteria/Cadastro de Tipos de Receita
    Fechar com Sim

Bilheteria > Config. Plano Contas X Produtos
    ${nome_print}=     Set Variable     Config. Plano Contas X Produtos
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Bilheteria
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Configuração Geração de Receitas Plano de Contas Produto (1)
    repetidor de teclas    Tab                                4
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    Base_Desktop.Screenshot  Configuração Geração de Receitas Plano de Contas Produto (1)    ${Caminho_Screenshots}Bilheteria/Config. Plano Contas X Produtos
    RPA.Windows.Click       Confirmar
    Fechar com Sim
    RPA.Windows.Click       OK
    Fechar janela

Bilheteria > Config. Tipo Receita Trib.
    ${nome_print}=     Set Variable     Config. Tipo Receita Trib.
    [Tags]   SmokeERP    Financeiro    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Bilheteria
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Configuração Tipo Receita Produto Geração de Receitas (1)
    repetidor de teclas    Tab                                4
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    Base_Desktop.Screenshot  Configuração Tipo Receita Produto Geração de Receitas (1)    ${Caminho_Screenshots}Bilheteria/Config. Tipo Receita Trib.
    RPA.Windows.Click       Confirmar
    Fechar com Sim
    RPA.Windows.Click       OK
    Fechar janela