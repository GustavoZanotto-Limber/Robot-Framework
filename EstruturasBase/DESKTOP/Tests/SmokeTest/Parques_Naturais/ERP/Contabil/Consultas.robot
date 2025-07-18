*** Settings ***
Documentation    Smoke Test: Contábil
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}



*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Contábil/Consultas/    
${nome_print}
${nome_exe}=    cde_win_ctb
*** Keywords ***

Consultas
    Cadastros
    repetidor de teclas    right    2

*** Test Cases ***

Lançamentos Diários
    ${nome_print}=     Set Variable     Lançamentos Diários
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Lançamentos Diários
    RPA.Windows.Get Text      Lançamentos Diários (1)
    RPA.Windows.Click         Executar 
    BaseDesktop.Screenshot    Lançamentos Diários (1)     ${Caminho_Screenshots}Lançamentos Diários
    RPA.Windows.Click         OK
    Fechar janela

Diferenças do Diário
    ${nome_print}=     Set Variable     Diferenças do Diário
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Diferenças do Diário
    RPA.Windows.Get Text      Diferenças do Diário (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Diferenças do Diário (1)     ${Caminho_Screenshots}Diferenças do Diário
    Fechar janela

Planos de Contas
    ${nome_print}=     Set Variable     Planos de Contas
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Planos de Contas
    RPA.Windows.Get Text      Plano de Contas (1)
    RPA.Windows.Click         Recarregar
    BaseDesktop.Screenshot    Plano de Contas (1)     ${Caminho_Screenshots}Planos de Contas
    RPA.Windows.Click         Fechar

Razão de Contas
    ${nome_print}=     Set Variable     Razão de Contas
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Razão de Contas
    RPA.Windows.Get Text      Razão de Contas (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Razão de Contas (1)     ${Caminho_Screenshots}Razão de Contas
    RPA.Windows.Click         OK
    Fechar janela

Balancete
    ${nome_print}=     Set Variable     Balancete
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Balancete
    RPA.Windows.Get Text      Balancete (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Balancete (1)     ${Caminho_Screenshots}Balancete
    RPA.Windows.Click         OK
    Fechar janela

Depreciação de Bens do Ativo Imobilizado
    ${nome_print}=     Set Variable     Depreciação de Bens do Ativo Imobilizado
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Depreciação de Bens do Ativo Imobilizado
    RPA.Windows.Get Text      Consulta Depreciação de Bens do Ativo Imobilizado (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta Depreciação de Bens do Ativo Imobilizado (1)     ${Caminho_Screenshots}Depreciação de Bens do Ativo Imobilizado
    Fechar janela

Centro de Custos
    ${nome_print}=     Set Variable     Centro de Custos
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Centro de Custos
    RPA.Windows.Get Text      Centro de Custos (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Centro de Custos (1)     ${Caminho_Screenshots}Centro de Custos
    RPA.Windows.Click         OK
    Fechar janela

Rateio de Centro de Custos
    ${nome_print}=     Set Variable     Rateio de Centro de Custos
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Rateio de Centro de Custos
    RPA.Windows.Get Text      Consulta de Rateio de Centro de Custos (1) 
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Rateio de Centro de Custos (1)     ${Caminho_Screenshots}Rateio de Centro de Custos
    RPA.Windows.Click         OK
    Fechar janela

Consumo de Adiantamentos
    ${nome_print}=     Set Variable     Consumo de Adiantamentos
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Consumo de Adiantamentos
    RPA.Windows.Get Text      Consulta de Consumo de Adiantamentos (1) 
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Consumo de Adiantamentos (1)     ${Caminho_Screenshots}Consumo de Adiantamentos
    Fechar janela

Consultas Personalizadas
    ${nome_print}=     Set Variable     Consultas Personalizadas
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1) 
    RPA.Windows.Click         Cadastrar Nova Consulta
    BaseDesktop.Screenshot    Consultas Personalizadas (1)     ${Caminho_Screenshots}Consultas Personalizadas
    RPA.Windows.Click         Fechar
    Fechar janela

Sped Contábil > Gerar Sped Contábil
    ${nome_print}=     Set Variable     Gerar Sped Contábil
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Sped Contábil
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      SPED Contábil (1) 
    RPA.Windows.Click         Registro 0007
    BaseDesktop.Screenshot    SPED Contábil (1)     ${Caminho_Screenshots}Sped Contábil/Gerar Sped Contábil
    Fechar janela

Sped Contábil > Conglomerados Econômicos
    ${nome_print}=     Set Variable     Conglomerados Econômicos
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Sped Contábil
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Conglomerados Econômicos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Conglomerados Econômicos (1)     ${Caminho_Screenshots}Sped Contábil/Conglomerados Econômicos
    Fechar janela
    RPA.Windows.Click         Sim

Sped Contábil > Conglomerados Eliminações
    ${nome_print}=     Set Variable     Conglomerados Eliminações
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Sped Contábil
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Eliminações de Conglomerados (1) 
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Eliminações de Conglomerados (1)     ${Caminho_Screenshots}Sped Contábil/Conglomerados Eliminações
    RPA.Windows.Click         Cancelar
    Fechar janela

Sped Contábil > Cadastro de SCP
    ${nome_print}=     Set Variable     Cadastro de SCP
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Sped Contábil
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de SCP para Sped Contábil (1) 
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot    Cadastro de SCP para Sped Contábil (1)     ${Caminho_Screenshots}Sped Contábil/Cadastro de SCP
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click        Fechar

Sped Contábil > Transferência de Plano de Contas
    ${nome_print}=     Set Variable     Transferência de Plano de Contas
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Sped Contábil
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Transferência de Plano de Contas (1)
    RPA.Desktop.Press Keys  Enter
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot    Transferência de Plano de Contas (1)     ${Caminho_Screenshots}Sped Contábil/Transferência de Plano de Contas
    RPA.Windows.Click         Confirmar
    Fechar janela

Consulta CMV por período
    ${nome_print}=     Set Variable     Consulta CMV por período
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Consulta CMV por período
    RPA.Windows.Get Text      Consulta CMV por período (1) 
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta CMV por período (1)     ${Caminho_Screenshots}Consulta CMV por período
    RPA.Windows.Click         OK
    Fechar janela

Consulta de Alterações de Lançamentos
    ${nome_print}=     Set Variable     Consulta de Alterações de Lançamentos
    [Tags]     Contábil    Consultas   SmokeTest
    Consultas
    RPA.Windows.Click         Consulta de Alterações de Lançamentos
    RPA.Windows.Get Text      Consulta Log de Lançamentos Contábeis (1) 
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta Log de Lançamentos Contábeis (1)     ${Caminho_Screenshots}Consulta de Alterações de Lançamentos
    Fechar janela