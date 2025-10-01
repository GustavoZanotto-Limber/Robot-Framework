*** Settings ***
Documentation    Smoke Test: Front
Resource         ../../../../Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao     ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/Front/Utilitários/ 
${nome_print}
${nome_exe}=    cde_win_bca_frontR40

*** Keywords ***

Utilitários
    Cadastros
    repetidor de teclas    right    5

*** Test Cases    ***

Favoritos
    [Tags]    Utilitários    Front    SmokeTest  
    ${nome_print}=     Set Variable     Favoritos
    Utilitários
    RPA.Windows.Click       Favoritos
    RPA.Windows.Get Text    Configuração dos Favoritos (1)
    RPA.Windows.Click       Excluir
    BaseDesktop.Screenshot  Configuração dos Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       Fechar
    
Papel de Parede
    [Tags]    Utilitários    Front    SmokeTest  
    ${nome_print}=     Set Variable     Papel de Parede
    Utilitários
    RPA.Windows.Click       Papel de Parede
    Sleep                   1s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Estilo do Menu Principal
    [Tags]    Utilitários    Front    SmokeTest  
    ${nome_print}=     Set Variable     Estilo do Menu Principal
    Utilitários
    RPA.Windows.Click       Estilo do Menu Principal
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    RPA.Windows.Click       Standard
    BaseDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    [Tags]    Utilitários    Front    SmokeTest  
    ${nome_print}=     Set Variable     Controle de Acessos
    Utilitários
    RPA.Windows.Click       Controle de Acessos
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    RPA.Windows.Click       Confirmar
    BaseDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    RPA.Windows.Click       OK
    Fechar janela

Relatórios Personalizados > Cadastro de Categorias
    [Tags]    Utilitários    Front    SmokeTest  
    ${nome_print}=     Set Variable      Cadastro de Categorias
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  c
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Categorias
    RPA.Windows.Click       Confirmar
    Fechar com Sim
    
Relatórios Personalizados > Cadastro de Relatórios
    [Tags]    Utilitários    Front    SmokeTest  
    ${nome_print}=     Set Variable     Cadastro de Relatórios
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  a
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    BaseDesktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Layout de Bilhetes
    [Tags]    Utilitários    Front    SmokeTest  
    ${nome_print}=     Set Variable     Layout de Bilhetes
    Utilitários
    RPA.Windows.Click       Layout de Bilhetes
    RPA.Windows.Get Text    Layout de Bilhetes (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Layout de Bilhetes (1)    ${Caminho_Screenshots}Layout de Bilhetes
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Configuração de Impressoras
    [Tags]    Utilitários    Front    SmokeTest  
    ${nome_print}=     Set Variable     Configuração de Impressoras
    Utilitários
    RPA.Windows.Click       Configuração de Impressoras
    RPA.Windows.Get Text    Configuração Impressoras (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Configuração Impressoras (1)    ${Caminho_Screenshots}Configuração de Impressoras
    Fechar janela
    RPA.Desktop.Press Keys  Left
    RPA.Desktop.Press Keys  Enter

Observações Padrão
    [Tags]    Utilitários    Front    SmokeTest  
    ${nome_print}=     Set Variable     Observações Padrão
    Utilitários
    RPA.Windows.Click       Observações Padrão
    RPA.Windows.Get Text    Cadastro de Observações Padrão (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Cadastro de Observações Padrão (1)    ${Caminho_Screenshots}Observações Padrão
    RPA.Windows.Click       Confirmar
    Fechar janela

Verifica transações abertas
    [Tags]    Utilitários    Front    SmokeTest  
    ${nome_print}=     Set Variable     Verifica transações abertas
    Utilitários
    RPA.Windows.Click       Verifica transações abertas
    RPA.Windows.Get Text    Verifica transações abertas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Verifica transações abertas (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Abrir Gaveta
    [Tags]    Utilitários    Front    SmokeTest  
    ${nome_print}=     Set Variable     Abrir Gaveta
    Utilitários
    RPA.Windows.Click       Abrir Gaveta
    RPA.Windows.Get Text    Salvar Saída de Impressão como
    BaseDesktop.Screenshot  Salvar Saída de Impressão como    ${Caminho_Screenshots}Abrir Gaveta
    RPA.Windows.Click       Fechar

Metas Orçamento/Previsão
    [Tags]    Utilitários    Front    SmokeTest  
    ${nome_print}=     Set Variable     Metas Orçamento_Previsão
    Utilitários
    RPA.Windows.Click       Metas Orçamento/Previsão
    RPA.Windows.Get Text    Cadastro de Metas para BI (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Cadastro de Metas para BI (1)    ${Caminho_Screenshots}Metas Orçamento_Previsão
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Metas Realizadas Adicionais
    [Tags]    Utilitários    Front    SmokeTest  
    ${nome_print}=     Set Variable     Metas Realizadas Adicionais
    Utilitários
    RPA.Windows.Click       Metas Realizadas Adicionais
    RPA.Windows.Get Text    Lançamentos de Metas Realizadas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Lançamentos de Metas Realizadas (1)    ${Caminho_Screenshots}Metas Realizadas Adicionais
    Fechar janela