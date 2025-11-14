*** Settings ***
Documentation    Smoke Test: Contabil
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}



*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Contabil/Consultas/    
${nome_print}
${nome_exe}=    cde_win_ctb
*** Keywords ***

Consultas
    Cadastros
    repetidor de teclas    right    2

*** Test Cases ***

Lançamentos Diários
    ${nome_print}=     Set Variable     Lançamentos Diários
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Lançamentos Diários
    RPA.Windows.Get Text      Lançamentos Diários (1)
    RPA.Windows.Click         Executar 
    BaseKeywordsDesktop.Screenshot    Lançamentos Diários (1)     ${Caminho_Screenshots}Lançamentos Diários
    RPA.Windows.Click         OK
    Fechar janela

Diferenças do Diário
    ${nome_print}=     Set Variable     Diferenças do Diário
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Diferenças do Diário
    RPA.Windows.Get Text      Diferenças do Diário (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Diferenças do Diário (1)     ${Caminho_Screenshots}Diferenças do Diário
    Fechar janela

Planos de Contas
    ${nome_print}=     Set Variable     Planos de Contas
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Planos de Contas
    RPA.Windows.Get Text      Plano de Contas (1)
    RPA.Windows.Click         Recarregar
    BaseKeywordsDesktop.Screenshot    Plano de Contas (1)     ${Caminho_Screenshots}Planos de Contas
    RPA.Windows.Click         Fechar

Razão de Contas
    ${nome_print}=     Set Variable     Razão de Contas
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Razão de Contas
    RPA.Windows.Get Text      Razão de Contas (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Razão de Contas (1)     ${Caminho_Screenshots}Razão de Contas
    RPA.Windows.Click         OK
    Fechar janela

Balancete
    ${nome_print}=     Set Variable     Balancete
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Balancete
    RPA.Windows.Get Text      Balancete (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Balancete (1)     ${Caminho_Screenshots}Balancete
    RPA.Windows.Click         OK
    Fechar janela

Depreciação de Bens do Ativo Imobilizado
    ${nome_print}=     Set Variable     Depreciação de Bens do Ativo Imobilizado
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Depreciação de Bens do Ativo Imobilizado
    RPA.Windows.Get Text      Consulta Depreciação de Bens do Ativo Imobilizado (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta Depreciação de Bens do Ativo Imobilizado (1)     ${Caminho_Screenshots}Depreciação de Bens do Ativo Imobilizado
    Fechar janela

Centro de Custos
    ${nome_print}=     Set Variable     Centro de Custos
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Centro de Custos
    RPA.Windows.Get Text      Centro de Custos (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Centro de Custos (1)     ${Caminho_Screenshots}Centro de Custos
    RPA.Windows.Click         OK
    Fechar janela

Rateio de Centro de Custos
    ${nome_print}=     Set Variable     Rateio de Centro de Custos
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Rateio de Centro de Custos
    RPA.Windows.Get Text      Consulta de Rateio de Centro de Custos (1) 
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta de Rateio de Centro de Custos (1)     ${Caminho_Screenshots}Rateio de Centro de Custos
    RPA.Windows.Click         OK
    Fechar janela

Consumo de Adiantamentos
    ${nome_print}=     Set Variable     Consumo de Adiantamentos
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Consumo de Adiantamentos
    RPA.Windows.Get Text      Consulta de Consumo de Adiantamentos (1) 
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta de Consumo de Adiantamentos (1)     ${Caminho_Screenshots}Consumo de Adiantamentos
    Fechar janela

Consultas Personalizadas
    ${nome_print}=     Set Variable     Consultas Personalizadas
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1) 
    RPA.Windows.Click         Cadastrar Nova Consulta
    BaseKeywordsDesktop.Screenshot    Consultas Personalizadas (1)     ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click         Fechar
    Fechar janela

Sped Contabil > Gerar Sped Contabil
    ${nome_print}=     Set Variable     Gerar Sped Contabil
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest    
    Consultas
    RPA.Windows.Click         Sped Contábil
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      SPED Contábil (1) 
    RPA.Windows.Click         Registro 0007
    BaseKeywordsDesktop.Screenshot    SPED Contábil (1)     ${Caminho_Screenshots}Sped Contabil/Gerar Sped Contabil
    Fechar janela

Sped Contabil > Conglomerados Econômicos
    ${nome_print}=     Set Variable     Conglomerados Econômicos
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest    
    Consultas
    RPA.Windows.Click         Sped Contábil
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Conglomerados Econômicos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Conglomerados Econômicos (1)     ${Caminho_Screenshots}Sped Contabil/Conglomerados Econômicos
    Fechar com Sim

Sped Contabil > Conglomerados Eliminações
    ${nome_print}=     Set Variable     Conglomerados Eliminações
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest    
    Consultas
    RPA.Windows.Click         Sped Contábil
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Eliminações de Conglomerados (1) 
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Eliminações de Conglomerados (1)     ${Caminho_Screenshots}Sped Contabil/Conglomerados Eliminações
    RPA.Windows.Click         Cancelar
    Fechar janela

Sped Contabil > Cadastro de SCP
    ${nome_print}=     Set Variable     Cadastro de SCP
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest    
    Consultas
    RPA.Windows.Click         Sped Contábil
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de SCP para Sped Contábil (1) 
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Cadastro de SCP para Sped Contábil (1)     ${Caminho_Screenshots}Sped Contabil/Cadastro de SCP
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         Fechar

Sped Contabil > Transferência de Plano de Contas
    ${nome_print}=     Set Variable     Transferência de Plano de Contas
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest   
    Consultas
    RPA.Windows.Click         Sped Contábil
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Transferência de Plano de Contas (1)
    RPA.Desktop.Press Keys    Enter
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Transferência de Plano de Contas (1)     ${Caminho_Screenshots}Sped Contabil/Transferência de Plano de Contas
    RPA.Windows.Click         Confirmar
    Fechar janela

Consulta CMV por período
    ${nome_print}=     Set Variable     Consulta CMV por período
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Consulta CMV por período
    RPA.Windows.Get Text      Consulta CMV por período (1) 
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta CMV por período (1)     ${Caminho_Screenshots}Consulta CMV por período
    RPA.Windows.Click         OK
    Fechar janela

Consulta de Alterações de Lançamentos
    ${nome_print}=     Set Variable     Consulta de Alterações de Lançamentos
    [Tags]   SmokeERP    Contabil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Consulta de Alterações de Lançamentos
    RPA.Windows.Get Text      Consulta Log de Lançamentos Contábeis (1) 
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta Log de Lançamentos Contábeis (1)     ${Caminho_Screenshots}Consulta de Alterações de Lançamentos
    Fechar janela