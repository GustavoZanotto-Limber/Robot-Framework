*** Settings ***
Documentation    Smoke Test: Financeiro
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_fin

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Financeiro/Utilitários/ 

*** Keywords ***



Utilitários
    Cadastros
    repetidor de teclas    right    12

*** Test Cases    ***

Favoritos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Utilitários
    Utilitários
    RPA.Windows.Click       Favoritos
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    BaseDesktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       Fechar
    
Papel de Parede
    [Teardown]              Caso aconteça erro            ${Caminho_Screenshots}                    Papel de Parede
    Utilitários
    RPA.Windows.Click       Papel de Parede
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Configurar Menu Principal
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Configurar Menu Principal
    Utilitários
    RPA.Windows.Click       Configurar Menu Principal
    RPA.Windows.Get Text    Configurador de Menus (1)
    BaseDesktop.Screenshot  Configurador de Menus (1)    ${Caminho_Screenshots}Configurar Menu Principal
    Fechar janela

Configurar Barra de Atalhos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Configurar Barra de Atalhos
    Utilitários
    RPA.Windows.Click       Configurar Barra de Atalhos
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    BaseDesktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar Janela

Estilo do Menu Principal
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Estilo do Menu Principal
    Utilitários
    RPA.Windows.Click       Estilo do Menu Principal
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    BaseDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Controle de Acessos
    Utilitários
    RPA.Windows.Click       Controle de Acessos
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    BaseDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    Fechar janela

Configuração de Liberação
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Configuração de Liberação
    Utilitários
    RPA.Windows.Click       Configuração de Liberação
    RPA.Windows.Get Text    Configurações de Liberação (1)
    BaseDesktop.Screenshot  Configurações de Liberação (1)    ${Caminho_Screenshots}Configuração de Liberação
    Fechar janela

Relatórios Personalizados > Cadastro de Categorias
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Relatórios Personalizados/                             Cadastro de Categorias
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  c
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    BaseDesktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Categorias
    Fechar janela
    
Relatórios Personalizados > Cadastro de Relatórios
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Relatórios Personalizados/                               Cadastro de Relatórios
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  a
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    BaseDesktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    Fechar janela

Configurador de Impressões > Relatórios > Contas a Pagar
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Configurador de Impressões/Relatórios/                             Contas a Pagar
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  R
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Configurador de Impressões - Contas a Pagar (1)
    BaseDesktop.Screenshot  Configurador de Impressões - Contas a Pagar (1)    ${Caminho_Screenshots}Configurador de Impressões/Relatórios/Contas a Pagar
    Fechar janela

Configurador de Impressões > Relatórios > Contas a Receber
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Configurador de Impressões/Relatórios/                             Contas a Receber
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  R
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Configurador de Impressões - Contas a Receber (1)
    BaseDesktop.Screenshot  Configurador de Impressões - Contas a Receber (1)    ${Caminho_Screenshots}Configurador de Impressões/Relatórios/Contas a Receber
    Fechar janela

Configurador de Impressões > Recibos > Contas a Pagar
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Configurador de Impressões/Recibos/                             Contas a Pagar
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  E
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Configurador de Impressões - Recibo Contas a Pagar (1)
    BaseDesktop.Screenshot  Configurador de Impressões - Recibo Contas a Pagar (1)    ${Caminho_Screenshots}Configurador de Impressões/Recibos/Contas a Pagar
    Fechar janela

Configurador de Impressões > Recibos > Contas a Receber
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Configurador de Impressões/Recibos/                             Contas a Receber
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  E
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Configurador de Impressões - Recibo Contas a Receber (1)
    BaseDesktop.Screenshot  Configurador de Impressões - Recibo Contas a Receber (1)    ${Caminho_Screenshots}Configurador de Impressões/Recibos/Contas a Receber
    Fechar janela

Criar Usuario de Log
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Criar Usuario de Log
    Utilitários
    RPA.Windows.Click       Criar Usuário de Log
    RPA.Windows.Get Text    Cadastro Usuario de Log (1)
    BaseDesktop.Screenshot  Cadastro Usuario de Log (1)    ${Caminho_Screenshots}Criar Usuario de Log
    Fechar janela

