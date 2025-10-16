*** Settings ***
Documentation    Smoke Test: Fiscal
Resource         ../../../../../Resources/BILHETERIA/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}



*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Fiscal/Livros Fiscais_Apurações_Relatórios/
${nome_print}
${nome_exe}=    cde_win_fis
*** Keywords ***

Geração de Arquivos Fiscais
    [Arguments]    ${nome}
    Cadastros
    Repetidor de teclas    right    4
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Livro de Entradas Mensal
    ${nome_print}=     Set Variable     Livro de Entradas Mensal
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Livro de Entradas Mensal
    RPA.Windows.Get Text      Livro de Entradas (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Livro de Entradas (1)    ${Caminho_Screenshots}Livro de Entradas Mensal
    RPA.Windows.Click         Confirmar
    Fechar janela

Livro de Saídas Mensal
    ${nome_print}=     Set Variable     Livro de Saídas Mensal
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Livro de Saídas Mensal
    RPA.Windows.Get Text      Livro de Saídas (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Livro de Saídas (1)    ${Caminho_Screenshots}Livro de Saídas Mensal
    RPA.Windows.Click         Confirmar
    Fechar janela

Livro de Entradas por Período
    ${nome_print}=     Set Variable     Livro de Entradas por Período
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Livro de Entradas por Período
    RPA.Windows.Get Text      Livro de Entradas (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Livro de Entradas (1)    ${Caminho_Screenshots}Livro de Entradas por Período
    RPA.Windows.Click         Confirmar
    Fechar janela

Livro de Saídas por Período
    ${nome_print}=     Set Variable     Livro de Saídas por Período
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Livro de Saídas por Período
    RPA.Windows.Get Text      Livro de Saídas (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Livro de Saídas (1)    ${Caminho_Screenshots}Livro de Saídas por Período
    RPA.Windows.Click         Confirmar
    Fechar janela

Livro de Contribuições PIS/COFINS
    ${nome_print}=     Set Variable     Livro de Contribuições PIS_COFINS
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Livro de Contribuições PIS/COFINS
    RPA.Windows.Get Text      Livro de Contribuições (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Livro de Contribuições (1)    ${Caminho_Screenshots}Livro de Contribuições PIS_COFINS
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração de ICMS
    ${nome_print}=     Set Variable     Apuração de ICMS
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Apuração de ICMS
    RPA.Windows.Get Text      Apuração do ICMS (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Apuração do ICMS (1)    ${Caminho_Screenshots}Apuração de ICMS
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração de ICMS-ST
    ${nome_print}=     Set Variable     Apuração de ICMS-ST
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Apuração de ICMS-ST
    RPA.Windows.Get Text      Consulta de Obrigações de ICMS-ST (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Consulta de Obrigações de ICMS-ST (1)    ${Caminho_Screenshots}Apuração de ICMS-ST
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração do IPI
    ${nome_print}=     Set Variable     Apuração do IPI
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Apuração do IPI
    RPA.Windows.Get Text      Apuração do IPI (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Apuração do IPI (1)    ${Caminho_Screenshots}Apuração do IPI
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração do FCP
    ${nome_print}=     Set Variable     Apuração do FCP
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Apuração do FCP
    RPA.Windows.Get Text      Relatório de Apuração FCP (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Relatório de Apuração FCP (1)    ${Caminho_Screenshots}Apuração do FCP
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração do DIFAL
    ${nome_print}=     Set Variable     Apuração do DIFAL
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Apuração do DIFAL
    RPA.Windows.Get Text      Apuração do Difal (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Apuração do Difal (1)    ${Caminho_Screenshots}Apuração do DIFAL
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração do ISS
    ${nome_print}=     Set Variable     Apuração do ISS
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Apuração do ISS
    RPA.Windows.Get Text      Livro Fiscal do ISS (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Livro Fiscal do ISS (1)    ${Caminho_Screenshots}Apuração do ISS
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração de Impostos e Contribuições
    ${nome_print}=     Set Variable     Apuração de Impostos e Contribuições
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Apuração de Impostos e Contribuições
    RPA.Windows.Get Text      Apuração de Impostos e Contribuições (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Apuração de Impostos e Contribuições (1)    ${Caminho_Screenshots}Apuração de Impostos e Contribuições
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração Funrural_Senar_Gilrat
    ${nome_print}=     Set Variable     Apuração Funrural_Senar_Gilrat
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Apuração Funrural/Senar/Gilrat
    RPA.Windows.Get Text      Apuração Funrural/Senar/Gilrat (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Apuração Funrural/Senar/Gilrat (1)    ${Caminho_Screenshots}Apuração Funrural_Senar_Gilrat
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração de Antecipação de ICMS
    ${nome_print}=     Set Variable     Apuração de Antecipação de ICMS
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Apuração de Antecipação de ICMS
    RPA.Windows.Get Text      Apuração de Antecipação do ICMS (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Apuração de Antecipação do ICMS (1)    ${Caminho_Screenshots}Apuração de Antecipação de ICMS
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração de Impostos Retidos
    ${nome_print}=     Set Variable     Apuração de Impostos Retidos
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Apuração de Impostos Retidos
    RPA.Windows.Get Text      Apuração de Impostos Retidos (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Apuração de Impostos Retidos (1)    ${Caminho_Screenshots}Apuração de Impostos Retidos
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

Tabela Ajustes ICMS
    ${nome_print}=     Set Variable     Tabela Ajustes ICMS
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Tabela Ajustes ICMS
    RPA.Windows.Get Text      Tabela Ajustes ICMS (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Tabela Ajustes ICMS (1)    ${Caminho_Screenshots}Tabela Ajustes ICMS
    RPA.Windows.Click         Confirmar
    Fechar janela

Auditor Fiscal
    ${nome_print}=     Set Variable     Auditor Fiscal
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Auditor Fiscal
    RPA.Windows.Get Text      Auditor Fiscal (1)
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Auditor Fiscal (1)    ${Caminho_Screenshots}Auditor Fiscal
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatório de Impostos dos Produtos (Lei n° 12.741, de 8 de dezembro de 2012)
    ${nome_print}=     Set Variable     Relatório de Impostos dos Produtos (Lei n° 12.741, de 8 de dezembro de 2012)
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Relatório de Impostos dos Produtos (Lei n° 12.741, de 8 de dezembro de 2012)
    RPA.Windows.Get Text      Relatório de Impostos de Produtos (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Relatório de Impostos de Produtos (1)    ${Caminho_Screenshots}Relatório de Impostos dos Produtos (Lei n° 12.741, de 8 de dezembro de 2012)
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

Relatório de Ajustes de Documento Fiscal
    ${nome_print}=     Set Variable     Relatório de Ajustes de Documento Fiscal
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Relatório de Ajustes de Documento Fiscal
    RPA.Windows.Get Text      Relatório de Ajustes de Documento Fiscal (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Relatório de Ajustes de Documento Fiscal (1)    ${Caminho_Screenshots}Relatório de Ajustes de Documento Fiscal
    RPA.Windows.Click         Confirmar
    Fechar janela

Termos
    ${nome_print}=     Set Variable     Termos
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Termos
    RPA.Windows.Get Text      Termos de Abertura/Encerramento (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Termos de Abertura/Encerramento (1)    ${Caminho_Screenshots}Termos
    RPA.Windows.Click         Confirmar
    Fechar janela

Consultas Personalizadas
    ${nome_print}=     Set Variable     Consultas Personalizadas
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1)
    RPA.Windows.Click         Cadastrar Nova Consulta
    BaseKeywordsDesktop.Screenshot    Consultas Personalizadas (1)    ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click         Sair
    Fechar janela

Consulta Lalur Parte A_B
    ${nome_print}=     Set Variable     Consulta Lalur Parte A_B
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Consulta Lalur Parte A/B
    RPA.Windows.Get Text      Consulta Lalur A/B (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Consulta Lalur A/B (1)    ${Caminho_Screenshots}Consulta Lalur Parte A_B
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatório de Detalhamento de Receitas
    ${nome_print}=     Set Variable     Relatório de Detalhamento de Receitas
    [Tags]    Fiscal    Geração de Arquivos Fiscais   SmokeTest
    Geração de Arquivos Fiscais                Relatório de Detalhamento de Receitas
    RPA.Windows.Get Text      Detalhamento de Receitas (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Detalhamento de Receitas (1)    ${Caminho_Screenshots}Relatório de Detalhamento de Receitas
    RPA.Windows.Click         Confirmar
    Fechar janela