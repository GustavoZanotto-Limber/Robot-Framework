
*** Settings ***
Documentation    Smoke Test: Corretagem
Resource         ../../../../../Resources/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}



*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Corretagem/Cadastros/    
${nome_print}
${nome_exe}=    cde_win_crt
*** Keywords ***


*** Test Cases ***

Itens > Itens
    ${nome_print}=     Set Variable     Itens
    [Tags]     Corretagem    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Itens
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Cadastro de Itens (1)  
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Itens (1)      ${Caminho_Screenshots}Itens/Itens
    Fechar janela
    RPA.Windows.Click         Sim

Terceiros
    ${nome_print}=     Set Variable     Terceiros
    [Tags]     Corretagem    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Terceiros
    RPA.Windows.Get Text      Cadastro de Terceiros (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Terceiros (1)    ${Caminho_Screenshots}Terceiros
    RPA.Windows.Click         Cancelar (F3)
    Fechar janela
    RPA.Windows.Click         Sim

Contrato > Configuração de Contrato
    ${nome_print}=     Set Variable     Configuração de Contrato
    [Tags]     Corretagem    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Contrato
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configuração de Contratos (1)
    repetidor de teclas       tab    5
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot    Configuração de Contratos (1)    ${Caminho_Screenshots}Contrato/Configuração de Contrato
    RPA.Windows.Click         Confirmar
    Fechar janela
    RPA.Windows.Click         Sim

Contrato > Mensagens para Contrato
    ${nome_print}=     Set Variable     Mensagens para Contrato
    [Tags]     Corretagem    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Contrato
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Configuração de Mensagens para $ESPAÇOContrato (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Configuração de Mensagens para $ESPAÇOContrato (1)    ${Caminho_Screenshots}Contrato/Mensagens para Contrato
    Fechar janela
    RPA.Windows.Click         Sim

Confirmação de Negócio > Configuração de Confirmação de Negócio
    ${nome_print}=     Set Variable     Configuração de Confirmação de Negócio
    [Tags]     Corretagem    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Confirmação de Negócio 
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Modelo de Impressão de Confirmação de Negócio (1)
    repetidor de teclas       tab    5
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Cadastro de Modelo de Impressão de Confirmação de Negócio (1)    ${Caminho_Screenshots}Confirmação de Negócio/Configuração de Confirmação de Negócio
    RPA.Windows.Click         Confirmar
    Fechar janela
    RPA.Windows.Click         Sim

Confirmação de Negócio > Status de Confirmação de Negócio
    ${nome_print}=     Set Variable     Status de Confirmação de Negócio
    [Tags]     Corretagem    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Confirmação de Negócio 
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Status de Confirmação de Negócio (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Status de Confirmação de Negócio (1)    ${Caminho_Screenshots}Confirmação de Negócio/Status de Confirmação de Negócio
    Fechar janela
    RPA.Windows.Click         Sim

Confirmação de Negócio > Motivos Acrésc/Descontos
    ${nome_print}=     Set Variable     Motivos Acrésc_Descontos
    [Tags]     Corretagem    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Confirmação de Negócio 
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Cadastro de Motivos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Motivos (1)    ${Caminho_Screenshots}Confirmação de Negócio/Motivos Acrésc_Descontos
    Fechar com Sim

Confirmação de Negócio > Cadastro Tipo de Custos
    ${nome_print}=     Set Variable     Cadastro Tipo de Custos
    [Tags]     Corretagem    Cadastros   SmokeTest
    Cadastros
    RPA.Windows.Click         Confirmação de Negócio 
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro Tipo de Custos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro Tipo de Custos (1)    ${Caminho_Screenshots}Confirmação de Negócio/Cadastro Tipo de Custos
    Fechar com Sim

Parâmetros > Empresas
    ${nome_print}=     Set Variable     Empresas
    [Tags]     Corretagem    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar com Sim

Parâmetros > Estabelecimentos
    ${nome_print}=     Set Variable     Estabelecimentos
    [Tags]     Corretagem    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar com Sim

Parâmetros > Grupo de Usuários
    ${nome_print}=     Set Variable     Grupo de Usuários
    [Tags]     Corretagem    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupo de Usuários
    Fechar com Sim

Parâmetros > Usuários
    ${nome_print}=     Set Variable     Usuários
    [Tags]     Corretagem    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Parâmetros
    RPA.Desktop.Press Keys    U
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar com Sim