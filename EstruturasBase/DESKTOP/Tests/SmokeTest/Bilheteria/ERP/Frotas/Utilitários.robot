*** Settings ***
Documentation    Smoke Test: Frotas
Resource         ../../../../../Resources/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Frotas/Utilitários/    
${nome_print}
${nome_exe}=    cde_win_frotas
*** Keywords ***

Utilitários
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    12
    RPA.Windows.Click    ${nome}

Utilitários com tecla
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    12
    RPA.Desktop.Press Keys   ${nome}

*** Test Cases ***

Favoritos
    ${nome_print}=     Set Variable     Favoritos
    [Tags]    Frotas   Utilitários   SmokeTest    
    Utilitários             Favoritos       
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar

Papel de Parede
    ${nome_print}=     Set Variable     Papel de Parede
    [Tags]    Frotas   Utilitários   SmokeTest
    Utilitários             Papel de Parede     
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseKeywordsDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Configurar Menu Pincipal
    ${nome_print}=     Set Variable     Configurar Barra de Atalhos
    [Tags]    Frotas   Utilitários   SmokeTest    
    Utilitários             Configurar Menu Principal       
    RPA.Windows.Get Text    Configurador de Menus (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Configurador de Menus (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    RPA.Windows.Click       Confirmar
    Fechar janela

Configurar Barra de Atalhos
    ${nome_print}=     Set Variable     Configurar Barra de Atalhos
    [Tags]    Frotas   Utilitários   SmokeTest
    Utilitários             Configurar Barra de Atalhos       
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar com Sim

Estilo do Menu Principal
    ${nome_print}=     Set Variable     Estilo do Menu Principal
    [Tags]    Frotas   Utilitários   SmokeTest
    Utilitários             Estilo do Menu Principal       
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    RPA.Windows.Click       Standard
    BaseKeywordsDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    ${nome_print}=     Set Variable     Controle de Acessos
    [Tags]    Frotas   Utilitários   SmokeTest
    Utilitários             Controle de Acessos   
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    RPA.Windows.Click       Confirmar
    BaseKeywordsDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    RPA.Windows.Click       OK
    Fechar janela

Configuração de Liberação
    ${nome_print}=     Set Variable     Configuração de Liberação
    [Tags]    Frotas   Utilitários   SmokeTest    
    Utilitários             Configuração de Liberação   
    Sleep                   2s
    RPA.Windows.Get Text    Configurações de Liberação (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Configurações de Liberação (1)    ${Caminho_Screenshots}Configuração de Liberação
    RPA.Windows.Click       Confirmar
    Sleep                   2s
    Fechar com Sim

Relatórios Personalizados > Cadastro de Categorias
    ${nome_print}=     Set Variable     Cadastro de Categorias
    [Tags]    Frotas   Utilitários   SmokeTest   
    Utilitários             Relatórios Personalizados      
    RPA.Desktop.Press Keys  c
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Categorias
    RPA.Windows.Click       Confirmar
    Fechar janela

Relatórios Personalizados > Cadastro de Relatórios
    ${nome_print}=     Set Variable     Cadastro de Relatórios
    [Tags]    Frotas   Utilitários   SmokeTest    
    Utilitários             Relatórios Personalizados      
    RPA.Desktop.Press Keys  a
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    BaseKeywordsDesktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    RPA.Windows.Click       Confirmar
    Fechar janela

Verifica transações abertas
    ${nome_print}=     Set Variable     Verifica transações abertas
    [Tags]    Frotas   Utilitários   SmokeTest
    Utilitários             Verifica transações abertas  
    RPA.Windows.Get Text    Verifica transações abertas (1)
    RPA.Windows.Click      Carregar
    BaseKeywordsDesktop.Screenshot  Verifica transações abertas (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Configurador de Impressões > Ordem se Interna
    ${nome_print}=     Set Variable     Ordem se Serviço Interna
    [Tags]    Frotas   Utilitários   SmokeTest
    Utilitários             Configurador de Impressões   
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Configurador de Impressões - Ordem de Serviço Interna (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Configurador de Impressões - Ordem de Serviço Interna (1)    ${Caminho_Screenshots}Configurador de Impressões/Ordem se Serviço Interna
    Fechar com Sim

Processos Personalizados
    ${nome_print}=     Set Variable     Processos Personalizados
    [Tags]    Frotas   Utilitários   SmokeTest
    Utilitários             Processos Personalizados        
    RPA.Windows.Get Text    Processos Personalizados (1)
    RPA.Windows.Click       Cadastrar Novo Processo
    BaseKeywordsDesktop.Screenshot  Processos Personalizados (1)    ${Caminho_Screenshots}Processos Personalizados
    RPA.Windows.Click       Fechar
    Fechar janela

Leiaute Carta Frete
    ${nome_print}=     Set Variable     Leiaute Carta Frete
    [Tags]    Frotas   Utilitários   SmokeTest    
    Utilitários             Leiaute Carta Frete    
    Sleep                   3s
    RPA.Windows.Get Text    FastReport - Untitled.fr3
    BaseKeywordsDesktop.Screenshot  FastReport - Untitled.fr3    ${Caminho_Screenshots}Leiaute Carta Frete
    RPA.Desktop.Press Keys  ALT    f4
    RPA.Windows.Click       Sim

Integrações > Importação de CT-e/MDF-e
    ${nome_print}=     Set Variable     Importação de CT-e_MDF-e
    [Tags]    Frotas   Utilitários   SmokeTest    
    Utilitários com tecla   T 
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Importação de XML de Conhecimento de Transporte Eletrônico (1) 
    RPA.Windows.Click       Atualizar
    BaseKeywordsDesktop.Screenshot  Importação de XML de Conhecimento de Transporte Eletrônico (1)    ${Caminho_Screenshots}Integrações/Importação de CT-e_MDF-e
    RPA.Windows.Click       OK
    Fechar Janela

Integrações > Vincular Valores MDF-e
    ${nome_print}=     Set Variable     Vincular Valores MDF-e
    [Tags]    Frotas   Utilitários   SmokeTest
    Utilitários com tecla   T 
    RPA.Desktop.Press Keys  V
    RPA.Windows.Get Text   	Vincular Valores Viagens - MDFe (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Vincular Valores Viagens - MDFe (1)    ${Caminho_Screenshots}Integrações/Vincular Valores MDF-e
    Fechar com Sim

Integrações > Sênior > Configurações
    ${nome_print}=     Set Variable     Configurações
    [Tags]    Frotas   Utilitários   SmokeTest
    Utilitários com tecla   T 
    RPA.Windows.Click       Sênior
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro Configuração Integração Sênior (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro Configuração Integração Sênior (1)    ${Caminho_Screenshots}Integrações/Sênior/Configurações
    Fechar com Sim

Integrações > Sênior > RPAs > Envio
    ${nome_print}=     Set Variable     Envio
    [Tags]    Frotas   Utilitários   SmokeTest
    Utilitários com tecla   T 
    RPA.Windows.Click       Sênior
    RPA.Windows.Click       RPAs
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Sênior - Envio RPAs
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Sênior - Envio RPAs    ${Caminho_Screenshots}Integrações/Sênior/RPAs/Envio
    RPA.Windows.Click       Confirmar
    Fechar Janela

Integrações > Sênior > RPAs > Exclusão
    ${nome_print}=     Set Variable     Exclusão
    [Tags]    Frotas   Utilitários   SmokeTest
    Utilitários com tecla   T 
    RPA.Windows.Click       Sênior
    RPA.Windows.Click       RPAs
    RPA.Desktop.Press Keys  X
    RPA.Windows.Get Text    Sênior - Exclusão RPAs
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Sênior - Exclusão RPAs    ${Caminho_Screenshots}Integrações/Sênior/RPAs/Exclusão
    RPA.Windows.Click       Confirmar
    Fechar Janela

Integrações > Sênior > RPAs > Consulta
    ${nome_print}=     Set Variable     Consulta
    [Tags]    Frotas   Utilitários   SmokeTest
    Utilitários com tecla   T 
    RPA.Windows.Click       Sênior
    RPA.Windows.Click       RPAs
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Sênior - Consulta de Envio RPAs
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Sênior - Consulta de Envio RPAs    ${Caminho_Screenshots}Integrações/Sênior/RPAs/Consulta
    RPA.Windows.Click       Confirmar
    Fechar Janela

Integrações > Poli Frotas > Configuração
    ${nome_print}=     Set Variable     Configuração
    [Tags]    Frotas   Utilitários   SmokeTest
    Utilitários com tecla   T 
    RPA.Windows.Click       Poli Frotas
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    PoliFrotas - Configurações Integração (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  PoliFrotas - Configurações Integração (1)    ${Caminho_Screenshots}Integrações/Poli Frotas/Configuração
    Fechar com Sim

Integrações > Poli Frotas > Abastecidas > Importar
    ${nome_print}=     Set Variable     Importar
    [Tags]    Frotas   Utilitários   SmokeTest
    Utilitários com tecla   T 
    RPA.Windows.Click       Poli Frotas
    RPA.Windows.Click       Abastecidas
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    PoliFrotas - Importar Abastecidas
    repetidor de teclas     tab      2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  PoliFrotas - Importar Abastecidas    ${Caminho_Screenshots}Integrações/Poli Frotas/Abastecidas/Importar
    RPA.Windows.Click       Confirmar
    Fechar Janela

Integrações > Poli Frotas > Abastecidas > Consultar
    ${nome_print}=     Set Variable     Consultar
    [Tags]    Frotas   Utilitários   SmokeTest
    Utilitários com tecla   T 
    RPA.Windows.Click       Poli Frotas
    RPA.Windows.Click       Abastecidas
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Polifrotas - Consulta de Importação de Abastecidas
    repetidor de teclas     tab      2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Polifrotas - Consulta de Importação de Abastecidas    ${Caminho_Screenshots}Integrações/Poli Frotas/Abastecidas/Consultar
    RPA.Windows.Click       Confirmar
    Fechar Janela

Integrações > Poli Frotas > Abastecidas > Relatório
    ${nome_print}=     Set Variable     Relatório
    [Tags]    Frotas   Utilitários   SmokeTest
    Utilitários com tecla   T 
    RPA.Windows.Click       Poli Frotas
    RPA.Windows.Click       Abastecidas
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Relatório Integração PoliFrotas (1)
    repetidor de teclas     tab      4
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Relatório Integração PoliFrotas (1)    ${Caminho_Screenshots}Integrações/Poli Frotas/Abastecidas/Relatório
    RPA.Windows.Click       Confirmar
    Fechar Janela

Exportação de Arquivos > Salvar o Arquivo de XML NFe Própria
    ${nome_print}=     Set Variable     Salvar o Arquivo de XML NFe Própria
    [Tags]    Frotas   Utilitários   SmokeTest    
    Utilitários             Exportação de Arquivos  
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Salvar arquivo XML NF-e / NFS-e / CT-e / SAT própria(o) (1)
    repetidor de teclas     tab      4
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Salvar arquivo XML NF-e / NFS-e / CT-e / SAT própria(o) (1)    ${Caminho_Screenshots}Integrações/Exportação de Arquivos/Salvar o Arquivo de XML NFe Própria
    RPA.Windows.Click       Confirmar
    Fechar Janela