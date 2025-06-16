*** Settings ***
Documentation    Smoke Test: Geração de Arquivos Fiscais
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_fis


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Fiscal/Geração de Arquivos Fiscais/    

*** Keywords ***

Geração de Arquivos Fiscais
    [Arguments]    ${nome}
    Cadastros
    Repetidor de teclas    right    3
    RPA.Windows.Click    ${nome}

*** Test Cases ***

SPED Fiscal (ICMS/IPI)
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        SPED Fiscal (ICMS_IPI)
    Geração de Arquivos Fiscais                SPED Fiscal (ICMS/IPI)
    RPA.Windows.Get Text      SPED Fiscal (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    SPED Fiscal (1)    ${Caminho_Screenshots}SPED Fiscal (ICMS_IPI)
    RPA.Windows.Click         Confirmar
    Fechar janela

SPED Contribuições (PIS/COFINS)
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        SPED Contribuições (PIS_COFINS)
    Geração de Arquivos Fiscais                SPED Contribuições (PIS/COFINS)
    RPA.Windows.Get Text      SPED Contribuições (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    RPA.Windows.Click         OK
    BaseDesktop.Screenshot    SPED Contribuições (1)    ${Caminho_Screenshots}SPED Contribuições (PIS_COFINS)
    Fechar janela
    RPA.Windows.Click         OK

SPED Contábil (ECD)
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        SPED Contábil (ECD)
    Geração de Arquivos Fiscais                SPED Contábil (ECD)
    RPA.Windows.Get Text      SPED Contábil (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    SPED Contábil (1)    ${Caminho_Screenshots}SPED Contábil (ECD)
    RPA.Windows.Click         Confirmar
    Fechar janela

SPED ECF
    [Teardown]                Caso aconteça erro               ${Caminho_Screenshots}                        SPED ECF
    Geração de Arquivos Fiscais                SPED ECF
    RPA.Windows.Get Text      Sped ECF (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Sped ECF (1)    ${Caminho_Screenshots}SPED ECF
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         Fechar

SPED REINF > Geração
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}SPED REINF/            Geração
    Geração de Arquivos Fiscais                SPED REINF
    RPA.Desktop.Press Keys    G  
    RPA.Windows.Get Text      Escrituração fiscal digital de retenções e outras informações fiscais (EFD-REINF) (1)
    Repetidor de 2 teclas     Shift    tab    2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Escrituração fiscal digital de retenções e outras informações fiscais (EFD-REINF) (1)    ${Caminho_Screenshots}SPED REINF/Geração
    RPA.Windows.Click         Confirmar
    Fechar janela

SPED REINF > Relatório
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}SPED REINF/                Relatório
    Geração de Arquivos Fiscais                SPED REINF
    RPA.Desktop.Press Keys    R  
    RPA.Windows.Get Text      Relatório - EFD REINF (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório - EFD REINF (1)    ${Caminho_Screenshots}SPED REINF/Relatório
    RPA.Windows.Click         Confirmar
    Fechar janela

GIA-PR
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        GIA-PR
    Geração de Arquivos Fiscais                GIA-PR
    RPA.Windows.Get Text      Guia de Informação e Apuração do ICMS - Paraná (GIA-PR) (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Guia de Informação e Apuração do ICMS - Paraná (GIA-PR) (1)    ${Caminho_Screenshots}GIA-PR
    RPA.Windows.Click         Confirmar
    Fechar janela
    RPA.Windows.Click         Sim

GIA-MS
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        GIA-MS
    Geração de Arquivos Fiscais                GIA-MS
    RPA.Windows.Get Text      Guia de Informação e Apuração do ICMS - Mato Grosso do Sul (GIA-MS) (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Guia de Informação e Apuração do ICMS - Mato Grosso do Sul (GIA-MS) (1)    ${Caminho_Screenshots}GIA-MS
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         Fechar

GIA-RJ
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        GIA-RJ
    Geração de Arquivos Fiscais                GIA-RJ
    RPA.Windows.Get Text      Guia de informação e apuração do ICMS - Rio de Janeiro (GIA-RJ) (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Guia de informação e apuração do ICMS - Rio de Janeiro (GIA-RJ) (1)    ${Caminho_Screenshots}GIA-RJ
    RPA.Windows.Click         Confirmar
    Fechar janela

GIA-SP
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        GIA-SP
    Geração de Arquivos Fiscais                GIA-SP
    RPA.Windows.Get Text      Guia de Informação e Apuração do ICMS - São Paulo (GIA-SP) (1)
    Repetidor de 2 teclas     Shift    tab    2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Guia de Informação e Apuração do ICMS - São Paulo (GIA-SP) (1)    ${Caminho_Screenshots}GIA-SP
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

Registro Magnético (SINTEGRA)
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Registro Magnético (SINTEGRA)
    Geração de Arquivos Fiscais                Registro Magnético (SINTEGRA)
    RPA.Windows.Get Text      Registro Magnético (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Registro Magnético (1)    ${Caminho_Screenshots}Registro Magnético (SINTEGRA)
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

Registro Magnético SISCRED - PR
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Registro Magnético SISCRED - PR
    Geração de Arquivos Fiscais                Arquivo Magnético SISCRED - PR
    RPA.Windows.Get Text      Arquivo Magnético SISCRED - PR (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Arquivo Magnético SISCRED - PR (1)    ${Caminho_Screenshots}Registro Magnético SISCRED - PR
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    RPA.Windows.Click         Fechar
    RPA.Windows.Click         OK

SEF-PE
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}        SEF-PE
    Geração de Arquivos Fiscais                SEF-PE
    RPA.Windows.Get Text      Geração do Arquivo SEF 2012 - Pernambuco (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Geração do Arquivo SEF 2012 - Pernambuco (1)    ${Caminho_Screenshots}SEF-PE
    RPA.Windows.Click         Confirmar 
    Fechar janela

DIME-SC > Geração
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}DIME-SC/        Geração
    Geração de Arquivos Fiscais                DIME-SC
    RPA.Desktop.Press Keys    G  
    RPA.Windows.Get Text      Declaração do ICMS e do Movimento Econômico (DIME) (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Declaração do ICMS e do Movimento Econômico (DIME) (1)    ${Caminho_Screenshots}DIME-SC/Geração
    RPA.Windows.Click         Confirmar 
    Fechar janela
    RPA.Windows.Click         Sim 

DIME-SC > Montagem
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}DIME-SC/        Montagem
    Geração de Arquivos Fiscais                DIME-SC
    RPA.Desktop.Press Keys    M  
    RPA.Windows.Get Text      Montagem DIME SC (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Montagem DIME SC (1)    ${Caminho_Screenshots}DIME-SC/Montagem
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         Sim

DFC GI/ICMS - PR
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        DFC GI_ICMS - PR
    Geração de Arquivos Fiscais                DFC GI/ICMS - PR
    RPA.Windows.Get Text      DFC e GI/ICMS (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    DFC e GI/ICMS (1)    ${Caminho_Screenshots}DFC GI_ICMS - PR
    RPA.Windows.Click         Confirmar
    Fechar janela
    RPA.Windows.Click         Sim

DEISS
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        DEISS
    Geração de Arquivos Fiscais                DEISS
    RPA.Windows.Get Text      Declaração Eletrônica de Imposto Sobre Serviço (DEISS) (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Declaração Eletrônica de Imposto Sobre Serviço (DEISS) (1)    ${Caminho_Screenshots}DEISS
    RPA.Windows.Click         Confirmar
    Fechar janela
    RPA.Windows.Click         Sim

SISCOSERV
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        SISCOSERV
    Geração de Arquivos Fiscais                SISCOSERV
    RPA.Windows.Get Text      Geração de Arquivos SISCOSERV (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Geração de Arquivos SISCOSERV (1)    ${Caminho_Screenshots}SISCOSERV
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         Fechar

Outros Arquivos > FCont
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros Arquivos/        FCont
    Geração de Arquivos Fiscais                Outros Arquivos
    RPA.Desktop.Press Keys    F  
    RPA.Windows.Get Text      bbbbb
    BaseDesktop.Screenshot    bbbbb    ${Caminho_Screenshots}Outros Arquivos/FCont
    Fechar janela

Outros Arquivos > Ato Declaratório Executivo Cofis n°25, de 7 de junho de 2010
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros Arquivos/        Ato Declaratório Executivo Cofis n°25, de 7 de junho de 2010
    Geração de Arquivos Fiscais                Outros Arquivos
    RPA.Desktop.Press Keys    A  
    RPA.Windows.Get Text      Geração do Arquivo Digital solicitados por Auditor Fiscal da Receita Federal do Brasil (AFRFB) (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Geração do Arquivo Digital solicitados por Auditor Fiscal da Receita Federal do Brasil (AFRFB) (1)    ${Caminho_Screenshots}Outros Arquivos/Ato Declaratório Executivo Cofis n°25, de 7 de junho de 2010
    RPA.Windows.Click         Confirmar
    Fechar janela

Outros Arquivos > DIPJ - Declaração de Informações Econômico-Fiscais da Pessoa Jurídica
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros Arquivos/        DIPJ - Declaração de Informações Econômico-Fiscais da Pessoa Jurídica
    Geração de Arquivos Fiscais                Outros Arquivos
    RPA.Desktop.Press Keys    D  
    RPA.Windows.Get Text      Consulta de IPI da DIPJ - Declaração de Informações Econômico-Fiscais da Pessoa Jurídica (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Consulta de IPI da DIPJ - Declaração de Informações Econômico-Fiscais da Pessoa Jurídica (1)    ${Caminho_Screenshots}Outros Arquivos/DIPJ - Declaração de Informações Econômico-Fiscais da Pessoa Jurídica
    RPA.Windows.Click         Confirmar
    Fechar janela

DCTF MIT
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        DCTF MIT
    Geração de Arquivos Fiscais                DCTF MIT
    RPA.Windows.Get Text      DCTF MIT (1)
    Repetidor de 2 teclas     Shift    Tab    2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    DCTF MIT (1)    ${Caminho_Screenshots}DCTF MIT
    RPA.Windows.Click         Confirmar
    Fechar janela

Encerrar
    Encerrar tudo
