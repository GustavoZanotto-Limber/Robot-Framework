*** Settings ***
Documentation    Smoke Test: Fiscal
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}



*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/Robot/ScreenShots/SmokeTest/Bilheteria/ERP/Fiscal/Cadastros/    
${nome_print}
${nome_exe}=    cde_win_fis
*** Keywords ***

Cadastro
    [Arguments]    ${nome}
    Cadastros
    RPA.Windows.Click    ${nome}

*** Test Cases ***

*** Test Cases ***

Terceiros
    ${nome_print}=     Set Variable     Terceiros
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                  Terceiros    
    RPA.Windows.Get Text      Cadastro de Terceiros (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Terceiros (1)    ${Caminho_Screenshots}Terceiros
    RPA.Windows.Click         Cancelar (F3)
    Fechar com Sim

Produtos
    ${nome_print}=     Set Variable     Produtos
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                  Produtos    
    RPA.Windows.Get Text      Cadastro de Itens (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Itens (1)    ${Caminho_Screenshots}Produtos
    Fechar com Sim

Contabilista
    ${nome_print}=     Set Variable     Contabilista
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                  Contabilista    
    RPA.Windows.Get Text      Cadastro de Contabilistas (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Contabilistas (1)    ${Caminho_Screenshots}Contabilista
    Fechar com Sim

Países
    ${nome_print}=     Set Variable     Países
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Países   
    RPA.Windows.Get Text    Cadastro de Países (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Países (1)    ${Caminho_Screenshots}Países
    Fechar com Sim

Estados
    ${nome_print}=     Set Variable     Estados
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Estados   
    RPA.Windows.Get Text    Cadastro de Estados (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Estados (1)    ${Caminho_Screenshots}Estados
    Fechar com Sim

Municípios
    ${nome_print}=     Set Variable     Municípios
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Municípios     
    RPA.Windows.Get Text    Cadastro de Municípios (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Municípios (1)    ${Caminho_Screenshots}Municípios
    Fechar com Sim

Localidades
    ${nome_print}=     Set Variable     Localidades
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Localidades      
    RPA.Windows.Get Text    Cadastro de Localidades (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Localidades (1)    ${Caminho_Screenshots}Localidades
    Fechar com Sim

Regiões
    ${nome_print}=     Set Variable     Regiões
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Regiões     
    RPA.Windows.Get Text    Cadastro de Regiões (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Regiões (1)    ${Caminho_Screenshots}Regiões
    Fechar com Sim

Obra de construção civil(CNO)
    ${nome_print}=     Set Variable     Obra de construção civil(CNO)
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro               	Obra de contrução civil(CNO)    
    RPA.Windows.Get Text    Cadastro de obra de construção civil (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de obra de construção civil (1)    ${Caminho_Screenshots}Obra de construção civil(CNO)
    Fechar com Sim

Mensagem de Notas Fiscais
    ${nome_print}=     Set Variable     Mensagem de Notas Fiscais
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Fiscal         
    RPA.Desktop.Press Keys  E
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Mensagens de Notas Fiscais (1)    ${Caminho_Screenshots}Fiscal/Mensagem de Notas Fiscais
    Fechar com Sim

Fiscal > Espécies de Documentos
    ${nome_print}=     Set Variable     Espécies de Documentos
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Fiscal  
    RPA.Desktop.Press Keys  D
    RPA.Windows.Get Text    Cadastro de Espécies de Documentos (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Espécies de Documentos (1)    ${Caminho_Screenshots}Fiscal/Espécies de Documentos
    RPA.Windows.Click       OK
    Fechar janela

Fiscal > Classificação Fiscal
    ${nome_print}=     Set Variable     Classificação Fiscal
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Fiscal  
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Cadastro de Classificações Fiscais (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Classificações Fiscais (1)    ${Caminho_Screenshots}Fiscal/Classificação Fiscal
    Fechar com Sim

Fiscal > Operações Fiscais
    ${nome_print}=     Set Variable     Operações Fiscais
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Fiscal  
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Cadastro de Operações Fiscais (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Operações Fiscais (1)    ${Caminho_Screenshots}Fiscal/Operações Fiscais
    Fechar com Sim

Fiscal > Séries
    ${nome_print}=     Set Variable     Séries
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Fiscal  
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Cadastro de Séries (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Séries (1)    ${Caminho_Screenshots}Fiscal/Séries
    Fechar com Sim

Fiscal > CFOP's
    ${nome_print}=     Set Variable     CFOP's
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Fiscal  
    RPA.Desktop.Press Keys  F
    RPA.Windows.Get Text    Cadastro de CFOP's (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de CFOP's (1)    ${Caminho_Screenshots}Fiscal/CFOP's
    Fechar com Sim

Fiscal > Incidência Contrib Previdenciária
    ${nome_print}=     Set Variable     Incidência Contrib Previdenciária
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Fiscal  
    RPA.Desktop.Press Keys  N
    RPA.Windows.Get Text    Cadastro de Incidência Contribuição Previdenciária (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Cadastro de Incidência Contribuição Previdenciária (1)    ${Caminho_Screenshots}Fiscal/Incidência Contrib Previdenciária
    RPA.Windows.Click       Confirmar
    Fechar janela

Fiscal > IPI > Tabela Tributária IPI
    ${nome_print}=     Set Variable     Tabela Tributária IPI
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Fiscal  
    RPA.Windows.Click       IPI
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tabela Tributária do IPI (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Tabela Tributária do IPI (1)    ${Caminho_Screenshots}Fiscal/IPI/Tabela Tributária
    Fechar com Sim

Fiscal > IPI > Situação Tributária IPI
    ${nome_print}=     Set Variable     Situação Tributária IPI
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Fiscal  
    RPA.Windows.Click       IPI
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Cadastro de Situação Tributária do IPI (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Situação Tributária do IPI (1)    ${Caminho_Screenshots}Fiscal/IPI/Situação Tributária
    Fechar com Sim

Fiscal > ICMS > Tabela Tributária ICMS
    ${nome_print}=     Set Variable     Tabela Tributária ICMS
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Fiscal  
    RPA.Windows.Click       ICMS
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Cadastro de Tabelas Tributária (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Tabelas Tributária (1)    ${Caminho_Screenshots}Fiscal/ICMS/Tabela Tributária
    Fechar com Sim

Fiscal > ICMS > Situação Tributária ICMS
    ${nome_print}=     Set Variable     Situação Tributária ICMS
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Fiscal  
    RPA.Windows.Click       ICMS
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Cadastro de Situações Tributárias do ICMS (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Situações Tributárias do ICMS (1)    ${Caminho_Screenshots}Fiscal/ICMS/Situação Tributária
    Fechar com Sim

Fiscal > ICMS > Tabela Tributária - FCP
    ${nome_print}=     Set Variable     Tabela Tributária - FCP
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Fiscal  
    RPA.Windows.Click       ICMS
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Cadastro da Tabela Tributária FCP (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro da Tabela Tributária FCP (1)    ${Caminho_Screenshots}Fiscal/ICMS/Tabela Tributária - FCP
    Fechar com Sim

Fiscal > ICMS > Configuração Benefício Fiscal
    ${nome_print}=     Set Variable     Configuração Benefício Fiscal
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Fiscal 
    RPA.Windows.Click       ICMS
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Configuração Benefício Fiscal (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Configuração Benefício Fiscal (1)    ${Caminho_Screenshots}Fiscal/ICMS/Configuração Benefício Fiscal
    Fechar janela 

Fiscal > ICMS > Observações de Lançamento Fiscal
    ${nome_print}=     Set Variable     Observações de Lançamento Fiscal
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Fiscal 
    RPA.Windows.Click       ICMS
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Cadastro de Observações Fiscais (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Cadastro de Observações Fiscais (1)    ${Caminho_Screenshots}Fiscal/ICMS/Observações de Lançamento Fiscal
    Fechar janela 
    RPA.Windows.Click       Sim

Fiscal > ICMS > Importar Tabelas Padrões
    ${nome_print}=     Set Variable     Importar Tabelas Padrões
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest    
    Cadastro                Fiscal 
    RPA.Windows.Click       ICMS
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text   	Importação de Tabelas Padrões (1)
    RPA.Windows.Click       Abrir
    repetidor de teclas     down      2
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot 	Importação de Tabelas Padrões (1)   ${Caminho_Screenshots}Fiscal/ICMS/Importar Tabelas Padrões
    Fechar janela 

Fiscal > ICMS > Configurar Tabela IPM
    ${nome_print}=     Set Variable     Configurar Tabela IPM
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest    
    Cadastro                Fiscal 
    RPA.Windows.Click       ICMS
    RPA.Desktop.Press Keys  N
    RPA.Windows.Get Text   	Configuração da Tabela IPM (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot 	Configuração da Tabela IPM (1)   ${Caminho_Screenshots}Fiscal/ICMS/Configurar Tabela IPM
    RPA.Windows.Click       Confirmar
    Fechar janela 

Fiscal > ICMS > Configuração de Ajuste do Documento Fiscal
    ${nome_print}=     Set Variable     Configuração de Ajuste do Documento Fiscal
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                Fiscal 
    RPA.Windows.Click       ICMS
    RPA.Desktop.Press Keys  F
    RPA.Windows.Get Text   	Configuração de Ajuste do Documento Fiscal (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot 	Configuração de Ajuste do Documento Fiscal (1)   ${Caminho_Screenshots}Fiscal/ICMS/Configuração de Ajuste do Documento Fiscal
    RPA.Windows.Click       Confirmar
    Fechar janela 

Fiscal > PIS > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         PIS
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do PIS (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Tabelas Tributárias do PIS (1)    ${Caminho_Screenshots}Fiscal/PIS/Tabela Tributária
    Fechar com Sim

Fiscal > PIS > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         PIS
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária PIS (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Situação Tributária PIS (1)    ${Caminho_Screenshots}Fiscal/PIS/Situação Tributária
    Fechar com Sim

Fiscal > PIS > Detalhamento de Receitas
    ${nome_print}=     Set Variable     Detalhamento de Receitas
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         PIS
    RPA.Desktop.Press Keys    D
    RPA.Windows.Get Text      Cadastro de Receitas PIS e COFINS (1)
    repetidor de teclas       tab      4
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Cadastro de Receitas PIS e COFINS (1)    ${Caminho_Screenshots}Fiscal/PIS/Detalhamento de Receitas
    RPA.Windows.Click         Confirmar
    Fechar com Sim

Fiscal > PIS > EFD Contribuições - Config. Receitas
    ${nome_print}=     Set Variable     EFD Contribuições - Config. Receitas
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         PIS
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      EFD Contribuições - Configuração de Receitas (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    EFD Contribuições - Configuração de Receitas (1)    ${Caminho_Screenshots}Fiscal/PIS/EFD Contribuições - Config. Receitas
    RPA.Windows.Click         Confirmar
    Fechar com Sim

Fiscal > COFINS > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         COFINS
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do COFINS (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Tabelas Tributárias do COFINS (1)    ${Caminho_Screenshots}Fiscal/COFINS/Tabela Tributária
    Fechar com Sim

Fiscal > COFINS > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         COFINS
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária COFINS (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Situação Tributária COFINS (1)    ${Caminho_Screenshots}Fiscal/COFINS/Situação Tributária
    Fechar com Sim

Fiscal > COFINS > Detalhamento de Receitas
    ${nome_print}=     Set Variable     Detalhamento de Receitas
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest       
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         COFINS
    RPA.Desktop.Press Keys    D
    RPA.Windows.Get Text      Cadastro de Receitas PIS e COFINS (1)
    repetidor de teclas       tab      4
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Cadastro de Receitas PIS e COFINS (1)    ${Caminho_Screenshots}Fiscal/PIS/Detalhamento de Receitas
    RPA.Windows.Click         Confirmar
    Fechar com Sim

Fiscal > COFINS > EFD Contribuições - Config. Receitas
    ${nome_print}=     Set Variable     EFD Contribuições - Config. Receitas
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         COFINS
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      EFD Contribuições - Configuração de Receitas (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    EFD Contribuições - Configuração de Receitas (1)    ${Caminho_Screenshots}Fiscal/PIS/EFD Contribuições - Config. Receitas
    RPA.Windows.Click         Confirmar
    Fechar com Sim

Fiscal > CSLL > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         CSLL
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do CSLL (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Tabelas Tributárias do CSLL (1)    ${Caminho_Screenshots}Fiscal/CSLL/Tabela Tributária
    Fechar com Sim

Fiscal > CSLL > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         CSLL
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária CSLL (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Situação Tributária CSLL (1)    ${Caminho_Screenshots}Fiscal/CSLL/Situação Tributária
    Fechar com Sim

Fiscal > IRPJ > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         IRPJ
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabelas Tributárias do IRPJ (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Tabelas Tributárias do IRPJ (1)    ${Caminho_Screenshots}Fiscal/IRPJ/Tabela Tributária
    Fechar com Sim

Fiscal > IRPJ > Situação Tributária
    ${nome_print}=     Set Variable     Situação Tributária
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         IRPJ
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Situação Tributária IRPJ (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Situação Tributária IRPJ (1)    ${Caminho_Screenshots}Fiscal/IRPJ/Situação Tributária
    Fechar com Sim

Fiscal > ISSQN > Tabela Tributária
    ${nome_print}=     Set Variable     Tabela Tributária
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         ISSQN
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de Tabela Tributária ISSQN (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Tabela Tributária ISSQN (1)    ${Caminho_Screenshots}Fiscal/ISSQN/Tabela Tributária
    Fechar com Sim

Fiscal > Tabela de Alíquota Nacional de Impostos por NCM
    ${nome_print}=     Set Variable     Tabela de Alíquota Nacional de Impostos por NCM
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Tabela de Alíquota Nacional de Impostos de Produtos/Serviços - Lei n° 12.741, de 8 de dezembro de 2012 (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot    Tabela de Alíquota Nacional de Impostos de Produtos/Serviços - Lei n° 12.741, de 8 de dezembro de 2012 (1)    ${Caminho_Screenshots}Fiscal/Tabela de Alíquota Nacional de Impostos por NCM
    Fechar janela

Fiscal > Impostos Retidos > INSS > Cadastro de Serviços
    ${nome_print}=     Set Variable     Cadastro de Serviços
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         INSS
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Serviços para Retenção de INSSRF (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Serviços para Retenção de INSSRF (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/INSS/Cadastro de Serviços
    Fechar com Sim

Fiscal > Impostos Retidos > IR > Cadastro de Serviço
    ${nome_print}=     Set Variable     Cadastro de Serviço
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         IR
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Serviços para Retenção de IRRF (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Serviços para Retenção de IRRF (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/IR/Cadastro de Serviço
    Fechar com Sim

Fiscal > Impostos Retidos > CSRF > Cadastro de Serviços
    ${nome_print}=     Set Variable     Cadastro de Serviços
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Windows.Click         Impostos Retidos
    RPA.Windows.Click         CSRF
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Serviços para Retenção de PIS/COFINS/CSLL (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Serviços para Retenção de PIS/COFINS/CSLL (1)    ${Caminho_Screenshots}Fiscal/Impostos Retidos/CSRF/Cadastro de Serviços
    Fechar com Sim

Fiscal > Classificações de Serviços Prestado - REINF
    ${nome_print}=     Set Variable     Classificações de Serviços Prestado - REINF
    [Tags]   SmokeERP    Fiscal    Cadastros   SmokeTest    
    Cadastros
    RPA.Windows.Click         Fiscal
    RPA.Desktop.Press Keys    V
    RPA.Windows.Get Text      Classificações de Serviços Prestados - REINF (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Classificações de Serviços Prestados - REINF (1)    ${Caminho_Screenshots}Fiscal/Classificações de Serviços Prestado - REINF
    RPA.Windows.Click         Confirmar
    Fechar Janela

Parâmetros > Empresas
    ${nome_print}=     Set Variable     Empresas
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                  Parâmetros        
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro de Empresas (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Empresas (1)    ${Caminho_Screenshots}Parâmetros/Empresas
    Fechar com Sim

Parâmetros > Estabelecimentos
    ${nome_print}=     Set Variable     Estabelecimentos
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                  Parâmetros    
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Cadastro de Estabelecimentos (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Cadastro de Estabelecimentos (1)    ${Caminho_Screenshots}Parâmetros/Estabelecimentos
    RPA.Windows.Click         Confirmar
    Fechar janela

Parâmetros > Usuários
    ${nome_print}=     Set Variable     Usuários
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                  Parâmetros    
    RPA.Desktop.Press Keys    U
    RPA.Windows.Get Text      Cadastro de Usuários (1)
    BaseKeywordsDesktop.Screenshot    Cadastro de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Usuários
    Fechar janela

Parâmetros > Grupo de Usuários
    ${nome_print}=     Set Variable     Grupo de Usuários
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                  Parâmetros    
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Cadastro de Grupos de Usuários (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Grupos de Usuários (1)    ${Caminho_Screenshots}Parâmetros/Grupo de Usuários
    Fechar com Sim

Parâmetros > Configurações da Estação
    ${nome_print}=     Set Variable     Configurações da Estação
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                  Parâmetros    
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configurações da Estação (1)
    RPA.Windows.Click         CDE-WIN-FIN
    BaseKeywordsDesktop.Screenshot    Configurações da Estação (1)    ${Caminho_Screenshots}Parâmetros/Configurações da Estação
    Fechar janela

Parâmetros > Quadro de Sócios
    ${nome_print}=     Set Variable     Quadro de Sócios
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                  Parâmetros    
    RPA.Desktop.Press Keys    Q
    RPA.Windows.Get Text      Quadro de Sócios (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    RPA.Windows.Click         Confirmar
    BaseKeywordsDesktop.Screenshot    Quadro de Sócios (1)    ${Caminho_Screenshots}Parâmetros/Quadro de Sócios
    RPA.Windows.Click         Fechar

SPED ECF > Parte A e-Lalur
    ${nome_print}=     Set Variable     Parte A e-Lalur
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                SPED ECF    
    RPA.Desktop.Press Keys  P
    RPA.Windows.Get Text    Lançamentos da Parte A do e-Lalur (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Lançamentos da Parte A do e-Lalur (1)    ${Caminho_Screenshots}SPED ECF/Parte A e-Lalur
    Fechar com Sim

SPED ECF > Parte B e-Lalur
    ${nome_print}=     Set Variable     Parte B e-Lalur
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                SPED ECF
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Identificação da conta na parte B do e-Lalur (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Identificação da conta na parte B do e-Lalur (1)    ${Caminho_Screenshots}SPED ECF/Parte B e-Lalur
    Fechar Janela
    RPA.Windows.Click       Sim

SPED ECF > Parte B e-Lalur (Sem Reflexo na Parte A)
    ${nome_print}=     Set Variable     Parte B e-Lalur (Sem Reflexo na Parte A)
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro               SPED ECF
    RPA.Desktop.Press Keys  R
    RPA.Windows.Get Text    Lançamentos na conta da parte B do e-Lalur sem reflexo na parte A (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Lançamentos na conta da parte B do e-Lalur sem reflexo na parte A (1)    ${Caminho_Screenshots}SPED ECF/Parte B e-Lalur (Sem Reflexo na Parte A)
    Fechar Janela
    RPA.Windows.Click       Sim

SPED ECF > Parte A e-Lacs
    ${nome_print}=     Set Variable     Parte A e-Lacs
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                SPED ECF
    RPA.Desktop.Press Keys  T
    RPA.Windows.Get Text    Lançamentos da Parte A do e-Lacs (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Lançamentos da Parte A do e-Lacs (1)    ${Caminho_Screenshots}SPED ECF/Parte A e-Lacs
    Fechar Janela
    RPA.Windows.Click       Sim

SPED ECF > Parte B e-Lacs
    ${nome_print}=     Set Variable     Parte B e-Lacs
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro               SPED ECF
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Identificação da conta na parte B do e-Lacs (1)  
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Identificação da conta na parte B do e-Lacs (1)    ${Caminho_Screenshots}SPED ECF/Parte B e-Lacs
    Fechar Janela
    RPA.Windows.Click       Sim

SPED ECF > Parte B e-Lacs (Sem Reflexo na Parte A)
    ${nome_print}=     Set Variable     Parte B e-Lacs (Sem Reflexo na Parte A)
    [Tags]   SmokeERP   Fiscal    Cadastros   SmokeTest
    Cadastro                SPED ECF
    RPA.Desktop.Press Keys  B
    RPA.Windows.Get Text    Lançamentos na conta da parte B do e-Lacs sem reflexo na parte A (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Lançamentos na conta da parte B do e-Lacs sem reflexo na parte A (1)    ${Caminho_Screenshots}SPED ECF/Parte B e-Lacs (Sem Reflexo na Parte A)
    Fechar Janela
    RPA.Windows.Click       Sim

    
    