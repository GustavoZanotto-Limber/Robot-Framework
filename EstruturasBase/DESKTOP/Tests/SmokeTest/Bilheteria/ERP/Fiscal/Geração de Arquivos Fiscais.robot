*** Settings ***
Documentation    Smoke Test: Fiscal
Resource         ../../../../../Resources/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}



*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Fiscal/Geração de Arquivos Fiscais/    
${nome_print}
${nome_exe}=    cde_win_fis
*** Keywords ***

Geração de Arquivos Fiscais
    [Arguments]    ${nome}
    Cadastros
    Repetidor de teclas    right    3
    RPA.Windows.Click    ${nome}

*** Test Cases ***

SPED Fiscal (ICMS/IPI)
    ${nome_print}=     Set Variable     SPED Fiscal (ICMS/IPI)
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                SPED Fiscal (ICMS/IPI)
    RPA.Windows.Get Text      SPED Fiscal (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    SPED Fiscal (1)    ${Caminho_Screenshots}SPED Fiscal (ICMS_IPI)
    RPA.Windows.Click         Confirmar
    Fechar janela

SPED Contribuições (PIS/COFINS)
    ${nome_print}=     Set Variable     SPED Contribuições (PIS/COFINS)
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest    
    Geração de Arquivos Fiscais                SPED Contribuições (PIS/COFINS)
    RPA.Windows.Get Text      SPED Contribuições (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    RPA.Windows.Click         OK
    BaseKeywordsDesktop.Screenshot    SPED Contribuições (1)    ${Caminho_Screenshots}SPED Contribuições (PIS_COFINS)
    Fechar janela
    RPA.Windows.Click         OK

SPED Contabil (ECD)
    ${nome_print}=     Set Variable     SPED Contabil (ECD)
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest    
    Geração de Arquivos Fiscais                SPED Contábil (ECD)
    RPA.Windows.Get Text      SPED Contábil (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    SPED Contábil (1)    ${Caminho_Screenshots}SPED Contabil (ECD)
    RPA.Windows.Click         Confirmar
    Fechar janela

SPED ECF
    ${nome_print}=     Set Variable     SPED ECF
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                SPED ECF
    RPA.Windows.Get Text      Sped ECF (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Sped ECF (1)    ${Caminho_Screenshots}SPED ECF
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         Fechar

SPED REINF > Geração
    ${nome_print}=     Set Variable     Geração
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                SPED REINF
    RPA.Desktop.Press Keys    G  
    RPA.Windows.Get Text      Escrituração fiscal digital de retenções e outras informações fiscais (EFD-REINF) (1)
    Repetidor de 2 teclas     Shift    tab    2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Escrituração fiscal digital de retenções e outras informações fiscais (EFD-REINF) (1)    ${Caminho_Screenshots}SPED REINF/Geração
    RPA.Windows.Click         Confirmar
    Fechar janela

SPED REINF > Relatório
    ${nome_print}=     Set Variable     Relatório
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                SPED REINF
    RPA.Desktop.Press Keys    R  
    RPA.Windows.Get Text      Relatório - EFD REINF (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Relatório - EFD REINF (1)    ${Caminho_Screenshots}SPED REINF/Relatório
    RPA.Windows.Click         Confirmar
    Fechar janela

GIA-PR
    ${nome_print}=     Set Variable     GIA-PR    
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest    
    Geração de Arquivos Fiscais                GIA-PR
    RPA.Windows.Get Text      Guia de Informação e Apuração do ICMS - Paraná (GIA-PR) (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Guia de Informação e Apuração do ICMS - Paraná (GIA-PR) (1)    ${Caminho_Screenshots}GIA-PR
    RPA.Windows.Click         Confirmar
    Fechar com Sim
    RPA.Windows.Click         OK

GIA-MS
    ${nome_print}=     Set Variable     GIA-MS
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest    
    Geração de Arquivos Fiscais                GIA-MS
    RPA.Windows.Get Text      Guia de Informação e Apuração do ICMS - Mato Grosso do Sul (GIA-MS) (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Guia de Informação e Apuração do ICMS - Mato Grosso do Sul (GIA-MS) (1)    ${Caminho_Screenshots}GIA-MS
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         Fechar

GIA-RJ
    ${nome_print}=     Set Variable     GIA-RJ
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                GIA-RJ
    RPA.Windows.Get Text      Guia de informação e apuração do ICMS - Rio de Janeiro (GIA-RJ) (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Guia de informação e apuração do ICMS - Rio de Janeiro (GIA-RJ) (1)    ${Caminho_Screenshots}GIA-RJ
    RPA.Windows.Click         Confirmar
    Fechar janela

GIA-SP
    ${nome_print}=     Set Variable     GIA-SP
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                GIA-SP
    RPA.Windows.Get Text      Guia de Informação e Apuração do ICMS - São Paulo (GIA-SP) (1)
    Repetidor de 2 teclas     Shift    tab    2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Guia de Informação e Apuração do ICMS - São Paulo (GIA-SP) (1)    ${Caminho_Screenshots}GIA-SP
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

Registro Magnético (SINTEGRA)
    ${nome_print}=     Set Variable     Registro Magnético (SINTEGRA)
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Registro Magnético (SINTEGRA)
    RPA.Windows.Get Text      Registro Magnético (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Registro Magnético (1)    ${Caminho_Screenshots}Registro Magnético (SINTEGRA)
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

Registro Magnético SISCRED - PR
    ${nome_print}=     Set Variable     Registro Magnético SISCRED - PR
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest    
    Geração de Arquivos Fiscais                Arquivo Magnético SISCRED - PR
    RPA.Windows.Get Text      Arquivo Magnético SISCRED - PR (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Arquivo Magnético SISCRED - PR (1)    ${Caminho_Screenshots}Registro Magnético SISCRED - PR
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar com OK

SEF-PE
    ${nome_print}=     Set Variable     SEF-PE
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest    
    Geração de Arquivos Fiscais                SEF-PE
    RPA.Windows.Get Text      Geração do Arquivo SEF 2012 - Pernambuco (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Geração do Arquivo SEF 2012 - Pernambuco (1)    ${Caminho_Screenshots}SEF-PE
    RPA.Windows.Click         Confirmar 
    Fechar janela

DIME-SC > Geração
    ${nome_print}=     Set Variable     Geração
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest    
    Geração de Arquivos Fiscais                DIME-SC
    RPA.Desktop.Press Keys    G  
    RPA.Windows.Get Text      Declaração do ICMS e do Movimento Econômico (DIME) (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Declaração do ICMS e do Movimento Econômico (DIME) (1)    ${Caminho_Screenshots}DIME-SC/Geração
    RPA.Windows.Click         Confirmar 
    Fechar com Sim 
    RPA.Windows.Click         OK

DIME-SC > Montagem
    ${nome_print}=     Set Variable     Montagem
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                DIME-SC
    RPA.Desktop.Press Keys    M  
    RPA.Windows.Get Text      Montagem DIME SC (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Montagem DIME SC (1)    ${Caminho_Screenshots}DIME-SC/Montagem
    RPA.Windows.Click         OK
    Fechar com Sim

DFC GI/ICMS - PR
    ${nome_print}=     Set Variable     DFC GI/ICMS - PR
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                DFC GI/ICMS - PR
    RPA.Windows.Get Text      DFC e GI/ICMS (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    DFC e GI/ICMS (1)    ${Caminho_Screenshots}DFC GI_ICMS - PR
    RPA.Windows.Click         Confirmar
    Fechar com Sim

DEISS
    ${nome_print}=     Set Variable     DEISS
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest    
    Geração de Arquivos Fiscais                DEISS
    RPA.Windows.Get Text      Declaração Eletrônica de Imposto Sobre Serviço (DEISS) (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Declaração Eletrônica de Imposto Sobre Serviço (DEISS) (1)    ${Caminho_Screenshots}DEISS
    RPA.Windows.Click         Confirmar
    Fechar com Sim
    RPA.Windows.Click         OK

SISCOSERV
    ${nome_print}=     Set Variable     SISCOSERV
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest        
    Geração de Arquivos Fiscais                SISCOSERV
    RPA.Windows.Get Text      Geração de Arquivos SISCOSERV (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    RPA.Windows.Click         Confirmar
    BaseKeywordsDesktop.Screenshot    Geração de Arquivos SISCOSERV (1)    ${Caminho_Screenshots}SISCOSERV
    RPA.Windows.Click         Fechar

Outros Arquivos > Ato Declaratório Executivo Cofis n°25, de 7 de junho de 2010
    ${nome_print}=     Set Variable     Ato Declaratório Executivo Cofis n°25, de 7 de junho de 2010
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Outros Arquivos
    RPA.Desktop.Press Keys    A  
    RPA.Windows.Get Text      Geração do Arquivo Digital solicitados por Auditor Fiscal da Receita Federal do Brasil (AFRFB) (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Geração do Arquivo Digital solicitados por Auditor Fiscal da Receita Federal do Brasil (AFRFB) (1)    ${Caminho_Screenshots}Outros Arquivos/Ato Declaratório Executivo Cofis n°25, de 7 de junho de 2010
    RPA.Windows.Click         Confirmar
    Fechar janela

Outros Arquivos > DIPJ - Declaração de Informações Econômico-Fiscais da Pessoa Jurídica
    ${nome_print}=     Set Variable     DIPJ - Declaração de Informações Econômico-Fiscais da Pessoa Jurídica
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Outros Arquivos
    RPA.Desktop.Press Keys    D  
    RPA.Windows.Get Text      Consulta de IPI da DIPJ - Declaração de Informações Econômico-Fiscais da Pessoa Jurídica (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Consulta de IPI da DIPJ - Declaração de Informações Econômico-Fiscais da Pessoa Jurídica (1)    ${Caminho_Screenshots}Outros Arquivos/DIPJ - Declaração de Informações Econômico-Fiscais da Pessoa Jurídica
    RPA.Windows.Click         Confirmar
    Fechar janela

DCTF MIT
    ${nome_print}=     Set Variable     DCTF MIT
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                DCTF MIT
    RPA.Windows.Get Text      DCTF MIT (1)
    Repetidor de 2 teclas     Shift    Tab    2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    DCTF MIT (1)    ${Caminho_Screenshots}DCTF MIT
    RPA.Windows.Click         Confirmar
    Fechar janela