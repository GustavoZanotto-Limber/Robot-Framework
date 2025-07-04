*** Settings ***
Documentation    Smoke Test: Fiscal
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}



*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Fiscal/Movimentos/    
${nome_print}
${nome_exe}=    cde_win_fis
*** Keywords ***

Movimentos
    [Arguments]    ${nome}
    Cadastros
    Repetidor de teclas    right    1
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Liberações > Lançamentos de Entrada
    ${nome_print}=     Set Variable     Lançamentos de Entrada
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Liberações
    RPA.Desktop.Press Keys    L  
    RPA.Windows.Get Text      Liberação de Lançamentos Fiscais de Entrada (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Liberação de Lançamentos Fiscais de Entrada (1)    ${Caminho_Screenshots}Liberações/Lançamentos de Entrada
    RPA.Windows.Click         Confirmar
    Fechar janela

Liberações > Lançamentos de Saída
    ${nome_print}=     Set Variable     Lançamentos de Saída
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Liberações
    RPA.Desktop.Press Keys    A  
    RPA.Windows.Get Text      Liberação de Lançamentos Fiscais de Saídas (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Liberação de Lançamentos Fiscais de Saídas (1)    ${Caminho_Screenshots}Liberações/Lançamentos de Saída
    RPA.Windows.Click         Confirmar
    Fechar janela

Estornar Liberações > Lançamentos de Entrada
    ${nome_print}=     Set Variable     Lançamentos de Entrada
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Estornar Liberações
    RPA.Desktop.Press Keys    L  
    RPA.Windows.Get Text      Estorno de Liberação de Lançamentos Fiscais de Entrada (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Estorno de Liberação de Lançamentos Fiscais de Entrada (1)    ${Caminho_Screenshots}Estornar Liberações/Lançamentos de Entrada
    RPA.Windows.Click         Confirmar
    Fechar janela

Estornar Liberações > Lançamentos de Saída
    ${nome_print}=     Set Variable     Lançamentos de Saída
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Estornar Liberações
    RPA.Desktop.Press Keys    A  
    RPA.Windows.Get Text      Estorno de Liberação de Lançamentos Fiscais de Saídas (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Estorno de Liberação de Lançamentos Fiscais de Saídas (1)    ${Caminho_Screenshots}Estornar Liberações/Lançamentos de Saída
    RPA.Windows.Click         Confirmar
    Fechar janela

Informações > Complementares de ICMS
    ${nome_print}=     Set Variable     Complementares de ICMS
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos              Informações
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Informações Complementares ICMS (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Informações Complementares ICMS (1)    ${Caminho_Screenshots}Informações/Complementares de ICMS
    Fechar janela

Informações > Obrigações do ICMS a recolher
    ${nome_print}=     Set Variable     Obrigações do ICMS a recolher
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos              Informações
    RPA.Desktop.Press Keys  O  
    RPA.Windows.Get Text    Obrigações do ICMS a Recolher (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Obrigações do ICMS a Recolher (1)    ${Caminho_Screenshots}Informações/Obrigações do ICMS a recolher
    Fechar com Sim

Informações > Obrigações do PIS/Cofins a recolher
    ${nome_print}=     Set Variable     Obrigações do PIS_Cofins a recolher
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos              Informações
    RPA.Desktop.Press Keys  B  
    RPA.Windows.Get Text    Obrigações do PIS/COFINS a Recolher (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Obrigações do PIS/COFINS a Recolher (1)    ${Caminho_Screenshots}Informações/Obrigações do PIS_Cofins a recolher
    Fechar com Sim

Outros > ICMS > Outros Débitos
    ${nome_print}=     Set Variable     Outros Débitos
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    O  
    RPA.Windows.Get Text      Outros Débitos ICMS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Outros Débitos ICMS (1)    ${Caminho_Screenshots}Outros/ICMS/Outros Débitos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > ICMS > Estorno de Créditos
    ${nome_print}=     Set Variable     Estorno de Créditos
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    E  
    RPA.Windows.Get Text      Estorno Créditos ICMS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Estorno Créditos ICMS (1)    ${Caminho_Screenshots}Outros/ICMS/Estorno de Créditos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > ICMS > Outros Créditos
    ${nome_print}=     Set Variable     Outros Créditos
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    U  
    RPA.Windows.Get Text      Outros Créditos ICMS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Outros Créditos ICMS (1)    ${Caminho_Screenshots}Outros/ICMS/Outros Créditos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > ICMS > Estorno de Débitos
    ${nome_print}=     Set Variable     Estorno de Débitos
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    S  
    RPA.Windows.Get Text      Estorno Débitos ICMS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Estorno Débitos ICMS (1)   ${Caminho_Screenshots}Outros/ICMS/Estorno de Débitos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > ICMS > Específicos > SC
    ${nome_print}=     Set Variable     SC
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         ICMS
    RPA.Windows.Click         Específicos
    RPA.Desktop.Press Keys    S  
    RPA.Windows.Get Text      Débitos/Créditos Específicos-SC (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Débitos/Créditos Específicos-SC (1)    ${Caminho_Screenshots}Outros/ICMS/Específicos/SC        
    Fechar janela
    RPA.Windows.Click         Sim

Outros > ICMS > Específicos > Apuração de Crédito de ICMS - TTD
    ${nome_print}=     Set Variable     Apuração de Crédito de ICMS - TTD
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         ICMS
    RPA.Windows.Click         Específicos
    RPA.Desktop.Press Keys    A  
    RPA.Windows.Get Text      Apuração de Crédito de ICMS (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Apuração de Crédito de ICMS (1)    ${Caminho_Screenshots}Outros/ICMS/Específicos/Apuração de Crédito de ICMS - TTD        
    RPA.Windows.Click         OK
    Fechar janela

Outros > ICMS > Deduções
    ${nome_print}=     Set Variable     Deduções
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    D  
    RPA.Windows.Get Text      Deduções Fiscais (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Deduções Fiscais (1)    ${Caminho_Screenshots}Outros/ICMS/Deduções
    Fechar janela
    RPA.Windows.Click         Sim

Outros > IPI > Outros Débitos
    ${nome_print}=     Set Variable     Outros Débitos
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         IPI
    RPA.Desktop.Press Keys    O  
    RPA.Windows.Get Text      Outros Débitos IPI (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Outros Débitos IPI (1)   ${Caminho_Screenshots}Outros/IPI/Outros Débitos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > IPI > Estorno de Créditos
    ${nome_print}=     Set Variable     Estorno de Créditos
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         IPI
    RPA.Desktop.Press Keys    E  
    RPA.Windows.Get Text      Estorno Créditos IPI (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Estorno Créditos IPI (1)   ${Caminho_Screenshots}Outros/IPI/Estorno de Créditos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > IPI > Outros Créditos
    ${nome_print}=     Set Variable     Outros Créditos
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         IPI
    RPA.Desktop.Press Keys    U  
    RPA.Windows.Get Text      Outros Creditos IPI (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Outros Creditos IPI (1)   ${Caminho_Screenshots}Outros/IPI/Outros Créditos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > IPI > Estorno de Débitos
    ${nome_print}=     Set Variable     Estorno de Débitos
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         IPI
    RPA.Desktop.Press Keys    S  
    RPA.Windows.Get Text      Estorno Débitos IPI (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Estorno Débitos IPI (1)   ${Caminho_Screenshots}Outros/IPI/Estorno de Débitos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > Outras Bases > PIS > Outras Receitas - PIS
    ${nome_print}=     Set Variable     Outras Receitas - PIS
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         Outras Bases
    RPA.Windows.Click         PIS
    RPA.Desktop.Press Keys    O  
    RPA.Windows.Get Text      Outras Receitas - PIS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Outras Receitas - PIS (1)   ${Caminho_Screenshots}Outros/Outras Bases/PIS/Outras Receitas - PIS
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Outros > Outras Bases > PIS > Deduções - PIS
    ${nome_print}=     Set Variable     Deduções - PIS
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         Outras Bases
    RPA.Windows.Click         PIS
    RPA.Desktop.Press Keys    D  
    RPA.Windows.Get Text      Deduções - PIS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Deduções - PIS (1)   ${Caminho_Screenshots}Outros/Outras Bases/PIS/Deduções - PIS
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Outros > Outras Bases > PIS > Compensações - PIS
    ${nome_print}=     Set Variable     Compensações - PIS
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         Outras Bases
    RPA.Windows.Click         PIS
    RPA.Desktop.Press Keys    C  
    RPA.Windows.Get Text      Compensações - PIS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Compensações - PIS (1)   ${Caminho_Screenshots}Outros/Outras Bases/PIS/Compensações - PIS
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Outros > Outras Bases > COFINS > Outras Receitas - COFINS
    ${nome_print}=     Set Variable     Outras Receitas - COFINS
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         Outras Bases
    RPA.Desktop.Press Keys    C
    RPA.Desktop.Press Keys    O  
    RPA.Windows.Get Text      Outras Receitas - COFINS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Outras Receitas - COFINS (1)   ${Caminho_Screenshots}Outros/Outras Bases/COFINS/Outras Receitas - COFINS
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Outros > Outras Bases > COFINS > Deduções - COFINS
    ${nome_print}=     Set Variable     Deduções - COFINS
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         Outras Bases
    RPA.Desktop.Press Keys    C
    RPA.Desktop.Press Keys    D  
    RPA.Windows.Get Text      Deduções - COFINS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Deduções - COFINS (1)   ${Caminho_Screenshots}Outros/Outras Bases/COFINS/Deduções - COFINS
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Outros > Outras Bases > COFINS > Compensações - COFINS
    ${nome_print}=     Set Variable     Compensações - COFINS
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         Outras Bases
    RPA.Desktop.Press Keys    C
    RPA.Desktop.Press Keys    C  
    RPA.Windows.Get Text      Compensações - COFINS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Compensações - COFINS (1)   ${Caminho_Screenshots}Outros/Outras Bases/COFINS/Compensações - COFINS
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Outros > Outras Bases > CS > Outras Receitas - CS
    ${nome_print}=     Set Variable     Outras Receitas - CS
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         Outras Bases
    RPA.Windows.Click         CS
    RPA.Desktop.Press Keys    O  
    RPA.Windows.Get Text      Outras Receitas - Contribuição Social (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Outras Receitas - Contribuição Social (1)   ${Caminho_Screenshots}Outros/Outras Bases/CS/Outras Receitas - CS
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Outros > Outras Bases > CS > Deduções - CS
    ${nome_print}=     Set Variable     Deduções - CS
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         Outras Bases
    RPA.Windows.Click         CS
    RPA.Desktop.Press Keys    D  
    RPA.Windows.Get Text      Deduções - Contribuição Social (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Deduções - Contribuição Social (1)   ${Caminho_Screenshots}Outros/Outras Bases/CS/Deduções - CS
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Outros > Outras Bases > CS > Compensações - CS
    ${nome_print}=     Set Variable     Compensações - CS
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         Outras Bases
    RPA.Windows.Click         CS
    RPA.Desktop.Press Keys    C  
    RPA.Windows.Get Text      Compensações Contribuição Social (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Compensações Contribuição Social (1)   ${Caminho_Screenshots}Outros/Outras Bases/CS/Compensações - CS
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Outros > Outras Bases > IRPJ > Demais Resultados - IRPJ
    ${nome_print}=     Set Variable     Demais Resultados - IRPJ
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         Outras Bases
    RPA.Windows.Click         IRPJ
    RPA.Desktop.Press Keys    D  
    RPA.Windows.Get Text      Demais Resultados P/IRPJ (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Demais Resultados P/IRPJ (1)   ${Caminho_Screenshots}Outros/Outras Bases/IRPJ/Demais Resultados - IRPJ
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Outros > Outras Bases > IRPJ > Deduções - IRPJ
    ${nome_print}=     Set Variable     Deduções - IRPJ
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         Outras Bases
    RPA.Windows.Click         IRPJ
    RPA.Desktop.Press Keys    E  
    RPA.Windows.Get Text      Deduções Base IRPJ (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Deduções Base IRPJ (1)   ${Caminho_Screenshots}Outros/Outras Bases/IRPJ/Deduções - IRPJ
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Outros > Outras Bases > IRPJ > Compensações - IRPJ
    ${nome_print}=     Set Variable     Compensações - IRPJ
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         Outras Bases
    RPA.Windows.Click         IRPJ
    RPA.Desktop.Press Keys    C  
    RPA.Windows.Get Text      Compensações P/IRPJ (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Compensações P/IRPJ (1)   ${Caminho_Screenshots}Outros/Outras Bases/IRPJ/Compensações - IRPJ
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Outros > Outras Bases > IRPJ > Outras Deduções do IRF p/ IRPJ - IRPJ
    ${nome_print}=     Set Variable     Outras Deduções do IRF p_ IRPJ - IRPJ
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         Outras Bases
    RPA.Windows.Click         IRPJ
    RPA.Desktop.Press Keys    O  
    RPA.Windows.Get Text      IRF/Outras Deduções P/IRPJ (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    IRF/Outras Deduções P/IRPJ (1)   ${Caminho_Screenshots}Outros/Outras Bases/IRPJ/Outras Deduções do IRF p_ IRPJ - IRPJ
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Outros > PIS/COFINS > Lançamentos
    ${nome_print}=     Set Variable     Lançamentos
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         PIS/COFINS
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Lançamento PIS/COFINS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Lançamento PIS/COFINS (1)   ${Caminho_Screenshots}Outros/PIS_COFINS/Lançamentos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > PIS/COFINS > Informações > Ajustes Bebidas
    ${nome_print}=     Set Variable     Ajustes Bebidas
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         PIS/COFINS
    RPA.Windows.Click         Informações
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Ajustes Mensais de Bebidas PIS/COFINS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Ajustes Mensais de Bebidas PIS/COFINS (1)   ${Caminho_Screenshots}Outros/PIS_COFINS/Informações/Ajustes Bebidas
    Fechar janela
    RPA.Windows.Click         Sim    

Outros > PIS/COFINS > Informações > Créditos Não Cumulativos
    ${nome_print}=     Set Variable     Créditos Não Cumulativos
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         PIS/COFINS
    RPA.Windows.Click         Informações
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Crédito PIS/COFINS Não Cumulativos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Crédito PIS/COFINS Não Cumulativos (1)   ${Caminho_Screenshots}Outros/PIS_COFINS/Informações/Créditos Não Cumulativos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > PIS/COFINS > Lançamento de Crédito do Pis/Cofins
    ${nome_print}=     Set Variable     Lançamento de Crédito do Pis_Cofins
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         PIS/COFINS
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Lançamento de Crédito do Pis/Cofins (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Lançamento de Crédito do Pis/Cofins (1)   ${Caminho_Screenshots}Outros/PIS_COFINS/Lançamento de Crédito do Pis_Cofins
    Fechar janela
    RPA.Windows.Click         Sim

Outros > PIS/COFINS > Utilização de Crédito de Pis/Cofins
    ${nome_print}=     Set Variable     Utilização de Crédito de Pis_Cofins
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         PIS/COFINS
    RPA.Desktop.Press Keys    U
    RPA.Windows.Get Text      Lançamentos de Utilização de Créditos do Pis/Cofins (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Lançamentos de Utilização de Créditos do Pis/Cofins (1)   ${Caminho_Screenshots}Outros/PIS_COFINS/Utilização de Crédito de Pis_Cofins
    Fechar janela
    RPA.Windows.Click         Sim

Outros > PIS/COFINS > Gerar Lançamentos Automáticos
    ${nome_print}=     Set Variable     Gerar Lançamentos Automáticos
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         PIS/COFINS
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Gerar Lançamento Automático. (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Gerar Lançamento Automático. (1)   ${Caminho_Screenshots}Outros/PIS_COFINS/Gerar Lançamentos Automáticos
    RPA.Windows.Click         Confirmar
    Fechar janela

Outros > PIS/COFINS > Estornar Lançamentos Automáticos
    ${nome_print}=     Set Variable     Estornar Lançamentos Automáticos
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         PIS/COFINS
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Estorna Lançamento Automático. (1)
    RPA.Desktop.Press Keys    Shift    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Estorna Lançamento Automático. (1)   ${Caminho_Screenshots}Outros/PIS_COFINS/Estornar Lançamentos Automáticos
    RPA.Windows.Click         Confirmar
    Fechar janela

Outros > Exportações > Exportações
    ${nome_print}=     Set Variable     Exportações
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         Exportações
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Informações sobre Exportações (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Informações sobre Exportações (1)          ${Caminho_Screenshots}Outros/Exportações/Exportações
    Fechar janela
    RPA.Windows.Click         Sim

Outros > Exportações > Saldo de NF's p/ Exportação
    ${nome_print}=     Set Variable     Saldo de NF's p/ Exportação
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         Exportações
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Consulta de Saldo de NF's para Exportação (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Consulta de Saldo de NF's para Exportação (1)          ${Caminho_Screenshots}Outros/Exportações/Saldo de NF's p/ Exportação
    RPA.Windows.Click         Confirmar
    Fechar janela

Outros > Exportações > PH > S-1250
    ${nome_print}=     Set Variable     S-1250
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Outros
    RPA.Windows.Click         Exportações
    RPA.Windows.Click         PH
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      S-1250 (1)
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    S-1250 (1)          ${Caminho_Screenshots}Outros/Exportações/PH/S-1250
    RPA.Windows.Click         Confirmar
    Fechar janela

Alterar Lcto Entrada
    ${nome_print}=     Set Variable     Alterar Lcto Entrada
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Alterar Lcto Entrada
    RPA.Windows.Get Text      Entradas/Compras - Incluir/Alterar (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Entradas/Compras - Incluir/Alterar (1)         ${Caminho_Screenshots}Alterar Lcto Entrada
    Fechar janela

Alterar Lcto Saída
    ${nome_print}=     Set Variable     Alterar Lcto Saída
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Alterar Lcto Saída
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Alterar Saídas/Vendas (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    RPA.Windows.Click         Confirmar
    BaseDesktop.Screenshot    Saidas/Vendas - Produtos - Alterar Saídas/Vendas (1)         ${Caminho_Screenshots}Alterar Lcto Saída
    Fechar janela

Processos Personalizados
    ${nome_print}=     Set Variable     Processos Personalizados
    [Tags]    Fiscal   Movimentos   SmokeTest
    Movimentos                Processos Personalizados
    RPA.Windows.Get Text      Processos Personalizados (1)
    RPA.Windows.Click         Cadastrar Novo Processo
    BaseDesktop.Screenshot    Processos Personalizados (1)         ${Caminho_Screenshots}Processos Personalizados
    RPA.Windows.Click         Sair
    Fechar janela