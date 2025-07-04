*** Settings ***
Documentation    Smoke Test: Contábil
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}



*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Contábil/Movimentação/    
${nome_print}
${nome_exe}=    cde_win_ctb
*** Keywords ***

Movimentação
    Cadastros
    repetidor de teclas    Right    1

*** Test Cases ***

Lançamentos Contábeis
    ${nome_print}=     Set Variable     Lançamentos Contábeis
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Lançamentos Contábeis
    RPA.Windows.Get Text      Lançamentos Contábeis (1)  
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Lançamentos Contábeis (1)      ${Caminho_Screenshots}Lançamentos Contábeis
    Fechar com Sim

Lançamentos Contábeis por Lote
    ${nome_print}=     Set Variable     Lançamentos Contábeis por Lote
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Lançamentos Contábeis por Lote
    RPA.Windows.Get Text      Lançamento contabil por lote (1)  
    RPA.Windows.Click         Novo Lote
    BaseDesktop.Screenshot    Lançamento contabil por lote (1)      ${Caminho_Screenshots}Lançamentos Contábeis por Lote
    Fechar janela

Manutenção de Lançamentos contábeis
    ${nome_print}=     Set Variable     Manutenção de Lançamentos contábeis
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Manutenção de Lançamentos contábeis
    RPA.Windows.Get Text      Manutenção de Lançamentos contábeis (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Manutenção de Lançamentos contábeis (1)      ${Caminho_Screenshots}Manutenção de Lançamentos contábeis
    RPA.Windows.Click         OK
    Fechar janela

Liberação de Lançamentos
    ${nome_print}=     Set Variable     Liberação de Lançamentos
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Liberação de Lançamentos
    RPA.Windows.Get Text      Liberação de Lançamentos (1) 
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Liberação de Lançamentos (1)     ${Caminho_Screenshots}Liberação de Lançamentos
    Fechar janela

Estornar Liberação
    ${nome_print}=     Set Variable     Estornar Liberação
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Estornar Liberação
    RPA.Windows.Get Text      Estorno de Liberação de Lançamentos (1)
    RPA.Windows.Click         Executar
    BaseDesktop.Screenshot    Estorno de Liberação de Lançamentos (1)      ${Caminho_Screenshots}Estornar Liberação
    RPA.Windows.Click         OK
    Fechar janela

Zeramento de Contas > Zeramento de Contas
    ${nome_print}=     Set Variable     Zeramento de Contas
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Zeramento de Contas
    RPA.Desktop.Press Keys    Z
    RPA.Windows.Get Text      Zeramento de Contas (1) 
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Zeramento de Contas (1)      ${Caminho_Screenshots}Zeramento de Contas/Zeramento de Contas
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         Fechar

Zeramento de Contas > Estornar Zeramento
    ${nome_print}=     Set Variable     Estornar Zeramento
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Zeramento de Contas
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Estornar Zeramento de Contas (1) 
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Estornar Zeramento de Contas (1)      ${Caminho_Screenshots}Zeramento de Contas/Estornar Zeramento
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         Fechar

Zeramento de Contas > Parâmetros Zeramento
    ${nome_print}=     Set Variable     Parâmetros Zeramento
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Zeramento de Contas
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Parâmetros de Zeramento (1) 
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Parâmetros de Zeramento (1)      ${Caminho_Screenshots}Zeramento de Contas/Parâmetros Zeramento
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         Sim
    Fechar com Sim

Conciliação de Cheques Emitidos
    ${nome_print}=     Set Variable     Conciliação de Cheques Emitidos
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    repetidor de teclas   Down       6
    RPA.Desktop.Press Keys    Enter
    RPA.Windows.Get Text      Conciliação de Cheques Emitidos 
    RPA.Windows.Click         Executar
    BaseDesktop.Screenshot    Conciliação de Cheques Emitidos      ${Caminho_Screenshots}Conciliação de Cheques Emitidos
    RPA.Windows.Click         OK
    Fechar janela

Estorna Conciliação
    ${nome_print}=     Set Variable     Estorna Conciliação
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    repetidor de teclas   Down       7
    RPA.Desktop.Press Keys    Enter
    RPA.Windows.Get Text      Estorna Conciliação de Lançamentos Bancários (1) 
    RPA.Windows.Click         Executar
    BaseDesktop.Screenshot    Estorna Conciliação de Lançamentos Bancários (1)      ${Caminho_Screenshots}Estorna Conciliação
    RPA.Windows.Click         OK
    Fechar janela

Apropriação de custos
    ${nome_print}=     Set Variable     Apropriação de custos
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Apropriação de custos
    RPA.Windows.Get Text      Apropriação de Custos (1) 
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Apropriação de Custos (1)      ${Caminho_Screenshots}Apropriação de custos
    RPA.Windows.Click         OK
    Fechar janela

Apropriação de consumo de adiantamentos
    ${nome_print}=     Set Variable     Apropriação de consumo de adiantamentos
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Apropriação de consumo de adiantamentos
    RPA.Windows.Get Text      Apropriação de consumo de adiantamento (1)  
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Apropriação de consumo de adiantamento (1)     ${Caminho_Screenshots}Apropriação de consumo de adiantamentos
    Fechar janela

Apropriação de despesas antecipadas
    ${nome_print}=     Set Variable     Apropriação de despesas antecipadas
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Apropriação de despesas antecipadas
    RPA.Windows.Get Text      Apropriação de Despesas Antecipadas (1)  
    RPA.Windows.Click         Gerar
    BaseDesktop.Screenshot    Apropriação de Despesas Antecipadas (1)      ${Caminho_Screenshots}Apropriação de despesas antecipadas
    RPA.Windows.Click         OK
    Fechar janela

Estornar Apropriação por Rateio de Contas
    ${nome_print}=     Set Variable     Estornar Apropriação por Rateio de Contas
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Estornar Apropriação por Rateio de Contas
    RPA.Windows.Get Text      Estornar Apropriação por Rateio de Contas (1)  
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Estornar Apropriação por Rateio de Contas (1)     ${Caminho_Screenshots}Estornar Apropriação por Rateio de Contas
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         Fechar

Rateio Cooperativismo > Método 1
    ${nome_print}=     Set Variable     Método 1
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Rateio Cooperativismo
    RPA.Desktop.Press Keys    1
    RPA.Windows.Get Text      Apropriação por Rateio de Contas - Método 1 (1) 
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Apropriação por Rateio de Contas - Método 1 (1)      ${Caminho_Screenshots}Rateio Cooperativismo/Método 1
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         Fechar

Rateio Cooperativismo > Método 2
    ${nome_print}=     Set Variable     Método 2
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Rateio Cooperativismo
    RPA.Desktop.Press Keys    2
    RPA.Windows.Get Text      Apropriação por Rateio de Contas - Método 2 (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Apropriação por Rateio de Contas - Método 2 (1)      ${Caminho_Screenshots}Rateio Cooperativismo/Método 2
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Rateio Cooperativismo > Método 3 - Setor
    ${nome_print}=     Set Variable     Método 3 - Setor
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Rateio Cooperativismo
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Rateio Cooperativismo - Método 3 Setor (1) 
    RPA.Windows.Click         Rateio Cooperado
    BaseDesktop.Screenshot    Rateio Cooperativismo - Método 3 Setor (1)      ${Caminho_Screenshots}Rateio Cooperativismo/Método 3 - Setor
    Fechar janela

Bloqueia Lançamentos
    ${nome_print}=     Set Variable     Bloqueia Lançamentos
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Bloqueia Lançamentos
    RPA.Windows.Get Text      Bloqueia Lançamentos (1)  
    repetidor de teclas       tab        2     
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Bloqueia Lançamentos (1)      ${Caminho_Screenshots}Bloqueia Lançamentos
    RPA.Windows.Click         Confirmar
    Fechar janela

Controle Patrimonial > Cálculo_Geração da Depreciação
    ${nome_print}=     Set Variable     Cálculo_Geração da Depreciação
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Controle Patrimonial
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cálculo/Geração da Depreciação (1) 
    repetidor de teclas       tab        2   
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Cálculo/Geração da Depreciação (1)      ${Caminho_Screenshots}Controle Patrimonial/Cálculo_Geração da Depreciação
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

Controle Patrimonial > Consulta de Depreciação
    ${nome_print}=     Set Variable     Consulta de Depreciação
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Controle Patrimonial
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Consulta de Depreciação (1)  
    repetidor de teclas       tab        3   
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Consulta de Depreciação (1)      ${Caminho_Screenshots}Controle Patrimonial/Consulta de Depreciação
    RPA.Windows.Click         Confirmar
    Fechar janela

Controle Patrimonial > Estornar Depreciação
    ${nome_print}=     Set Variable     Estornar Depreciação
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Controle Patrimonial
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Estorno de Depreciação (1) 
    RPA.Desktop.Press Keys    Tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Estorno de Depreciação (1)      ${Caminho_Screenshots}Controle Patrimonial/Estornar Depreciação
    RPA.Windows.Click         Confirmar
    Fechar janela

Controle Patrimonial > Consulta da Ficha CIAP
    ${nome_print}=     Set Variable     Consulta da Ficha CIAP
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Controle Patrimonial
    RPA.Desktop.Press Keys    N
    RPA.Windows.Get Text      Consulta da Ficha CIAP (1)  
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Consulta da Ficha CIAP (1)      ${Caminho_Screenshots}Controle Patrimonial/Consulta da Ficha CIAP
    RPA.Windows.Click         Confirmar
    Fechar janela

Controle Patrimonial > Emissão de Crédito do CIAP
    ${nome_print}=     Set Variable     Emissão de Crédito do CIAP
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Controle Patrimonial
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Emissão do Crédito CIAP (1)
    RPA.Windows.Click         Gerar Crédito  
    BaseDesktop.Screenshot    Emissão do Crédito CIAP (1)      ${Caminho_Screenshots}Controle Patrimonial/Emissão de Crédito do CIAP
    RPA.Windows.Click         OK
    RPA.Windows.Click         Fechar

Controle Patrimonial > Estorno de Crédito do CIAP
    ${nome_print}=     Set Variable     Estorno de Crédito do CIAP
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Controle Patrimonial
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Estorno de Crédito CIAP 
    RPA.Windows.Click         Estorno de Crédito
    BaseDesktop.Screenshot    Estorno de Crédito CIAP      ${Caminho_Screenshots}Controle Patrimonial/Estorno de Crédito do CIAP
    RPA.Windows.Click         OK
    RPA.Windows.Click         Fechar

Controle Patrimonial > Ajuste de Fator do CIAP
    ${nome_print}=     Set Variable     Ajuste de Fator do CIAP
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Controle Patrimonial
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Ajuste do Fator do Crédito CIAP (1) 
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Ajuste do Fator do Crédito CIAP (1)      ${Caminho_Screenshots}Controle Patrimonial/Ajuste de Fator do CIAP
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         Fechar

Controle Patrimonial > Consulta Fator CIAP
    ${nome_print}=     Set Variable     Consulta Fator CIAP
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Controle Patrimonial
    RPA.Desktop.Press Keys    U
    RPA.Windows.Get Text      Consulta Fator CIAP (1) 
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Consulta Fator CIAP (1)      ${Caminho_Screenshots}Controle Patrimonial/Consulta Fator CIAP
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

CMV > Cálculo_Geração do CMV
    ${nome_print}=     Set Variable     Cálculo_Geração do CMV
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         CMV
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cálculo/Geração do CMV (1)  
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Cálculo/Geração do CMV (1)      ${Caminho_Screenshots}CMV/Cálculo_Geração do CMV
    RPA.Windows.Click         OK
    Fechar com OK

CMV > Preço de Mercado
    ${nome_print}=     Set Variable     Preço de Mercado
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         CMV
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Cadastro Preço de Mercado (1)  
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Cadastro Preço de Mercado (1)      ${Caminho_Screenshots}CMV/Preço de Mercado
    Fechar janela

CMV > Cálculo_Geração do CMV por período
    ${nome_print}=     Set Variable     Cálculo_Geração do CMV por período
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         CMV
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Cálculo/Geração do CMV por período (1) 
    RPA.Windows.Click         Processar 
    BaseDesktop.Screenshot    Cálculo/Geração do CMV por período (1)      ${Caminho_Screenshots}CMV/Cálculo/Geração do CMV por período
    RPA.Windows.Click         OK
    Fechar janela

CMV > Estorna CMV por período
    ${nome_print}=     Set Variable     Estorna CMV por período
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         CMV
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Estorna CMV por Período (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Estorna CMV por Período (1)     ${Caminho_Screenshots}CMV/Estorna CMV por período
    RPA.Windows.Click         Confirmar
    Fechar janela

Processos Personalizados
    ${nome_print}=     Set Variable     Processos Personalizados
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Processos Personalizados
    RPA.Windows.Get Text      Processos Personalizados (1)
    RPA.Windows.Click         Cadastrar Novo Processo
    BaseDesktop.Screenshot    Processos Personalizados (1)    ${Caminho_Screenshots}Processos Personalizados
    RPA.Windows.Click         Fechar
    Fechar janela

Ajuste a Valor Presente > Configuração
    ${nome_print}=     Set Variable     Configuração
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Ajuste a Valor Presente 
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de configuração de ajuste a valor Presente (1) 
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de configuração de ajuste a valor Presente (1)     ${Caminho_Screenshots}Ajuste a Valor Presente/Configuração
    Fechar com Sim

Ajuste a Valor Presente > Execução do Ajuste
    ${nome_print}=     Set Variable     Execução do Ajuste
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Ajuste a Valor Presente 
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Execução do ajuste a valor presente (1) 
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseDesktop.Screenshot    Execução do ajuste a valor presente (1)      ${Caminho_Screenshots}Ajuste a Valor Presente/Execução do Ajuste
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

Ajuste a Valor Presente > Consulta do Ajuste
    ${nome_print}=     Set Variable     Consulta do Ajuste
    [Tags]     Contábil    Movimentação   SmokeTest
    Movimentação
    RPA.Windows.Click         Ajuste a Valor Presente 
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Consulta de ajuste a valor presente (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Consulta de ajuste a valor presente (1)      ${Caminho_Screenshots}Ajuste a Valor Presente/Consulta do Ajuste
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela