*** Settings ***
Documentation    Smoke Test: Livros Fiscais_Apurações_Relatórios
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_fis


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Fiscal/Livros Fiscais_Apurações_Relatórios/

*** Keywords ***

Geração de Arquivos Fiscais
    [Arguments]    ${nome}
    Cadastros
    Repetidor de teclas    right    4
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Livro de Entradas Mensal
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Livro de Entradas Mensal
    Geração de Arquivos Fiscais                Livro de Entradas Mensal
    RPA.Windows.Get Text      Livro de Entradas (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Livro de Entradas (1)    ${Caminho_Screenshots}Livro de Entradas Mensal
    RPA.Windows.Click         Confirmar
    Fechar janela

Livro de Saídas Mensal
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Livro de Saídas Mensal
    Geração de Arquivos Fiscais                Livro de Saídas Mensal
    RPA.Windows.Get Text      Livro de Saídas (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Livro de Saídas (1)    ${Caminho_Screenshots}Livro de Saídas Mensal
    RPA.Windows.Click         Confirmar
    Fechar janela

Livro de Entradas por Período
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Livro de Entradas por Período
    Geração de Arquivos Fiscais                Livro de Entradas por Período
    RPA.Windows.Get Text      Livro de Entradas (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Livro de Entradas (1)    ${Caminho_Screenshots}Livro de Entradas por Período
    RPA.Windows.Click         Confirmar
    Fechar janela

Livro de Saídas por Período
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Livro de Saídas por Período
    Geração de Arquivos Fiscais                Livro de Saídas por Período
    RPA.Windows.Get Text      Livro de Saídas (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Livro de Saídas (1)    ${Caminho_Screenshots}Livro de Saídas por Período
    RPA.Windows.Click         Confirmar
    Fechar janela

Livro de Contribuições PIS/COFINS
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Livro de Contribuições PIS_COFINS
    Geração de Arquivos Fiscais                Livro de Contribuições PIS/COFINS
    RPA.Windows.Get Text      Livro de Contribuições (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Livro de Contribuições (1)    ${Caminho_Screenshots}Livro de Contribuições PIS_COFINS
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração de ICMS
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Apuração de ICMS
    Geração de Arquivos Fiscais                Apuração de ICMS
    RPA.Windows.Get Text      Apuração do ICMS (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Apuração do ICMS (1)    ${Caminho_Screenshots}Apuração de ICMS
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração de ICMS-ST
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Apuração de ICMS-ST
    Geração de Arquivos Fiscais                Apuração de ICMS-ST
    RPA.Windows.Get Text      Consulta de Obrigações de ICMS-ST (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Consulta de Obrigações de ICMS-ST (1)    ${Caminho_Screenshots}Apuração de ICMS-ST
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração do IPI
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Apuração do IPI
    Geração de Arquivos Fiscais                Apuração do IPI
    RPA.Windows.Get Text      Apuração do IPI (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Apuração do IPI (1)    ${Caminho_Screenshots}Apuração do IPI
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração do FCP
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Apuração do FCP
    Geração de Arquivos Fiscais                Apuração do FCP
    RPA.Windows.Get Text      Relatório de Apuração FCP (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Apuração FCP (1)    ${Caminho_Screenshots}Apuração do FCP
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração do DIFAL
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Apuração do DIFAL
    Geração de Arquivos Fiscais                Apuração do DIFAL
    RPA.Windows.Get Text      Apuração do Difal (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Apuração do Difal (1)    ${Caminho_Screenshots}Apuração do DIFAL
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração do ISS
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Apuração do ISS
    Geração de Arquivos Fiscais                Apuração do ISS
    RPA.Windows.Get Text      Livro Fiscal do ISS (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Livro Fiscal do ISS (1)    ${Caminho_Screenshots}Apuração do ISS
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração de Impostos e Contribuições
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Apuração de Impostos e Contribuições
    Geração de Arquivos Fiscais                Apuração de Impostos e Contribuições
    RPA.Windows.Get Text      Apuração de Impostos e Contribuições (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Apuração de Impostos e Contribuições (1)    ${Caminho_Screenshots}Apuração de Impostos e Contribuições
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração Funrural/Senar/Gilrat
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Apuração Funrural_Senar_Gilrat
    Geração de Arquivos Fiscais                Apuração Funrural/Senar/Gilrat
    RPA.Windows.Get Text      Apuração Funrural/Senar/Gilrat (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Apuração Funrural/Senar/Gilrat (1)    ${Caminho_Screenshots}Apuração Funrural_Senar_Gilrat
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração de Antecipação de ICMS
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Apuração de Antecipação de ICMS
    Geração de Arquivos Fiscais                Apuração de Antecipação de ICMS
    RPA.Windows.Get Text      Apuração de Antecipação do ICMS (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Apuração de Antecipação do ICMS (1)    ${Caminho_Screenshots}Apuração de Antecipação de ICMS
    RPA.Windows.Click         Confirmar
    Fechar janela

Apuração de Impostos Retidos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Apuração de Impostos Retidos
    Geração de Arquivos Fiscais                Apuração de Impostos Retidos
    RPA.Windows.Get Text      Apuração de Impostos Retidos (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Apuração de Impostos Retidos (1)    ${Caminho_Screenshots}Apuração de Impostos Retidos
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

Tabela Ajustes ICMS
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Tabela Ajustes ICMS
    Geração de Arquivos Fiscais                Tabela Ajustes ICMS
    RPA.Windows.Get Text      Tabela Ajustes ICMS (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Tabela Ajustes ICMS (1)    ${Caminho_Screenshots}Tabela Ajustes ICMS
    RPA.Windows.Click         Confirmar
    Fechar janela

Auditor Fiscal
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Auditor Fiscal
    Geração de Arquivos Fiscais                Auditor Fiscal
    RPA.Windows.Get Text      Auditor Fiscal (1)
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Auditor Fiscal (1)    ${Caminho_Screenshots}Auditor Fiscal
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatório de Impostos dos Produtos (Lei n° 12.741, de 8 de dezembro de 2012)
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Relatório de Impostos dos Produtos (Lei n° 12.741, de 8 de dezembro de 2012)
    Geração de Arquivos Fiscais                Relatório de Impostos dos Produtos (Lei n° 12.741, de 8 de dezembro de 2012)
    RPA.Windows.Get Text      Relatório de Impostos de Produtos (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Impostos de Produtos (1)    ${Caminho_Screenshots}Relatório de Impostos dos Produtos (Lei n° 12.741, de 8 de dezembro de 2012)
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

Relatório de Ajustes de Documento Fiscal
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Relatório de Ajustes de Documento Fiscal
    Geração de Arquivos Fiscais                Relatório de Ajustes de Documento Fiscal
    RPA.Windows.Get Text      Relatório de Ajustes de Documento Fiscal (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Ajustes de Documento Fiscal (1)    ${Caminho_Screenshots}Relatório de Ajustes de Documento Fiscal
    RPA.Windows.Click         Confirmar
    Fechar janela

Termos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Termos
    Geração de Arquivos Fiscais                Termos
    RPA.Windows.Get Text      Termos de Abertura/Encerramento (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Termos de Abertura/Encerramento (1)    ${Caminho_Screenshots}Termos
    RPA.Windows.Click         Confirmar
    Fechar janela

Consultas Personalizadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Consultas Personalizadas
    Geração de Arquivos Fiscais                Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1)
    RPA.Windows.Click         Cadastrar Nova Consulta
    BaseDesktop.Screenshot    Consultas Personalizadas (1)    ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click         Sair
    Fechar janela

Consulta Lalur Parte A/B
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Consulta Lalur Parte A_B
    Geração de Arquivos Fiscais                Consulta Lalur Parte A/B
    RPA.Windows.Get Text      Consulta Lalur A/B (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Consulta Lalur A/B (1)    ${Caminho_Screenshots}Consulta Lalur Parte A_B
    RPA.Windows.Click         Confirmar
    Fechar janela

Relatório de Detalhamento de Receitas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       Relatório de Detalhamento de Receitas
    Geração de Arquivos Fiscais                Relatório de Detalhamento de Receitas
    RPA.Windows.Get Text      Detalhamento de Receitas (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Detalhamento de Receitas (1)    ${Caminho_Screenshots}Relatório de Detalhamento de Receitas
    RPA.Windows.Click         Confirmar
    Fechar janela
Encerrar
    Encerrar tudo
