*** Settings ***
Documentation    Smoke Test: Cadastros
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_fis


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Fiscaç/Cadastros/    

*** Keywords ***

Cadastro
    [Arguments]    ${nome}
    Cadastros
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Terceiros
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Terceiros
    Cadastro                  Terceiros    
    RPA.Windows.Get Text      Cadastro de Terceiros (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Terceiros (1)    ${Caminho_Screenshots}Terceiros
    RPA.Windows.Click         Cancelar (F3)
    Fechar janela
    RPA.Windows.Click         Sim

Produtos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Produtos
    Cadastro                  Produtos    
    RPA.Windows.Get Text      Cadastro de Itens (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Itens (1)    ${Caminho_Screenshots}Produtos
    Fechar janela
    RPA.Windows.Click         Sim
    
Contabilista
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                         Contabilista
    Cadastro                  Contabilista    
    RPA.Windows.Get Text      Cadastro de Contabilistas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Contabilistas (1)    ${Caminho_Screenshots}Contabilista
    Fechar janela
    RPA.Windows.Click         Sim

Países
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Países
    Cadastro                Países   
    RPA.Windows.Get Text    Cadastro de Países (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Países (1)    ${Caminho_Screenshots}Países
    Fechar janela
    RPA.Windows.Click       Sim

Estados
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Estados
    Cadastro                Estados   
    RPA.Windows.Get Text    Cadastro de Estados (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Estados (1)    ${Caminho_Screenshots}Estados
    Fechar janela
    RPA.Windows.Click       Sim

Municípios
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Municípios
    Cadastro                Municípios     
    RPA.Windows.Get Text    Cadastro de Municípios (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
    Fechar janela
    RPA.Windows.Click       Sim

Localidades
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Localidades
    Cadastro                Localidades      
    RPA.Windows.Get Text    Cadastro de Localidades (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Localidades (1)    ${Caminho_Screenshots}Localidades
    Fechar janela
    RPA.Windows.Click       Sim

Regiões
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Regiões
    Cadastro                Regiões     
    RPA.Windows.Get Text    Cadastro de Regiões (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Regiões (1)    ${Caminho_Screenshots}Regiões
    Fechar janela
    RPA.Windows.Click       Sim

Obra de construção civil(CNO)
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Obra de construção civil(CNO)
    Cadastro               	Obra de contrução civil(CNO)    
    RPA.Windows.Get Text    Cadastro de obra de construção civil (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de obra de construção civil (1)    ${Caminho_Screenshots}Obra de construção civil(CNO)
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Mensagem de Notas Fiscais
    [Teardown]              Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           Mensagem de Notas Fiscais
    Cadastro                Fiscal         
    RPA.Desktop.Press Keys  E
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Mensagens de Notas Fiscais (1)    ${Caminho_Screenshots}Fiscal/Mensagem de Notas Fiscais
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Espécies de Documentos
    [Teardown]              Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           Espécies de Documentos
    Cadastro                Fiscal  
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Cadastro de Espécies de Documentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Espécies de Documentos (1)    ${Caminho_Screenshots}Fiscal/Espécies de Documentos
    RPA.Windows.Click       OK
    Fechar janela

Fiscal > Classificação Fiscal
    [Teardown]              Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           Classificação Fiscal
    Cadastro                Fiscal  
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Cadastro de Classificações Fiscais (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Classificações Fiscais (1)    ${Caminho_Screenshots}Fiscal/Classificação Fiscal
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Operações Fiscais
    [Teardown]              Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           Operações Fiscais
    Cadastro                Fiscal  
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Cadastro de Operações Fiscais (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Operações Fiscais (1)    ${Caminho_Screenshots}Fiscal/Operações Fiscais
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Séries
    [Teardown]              Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           Séries
    Cadastro                Fiscal  
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Cadastro de Séries (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Séries (1)    ${Caminho_Screenshots}Fiscal/Séries
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > CFOP's
    [Teardown]              Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           CFOP's
    Cadastro                Fiscal  
    RPA.Desktop.Press Keys  F
    RPA.Windows.Get Text    Cadastro de CFOP's (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de CFOP's (1)    ${Caminho_Screenshots}Fiscal/CFOP's
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > Incidência Contrib Previdenciária
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/           CFOP's
    Cadastro                Fiscal  
    RPA.Desktop.Press Keys  N
    RPA.Windows.Get Text    Cadastro de Incidência Contribuição Previdenciária (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Cadastro de Incidência Contribuição Previdenciária (1)    ${Caminho_Screenshots}Fiscal/CFOP's
    RPA.Windows.Click       Confirmar
    Fechar janela

Fiscal > IPI > Tabela Tributária
    [Teardown]              Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/IPI/           Tabela Tributária
    Cadastro                Fiscal  
    RPA.Windows.Click       IPI
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tabela Tributária do IPI (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tabela Tributária do IPI (1)    ${Caminho_Screenshots}Fiscal/IPI/Tabela Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > IPI > Situação Tributária
    [Teardown]              Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/IPI/           Situação Tributária
    Cadastro                Fiscal  
    RPA.Windows.Click       IPI
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Cadastro de Situação Tributária do IPI (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Situação Tributária do IPI (1)    ${Caminho_Screenshots}Fiscal/IPI/Situação Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > ICMS > Tabela Tributária
    [Teardown]              Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/ICMS/           Tabela Tributária
    Cadastro                Fiscal  
    RPA.Windows.Click       ICMS
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tabelas Tributária (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Tabelas Tributária (1)    ${Caminho_Screenshots}Fiscal/ICMS/Tabela Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > ICMS > Situação Tributária
    [Teardown]              Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/ICMS/           Situação Tributária
    Cadastro                Fiscal  
    RPA.Windows.Click       ICMS
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Cadastro de Situações Tributárias do ICMS (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Situações Tributárias do ICMS (1)    ${Caminho_Screenshots}Fiscal/ICMS/Situação Tributária
    Fechar janela
    RPA.Windows.Click       Sim

Fiscal > ICMS > Tabela Tributária - FCP
    [Teardown]              Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/ICMS/           Tabela Tributária - FCP
    Cadastro                Fiscal  
    RPA.Windows.Click       ICMS
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Cadastro da Tabela Tributária FCP (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro da Tabela Tributária FCP (1)    ${Caminho_Screenshots}Fiscal/ICMS/Tabela Tributária - FCP
    Fechar janela
    RPA.Windows.Click       Sim


Fiscal > ICMS > Configuração Benefício Fiscal
    [Teardown]              Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/ICMS/           Configuração Benefício Fiscal
    Cadastro                Fiscal 
    RPA.Windows.Click       ICMS
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Configuração Benefício Fiscal (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Configuração Benefício Fiscal (1)    ${Caminho_Screenshots}Fiscal/ICMS/Configuração Benefício Fiscal
    Fechar janela 

Fiscal > ICMS > Observações de Lançamento Fiscal
    [Teardown]              Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/ICMS/           Observações de Lançamento Fiscal
    Cadastro                Fiscal 
    RPA.Windows.Click       ICMS
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Cadastro de Observações Fiscais (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Cadastro de Observações Fiscais (1)    ${Caminho_Screenshots}Fiscal/ICMS/Observações de Lançamento Fiscal
    Fechar janela 
    RPA.Windows.Click       Sim

Fiscal > ICMS > Importar Tabelas Padrões
    [Teardown]              Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/ICMS/           Importar Tabelas Padrões
    Cadastro                Fiscal 
    RPA.Windows.Click       ICMS
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text   	Importação de Tabelas Padrões (1)
    RPA.Windows.Click       Abrir
    repetidor de teclas     down      2
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Importação de Tabelas Padrões (1)   ${Caminho_Screenshots}Fiscal/ICMS/Importar Tabelas Padrões
    Fechar janela 

Fiscal > ICMS > Configurar Tabela IPM
    [Teardown]              Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/ICMS/           Configurar Tabela IPM
    Cadastro                Fiscal 
    RPA.Windows.Click       ICMS
    RPA.Desktop.Press Keys  N
    RPA.Windows.Get Text   	Configuração da Tabela IPM (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Configuração da Tabela IPM (1)   ${Caminho_Screenshots}Fiscal/ICMS/Configurar Tabela IPM
    RPA.Windows.Click       Confirmar
    Fechar janela 

Fiscal > ICMS > Configuração de Ajuste do Documento Fiscal
    [Teardown]              Caso aconteça erro                                                ${Caminho_Screenshots}Fiscal/ICMS/           Configuração de Ajuste do Documento Fiscal
    Cadastro                Fiscal 
    RPA.Windows.Click       ICMS
    RPA.Desktop.Press Keys  F
    RPA.Windows.Get Text   	Configuração de Ajuste do Documento Fiscal (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot 	Configuração de Ajuste do Documento Fiscal (1)   ${Caminho_Screenshots}Fiscal/ICMS/Configuração de Ajuste do Documento Fiscal
    RPA.Windows.Click       Confirmar
    Fechar janela 

Parâmetros > Empresas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                         Empresas
    Cadastro                  Parâmetros        
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Estabelecimentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                         Estabelecimentos
    Cadastro                  Parâmetros    
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Usuários
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                         Usuários
    Cadastro                  Parâmetros    
    RPA.Desktop.Press Keys    U
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    BaseDesktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela

Parâmetros > Grupo de Usuários
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                         Grupo de Usuários
    Cadastro                  Parâmetros    
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupo de Usuários
    Fechar janela
    RPA.Windows.Click         Sim

Parâmetros > Configurações da Estação
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                         Configurações da Estação
    Cadastro                  Parâmetros    
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    BaseDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações da Estação
    Fechar janela

Parâmetros > Quadro de Sócios
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Parâmetros/                         Quadro de Sócios
    Cadastro                  Parâmetros    
    RPA.Desktop.Press Keys    Q
    RPA.Windows.Get Text      Quadro de Sócios (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    RPA.Windows.Click         Confirmar
    BaseDesktop.Screenshot    Quadro de Sócios (1)    ${Caminho_Screenshots}Parâmetros/Quadro de Sócios
    RPA.Windows.Click         Fechar

SPED ECF > Parte A e-Lalur
    [Teardown]              Caso aconteça erro           ${Caminho_Screenshots}SPED ECF/                         Parte A e-Lalur
    Cadastro                SPED ECF    
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Lançamentos da Parte A do e-Lalur (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Lançamentos da Parte A do e-Lalur (1)    ${Caminho_Screenshots}SPED ECF/Parte A e-Lalur
    Fechar Janela
    RPA.Windows.Click       Sim

SPED ECF > Parte B e-Lalur
   [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}SPED ECF/                         Parte B e-Lalur
   Cadastro                SPED ECF
   RPA.Desktop.Press Keys  A
   RPA.Windows.Get Text    Identificação da conta na parte B do e-Lalur (1)
   RPA.Windows.Click       Novo
   BaseDesktop.Screenshot  Identificação da conta na parte B do e-Lalur (1)    ${Caminho_Screenshots}SPED ECF/Parte B e-Lalur
   Fechar Janela
   RPA.Windows.Click       Sim

SPED ECF > Parte B e-Lalur (Sem Reflexo na Parte A)
   [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}SPED ECF/                         Parte B e-Lalur (Sem Reflexo na Parte A)
   Cadastro               SPED ECF
   RPA.Desktop.Press Keys  R
   RPA.Windows.Get Text    Lançamentos na conta da parte B do e-Lalur sem reflexo na parte A (1)
   RPA.Windows.Click       Novo
   BaseDesktop.Screenshot  Lançamentos na conta da parte B do e-Lalur sem reflexo na parte A (1)    ${Caminho_Screenshots}SPED ECF/Parte B e-Lalur (Sem Reflexo na Parte A)
   Fechar Janela
   RPA.Windows.Click       Sim

SPED ECF > Parte A e-Lacs
   [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}SPED ECF/                         Parte A e-Lacs
   Cadastro                SPED ECF
   RPA.Desktop.Press Keys  T
   RPA.Windows.Get Text    Lançamentos da Parte A do e-Lacs (1)
   RPA.Windows.Click       Novo
   BaseDesktop.Screenshot  Lançamentos da Parte A do e-Lacs (1)    ${Caminho_Screenshots}SPED ECF/Parte A e-Lacs
   Fechar Janela
   RPA.Windows.Click       Sim

SPED ECF > Parte B e-Lacs
   [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}SPED ECF/                         Parte B e-Lacs
   Cadastro               SPED ECF
   RPA.Desktop.Press Keys  E
   RPA.Windows.Get Text    Identificação da conta na parte B do e-Lacs (1)  
   RPA.Windows.Click       Novo
   BaseDesktop.Screenshot  Identificação da conta na parte B do e-Lacs (1)    ${Caminho_Screenshots}SPED ECF/Parte B e-Lacs
   Fechar Janela
   RPA.Windows.Click       Sim

SPED ECF > Parte B e-Lacs (Sem Reflexo na Parte A)
   [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}SPED ECF/                         Parte B e-Lacs (Sem Reflexo na Parte A)
   Cadastro                SPED ECF
   RPA.Desktop.Press Keys  B
   RPA.Windows.Get Text    Lançamentos na conta da parte B do e-Lacs sem reflexo na parte A (1)
   RPA.Windows.Click       Novo
   BaseDesktop.Screenshot  Lançamentos na conta da parte B do e-Lacs sem reflexo na parte A (1)    ${Caminho_Screenshots}SPED ECF/Parte B e-Lacs (Sem Reflexo na Parte A)
   Fechar Janela
   RPA.Windows.Click       Sim

Encerrar
    Encerrar tudo
    