Verifica transações abertas
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Verifica transações abertas
    Utilitários
    RPA.Windows.Click       Verifica transações abertas
    RPA.Windows.Get Text    Verifica transações abertas (1)
    BaseDesktop.Screenshot  Verifica transações abertas (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Configurar de Dup/Boletos/Carnês
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Configurar de Dup_Boletos_Carnês
    Utilitários
    RPA.Windows.Click       Configurar de Dup/Boletos/Carnês
    RPA.Windows.Get Text    Configuração de Duplicatas/Carnes/Boletos (1)
    BaseDesktop.Screenshot  Configuração de Duplicatas/Carnes/Boletos (1)    ${Caminho_Screenshots}Configurar de Dup_Boletos_Carnês
    Fechar janela

Importador Extrato Bancário (OFX)
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Importador Extrato Bancário (OFX)
    Utilitários
    RPA.Windows.Click       Importador Extrato Bancário (OFX)
    RPA.Windows.Get Text    Importador de Extrato Bancário (OFX) (1)
    BaseDesktop.Screenshot  Importador de Extrato Bancário (OFX) (1)    ${Caminho_Screenshots}Importador Extrato Bancário (OFX)
    Fechar janela

Arquivo Relato - Serasa
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Arquivo Relato - Serasa
    Utilitários
    RPA.Windows.Click       Arquivo Relato - Serasa
    RPA.Windows.Get Text    ARQUIVO RELATO - SERASA (1)
    BaseDesktop.Screenshot  ARQUIVO RELATO - SERASA (1)    ${Caminho_Screenshots}Arquivo Relato - Serasa
    Fechar janela

Agenda Telefônica
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Agenda Telefônica
    Utilitários
    RPA.Windows.Click       Agenda Telefônica
    RPA.Windows.Get Text    Agenda Telefônica (1)
    BaseDesktop.Screenshot  Agenda Telefônica (1)    ${Caminho_Screenshots}Agenda Telefônica
    Fechar janela

Faturamento de Agências - Bilheteria > Geração de Faturas
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Faturamento de Agências - Bilheteria/                             Geração de Faturas
    Utilitários
    RPA.Windows.Click       Faturamento de Agências - Bilheteria
    RPA.Desktop.Press Keys  G
    RPA.Windows.Get Text    Faturamento de Agências (1)
    BaseDesktop.Screenshot  Faturamento de Agências (1)    ${Caminho_Screenshots}Faturamento de Agências - Bilheteria/Geração de Faturas
    Fechar janela

Faturamento de Agências - Bilheteria > Estorno de Faturas
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Faturamento de Agências - Bilheteria/                             Estorno de Faturas
    Utilitários
    RPA.Windows.Click       Faturamento de Agências - Bilheteria
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Estorno de Faturas (1)
    BaseDesktop.Screenshot  Estorno de Faturas (1)    ${Caminho_Screenshots}Faturamento de Agências - Bilheteria/Estorno de Faturas
    Fechar janela

Cadastro de Bilheterias
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                           Cadastro de Bilheterias
    Utilitários
    RPA.Windows.Click       Cadastro de Bilheterias
    RPA.Windows.Get Text    Cadastro de Bilheterias (1)
    BaseDesktop.Screenshot  Cadastro de Bilheterias (1)    ${Caminho_Screenshots}Cadastro de Bilheterias
    Fechar janela

Processos Personalizados
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                           Processos Personalizados
    Utilitários
    RPA.Windows.Click       Processos Personalizados
    RPA.Windows.Get Text    Processos Personalizados (1)
    BaseDesktop.Screenshot  Processos Personalizados (1)    ${Caminho_Screenshots}Processos Personalizados
    Fechar janela

Relatório de Análise de Veículos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                           Relatório de Análise de Veículos
    Utilitários
    RPA.Windows.Click       Relatório de Análise de Veículos
    RPA.Windows.Get Text    Relatório de Análise de Veículos (1)
    BaseDesktop.Screenshot  Relatório de Análise de Veículos (1)    ${Caminho_Screenshots}Relatório de Análise de Veículos
    Fechar janela

Importação de Planilha Excel Personalizada
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                           Importação de Planilha Excel Personalizada
    Utilitários
    RPA.Windows.Click       Importação de Planilha Excel Personalizada
    RPA.Windows.Get Text    Importação de Planilha Excel Personalizada (1)
    BaseDesktop.Screenshot  Importação de Planilha Excel Personalizada (1)    ${Caminho_Screenshots}Importação de Planilha Excel Personalizada
    Fechar janela

Bilheteria > Cadastro de Tipos de Receita
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Bilheteria/                           Cadastro de Tipos de Receita
    Utilitários
    RPA.Windows.Click       Bilheteria
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tipos de Receita (1)
    BaseDesktop.Screenshot  Cadastro de Tipos de Receita (1)    ${Caminho_Screenshots}Bilheteria/Cadastro de Tipos de Receita
    Fechar janela

Bilheteria > Config. Plano Contas X Produtos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Bilheteria/                           Config. Plano Contas X Produtos
    Utilitários
    RPA.Windows.Click       Bilheteria
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Configuração Geração de Receitas Plano de Contas Produto (1)
    BaseDesktop.Screenshot  Configuração Geração de Receitas Plano de Contas Produto (1)    ${Caminho_Screenshots}Bilheteria/Config. Plano Contas X Produtos
    Fechar janela
    RPA.Windows.Click       Sim
    
Bilheteria > Config. Tipo Receita Trib.
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Bilheteria/                           Config. Tipo Receita Trib.
    Utilitários
    RPA.Windows.Click       Bilheteria
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Configuração Tipo Receita Produto Geração de Receitas (1)
    BaseDesktop.Screenshot  Configuração Tipo Receita Produto Geração de Receitas (1)    ${Caminho_Screenshots}Bilheteria/Config. Tipo Receita Trib.
    Fechar janela
    RPA.Windows.Click       Sim

Encerrar
    Encerrar tudo