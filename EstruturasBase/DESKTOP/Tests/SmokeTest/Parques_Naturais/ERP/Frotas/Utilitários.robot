*** Settings ***
Documentation    Smoke Test: Frotas
Resource          C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_frotas

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Frotas/Utilitários/    

*** Keywords ***

Utilitários
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    11
    RPA.Windows.Click    ${nome}

Utilitários com tecla
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    11
    RPA.Desktop.Press Keys   ${nome}

*** Test Cases ***

Favoritos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Favoritos
    Utilitários             Favoritos       
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar

Papel de Parede
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                         Papel de Parede
    Utilitários             Papel de Parede     
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Configurar Menu Pincipal
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Configurar Barra de Atalhos
    Utilitários             Configurar Menu Principal       
    RPA.Windows.Get Text    Configurador de Menus (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configurador de Menus (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Configurar Barra de Atalhos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Configurar Barra de Atalhos
    Utilitários             Configurar Barra de Atalhos       
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar com Sim

Estilo do Menu Principal
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Estilo do Menu Principal
    Utilitários             Estilo do Menu Principal       
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    RPA.Windows.Click       Standard
    BaseDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Controle de Acessos
    Utilitários             Controle de Acessos   
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    RPA.Windows.Click       Confirmar
    BaseDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    RPA.Windows.Click       OK
    Fechar janela

Configuração de Liberação
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Configuração de Liberação
    Utilitários             Configuração de Liberação   
    RPA.Windows.Get Text    Configurações de Liberação (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configurações de Liberação (1)    ${Caminho_Screenshots}Configuração de Liberação
    RPA.Windows.Click       Confirmar
    Fechar com Sim


Relatórios Personalizados > Cadastro de Categorias
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Relatórios Personalizados/                             Cadastro de Categorias
    Utilitários             Relatórios Personalizados      
    RPA.Desktop.Press Keys  c
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Categorias
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Relatórios Personalizados > Cadastro de Relatórios
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Relatórios Personalizados/                               Cadastro de Relatórios
    Utilitários             Relatórios Personalizados      
    RPA.Desktop.Press Keys  a
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    BaseDesktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Criar Usuario de Log
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Criar Usuario de Log
    Utilitários             Criar Usuário de Log 
    RPA.Windows.Get Text    Cadastro Usuario de Log (1)
    BaseDesktop.Screenshot  Cadastro Usuario de Log (1)    ${Caminho_Screenshots}Criar Usuario de Log
    Fechar janela

Verifica transações abertas
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Verifica transações abertas
    Utilitários             Verifica transações abertas  
    RPA.Windows.Get Text    Verifica transações abertas (1)
    RPA.Windows.Click      Carregar
    BaseDesktop.Screenshot  Verifica transações abertas (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Configurador de Impressões > Ordem se Interna
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Configurador de Impressões/                               Ordem se Serviço Interna
    Utilitários             Configurador de Impressões   
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Configurador de Impressões - Ordem de Serviço Interna (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Impressões - Ordem de Serviço Interna (1)    ${Caminho_Screenshots}Configurador de Impressões/Ordem se Serviço Interna
    Fechar com Sim

Processos Personalizados
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Processos Personalizados
    Utilitários               Processos Personalizados        
    RPA.Windows.Get Text      Processos Personalizados (1)
    RPA.Windows.Click         Cadastrar Novo Processo
    BaseDesktop.Screenshot    Processos Personalizados (1)    ${Caminho_Screenshots}Processos Personalizados
    RPA.Windows.Click         Fechar
    Fechar janela

Leiaute Carta Frete
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Leiaute Carta Frete
    Utilitários               Leiaute Carta Frete    
    Sleep                     3s
    RPA.Windows.Get Text      FastReport - Untitled.fr3
    BaseDesktop.Screenshot    FastReport - Untitled.fr3    ${Caminho_Screenshots}Leiaute Carta Frete
    RPA.Windows.Click         Fechar
    RPA.Windows.Click         Sim

Integrações > Importação de CT-e/MDF-e
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Integrações/                    Importação de CT-e_MDF-e            
    Utilitários com tecla   T 
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Importação de XML de Conhecimento de Transporte Eletrônico (1) 
    RPA.Windows.Click       Atualizar
    BaseDesktop.Screenshot  Importação de XML de Conhecimento de Transporte Eletrônico (1)                              ${Caminho_Screenshots}Integrações/Importação de CT-e_MDF-e
    RPA.Windows.Click       OK
    Fechar Janela

Integrações > Vincular Valores MDF-e
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Integrações/                    Vincular Valores MDF-e          
    Utilitários com tecla   T 
    RPA.Desktop.Press Keys  V
    RPA.Windows.Get Text    Vincular Valores Viagens - MDFe (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Vincular Valores Viagens - MDFe (1)                              ${Caminho_Screenshots}Integrações/Vincular Valores MDF-e
    Fechar com Sim

Integrações > Sênior > Configurações
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Integrações/Sênior/            Configurações
    Utilitários com tecla   T 
    RPA.Windows.Click       Sênior
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text   	Cadastro Configuração Integração Sênior (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot 	Cadastro Configuração Integração Sênior (1)                              ${Caminho_Screenshots}Integrações/Sênior/Configurações
    Fechar com Sim

Integrações > Sênior > RPAs > Envio
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Integrações/Sênior/RPAs/             Envio
    Utilitários com tecla   T 
    RPA.Windows.Click       Sênior
    RPA.Windows.Click       RPAs
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text   	Sênior - Envio RPAs
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Sênior - Envio RPAs                          ${Caminho_Screenshots}Integrações/Sênior/RPAs/Envio
    RPA.Windows.Click       Confirmar
    Fechar Janela

Integrações > Sênior > RPAs > Exclusão
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Integrações/Sênior/RPAs/             Exclusão
    Utilitários com tecla   T 
    RPA.Windows.Click       Sênior
    RPA.Windows.Click       RPAs
    RPA.Desktop.Press Keys  X
    RPA.Windows.Get Text   	Sênior - Exclusão RPAs
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Sênior - Exclusão RPAs                          ${Caminho_Screenshots}Integrações/Sênior/RPAs/Exclusão
    RPA.Windows.Click       Confirmar
    Fechar Janela

Integrações > Sênior > RPAs > Consulta
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Integrações/Sênior/RPAs/             Consulta
    Utilitários com tecla   T 
    RPA.Windows.Click       Sênior
    RPA.Windows.Click       RPAs
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text   	Sênior - Consulta de Envio RPAs
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Sênior - Consulta de Envio RPAs                          ${Caminho_Screenshots}Integrações/Sênior/RPAs/Consulta
    RPA.Windows.Click       Confirmar
    Fechar Janela

Integrações > Poli Frotas > Configuração
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Integrações/Poli Frotas/             Configuração
    Utilitários com tecla   T 
    RPA.Windows.Click       Poli Frotas
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text   	PoliFrotas - Configurações Integração (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot 	PoliFrotas - Configurações Integração (1)                        ${Caminho_Screenshots}Integrações/Poli Frotas/Configuração
    Fechar com Sim

Integrações > Poli Frotas > Abastecidas > Importar
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Integrações/Poli Frotas/Abastecidas             Importar
    Utilitários com tecla   T 
    RPA.Windows.Click       Poli Frotas
    RPA.Windows.Click       Abastecidas
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text   	PoliFrotas - Importar Abastecidas
    repetidor de teclas     tab      2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	PoliFrotas - Importar Abastecidas                        ${Caminho_Screenshots}Integrações/Poli Frotas/Abastecidas/Importar
    RPA.Windows.Click       Confirmar
    Fechar Janela

Integrações > Poli Frotas > Abastecidas > Consultar
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Integrações/Poli Frotas/Abastecidas             Consultar
    Utilitários com tecla   T 
    RPA.Windows.Click       Poli Frotas
    RPA.Windows.Click       Abastecidas
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text   	Polifrotas - Consulta de Importação de Abastecidas
    repetidor de teclas     tab      2
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Polifrotas - Consulta de Importação de Abastecidas                      ${Caminho_Screenshots}Integrações/Poli Frotas/Abastecidas/Consultar
    RPA.Windows.Click       Confirmar
    Fechar Janela

Integrações > Poli Frotas > Abastecidas > Relatório
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Integrações/Poli Frotas/Abastecidas             Relatório
    Utilitários com tecla   T 
    RPA.Windows.Click       Poli Frotas
    RPA.Windows.Click       Abastecidas
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text   	Relatório Integração PoliFrotas (1)
    repetidor de teclas     tab      4
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Relatório Integração PoliFrotas (1)                        ${Caminho_Screenshots}Integrações/Poli Frotas/Abastecidas/Relatório
    RPA.Windows.Click       Confirmar
    Fechar Janela

Integrações > Exportação de Arquivos > Salvar o Arquivo de XML NFe Própria
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Integrações/Exportação de Arquivos/                        	Salvar o Arquivo de XML NFe Própria      
    Utilitários             Exportação de Arquivos  
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text   	Salvar arquivo XML NF-e / NFS-e / CT-e / SAT própria(o) (1)
    repetidor de teclas     tab      3
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Salvar arquivo XML NF-e / NFS-e / CT-e / SAT própria(o) (1)                        ${Caminho_Screenshots}Integrações\Exportação de Arquivos/Salvar o Arquivo de XML NFe Própria
    RPA.Windows.Click       Confirmar
    Fechar Janela


    