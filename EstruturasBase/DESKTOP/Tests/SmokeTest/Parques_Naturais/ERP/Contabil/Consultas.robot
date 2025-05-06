*** Settings ***
Documentation    Smoke Test: Contábil
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_ctb


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Contábil/Consultas/    

*** Keywords ***

Consultas
    Cadastros
    repetidor de teclas    right    2

*** Test Cases ***

Lançamentos Diários
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Lançamentos Diários
    Consultas
    RPA.Windows.Click         Lançamentos Diários
    RPA.Windows.Get Text      Lançamentos Diários (1) 
    BaseDesktop.Screenshot    Lançamentos Diários (1)     ${Caminho_Screenshots}Lançamentos Diários
    Fechar janela

Diferenças do Diário
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Diferenças do Diário
    Consultas
    RPA.Windows.Click         Diferenças do Diário
    RPA.Windows.Get Text      Diferenças do Diário (1) 
    BaseDesktop.Screenshot    Diferenças do Diário (1)     ${Caminho_Screenshots}Diferenças do Diário
    Fechar janela

Planos de Contas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Planos de Contas
    Consultas
    RPA.Windows.Click         Planos de Contas
    RPA.Windows.Get Text      Plano de Contas (1) 
    BaseDesktop.Screenshot    Plano de Contas (1)     ${Caminho_Screenshots}Planos de Contas
    RPA.Windows.Click         Fechar

Razão de Contas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Razão de Contas
    Consultas
    RPA.Windows.Click         Razão de Contas
    RPA.Windows.Get Text      Razão de Contas (1) 
    BaseDesktop.Screenshot    Razão de Contas (1)     ${Caminho_Screenshots}Razão de Contas
    Fechar janela

Balancete
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Balancete
    Consultas
    RPA.Windows.Click         Balancete
    RPA.Windows.Get Text      Balancete (1) 
    BaseDesktop.Screenshot    Balancete (1)     ${Caminho_Screenshots}Balancete
    Fechar janela

Depreciação de Bens do Ativo Imobilizado
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Depreciação de Bens do Ativo Imobilizado
    Consultas
    RPA.Windows.Click         Depreciação de Bens do Ativo Imobilizado
    RPA.Windows.Get Text      Consulta Depreciação de Bens do Ativo Imobilizado (1) 
    BaseDesktop.Screenshot    Consulta Depreciação de Bens do Ativo Imobilizado (1)     ${Caminho_Screenshots}Depreciação de Bens do Ativo Imobilizado
    Fechar janela

Centro de Custos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Centro de Custos
    Consultas
    RPA.Windows.Click         Centro de Custos
    RPA.Windows.Get Text      Centro de Custos (1) 
    BaseDesktop.Screenshot    Centro de Custos (1)     ${Caminho_Screenshots}Centro de Custos
    Fechar janela

Rateio de Centro de Custos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Rateio de Centro de Custos
    Consultas
    RPA.Windows.Click         Rateio de Centro de Custos
    RPA.Windows.Get Text      Consulta de Rateio de Centro de Custos (1) 
    BaseDesktop.Screenshot    Consulta de Rateio de Centro de Custos (1)     ${Caminho_Screenshots}Rateio de Centro de Custos
    Fechar janela

Consumo de Adiantamentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Consumo de Adiantamentos
    Consultas
    RPA.Windows.Click         Consumo de Adiantamentos
    RPA.Windows.Get Text      Consulta de Consumo de Adiantamentos (1) 
    BaseDesktop.Screenshot    Consulta de Consumo de Adiantamentos (1)     ${Caminho_Screenshots}Consumo de Adiantamentos
    Fechar janela

Consultas Personalizadas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Consultas Personalizadas
    Consultas
    RPA.Windows.Click         Consultas Personalizadas
    RPA.Windows.Get Text      Consultas Personalizadas (1) 
    BaseDesktop.Screenshot    Consultas Personalizadas (1)     ${Caminho_Screenshots}Consultas Personalizadas
    Fechar janela

Sped Contábil > Gerar Sped Contábil
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Sped Contábil/                       ERRO Gerar Sped Contábil
    Consultas
    RPA.Windows.Click         Sped Contábil
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      SPED Contábil (1) 
    BaseDesktop.Screenshot    SPED Contábil (1)     ${Caminho_Screenshots}Sped Contábil/Gerar Sped Contábil
    Fechar janela

Sped Contábil > Conglomerados Econômicos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Sped Contábil/                       ERRO Conglomerados Econômicos
    Consultas
    RPA.Windows.Click         Sped Contábil
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Conglomerados Econômicos (1)
    BaseDesktop.Screenshot    Cadastro de Conglomerados Econômicos (1)     ${Caminho_Screenshots}Sped Contábil/Conglomerados Econômicos
    Fechar janela

Sped Contábil > Conglomerados Eliminações
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Sped Contábil/                       ERRO Conglomerados Eliminações
    Consultas
    RPA.Windows.Click         Sped Contábil
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Eliminações de Conglomerados (1) 
    BaseDesktop.Screenshot    Eliminações de Conglomerados (1)     ${Caminho_Screenshots}Sped Contábil/Conglomerados Eliminações
    Fechar janela

Sped Contábil > Cadastro de SCP
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Sped Contábil/                       ERRO Cadastro de SCP
    Consultas
    RPA.Windows.Click         Sped Contábil
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Cadastro de SCP para Sped Contábil (1) 
    BaseDesktop.Screenshot    Cadastro de SCP para Sped Contábil (1)     ${Caminho_Screenshots}Sped Contábil/Cadastro de SCP
    RPA.Windows.Click        Fechar

Sped Contábil > Transferência de Plano de Contas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Sped Contábil/                       ERRO Transferência de Plano de Contas
    Consultas
    RPA.Windows.Click         Sped Contábil
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Transferência de Plano de Contas (1) 
    BaseDesktop.Screenshot    Transferência de Plano de Contas (1)     ${Caminho_Screenshots}Sped Contábil/Transferência de Plano de Contas
    Fechar janela

Consulta CMV por período
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Consulta CMV por período
    Consultas
    RPA.Windows.Click         Consulta CMV por período
    RPA.Windows.Get Text      Consulta CMV por período (1) 
    BaseDesktop.Screenshot    Consulta CMV por período (1)     ${Caminho_Screenshots}Consulta CMV por período
    Fechar janela

Consulta de Alterações de Lançamentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                       ERRO Consulta de Alterações de Lançamentos
    Consultas
    RPA.Windows.Click         Consulta de Alterações de Lançamentos
    RPA.Windows.Get Text      Consulta Log de Lançamentos Contábeis (1) 
    BaseDesktop.Screenshot    Consulta Log de Lançamentos Contábeis (1)     ${Caminho_Screenshots}Consulta de Alterações de Lançamentos
    Fechar janela

Encerrar
    Encerrar tudo