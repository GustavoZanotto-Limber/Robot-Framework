*** Settings ***
Documentation    Smoke Test: Movimentos
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_fis


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Fiscal/Movimentos/    

*** Keywords ***

Movimentos
    [Arguments]    ${nome}
    Cadastros
    Repetidor de teclas    right    1
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Liberações > Lançamentos de Entrada
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Liberações/                         Lançamentos de Entrada
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Liberações/                         Lançamentos de Saída
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Estornar Liberações/                         Lançamentos de Entrada
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Estornar Liberações/                         Lançamentos de Saída
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
    [Teardown]              Caso aconteça erro           ${Caminho_Screenshots}Informações/                         Complementares de ICMS
    Movimentos              Informações
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Informações Complementares ICMS (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Informações Complementares ICMS (1)    ${Caminho_Screenshots}Informações/Complementares de ICMS
    Fechar janela


Informações > Obrigações do ICMS a recolher
    [Teardown]              Caso aconteça erro           ${Caminho_Screenshots}Informações/                         Obrigações do ICMS a recolher
    Movimentos              Informações
    RPA.Desktop.Press Keys  O  
    RPA.Windows.Get Text    Obrigações do ICMS a Recolher (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Obrigações do ICMS a Recolher (1)    ${Caminho_Screenshots}Informações/Obrigações do ICMS a recolher
    Fechar com Sim

Informações > Obrigações do PIS/Cofins a recolher
    [Teardown]              Caso aconteça erro           ${Caminho_Screenshots}Informações/                         Obrigações do PIS_Cofins a recolher
    Movimentos              Informações
    RPA.Desktop.Press Keys  B  
    RPA.Windows.Get Text    Obrigações do PIS/COFINS a Recolher (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Obrigações do PIS/COFINS a Recolher (1)    ${Caminho_Screenshots}Informações/Obrigações do PIS_Cofins a recolher
    Fechar com Sim

Outros > ICMS > Outros Débitos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/ICMS/                         Outros Débitos
    Movimentos                Outros
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    O  
    RPA.Windows.Get Text      Outros Débitos ICMS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Outros Débitos ICMS (1)    ${Caminho_Screenshots}Outros/ICMS/Outros Débitos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > ICMS > Estorno de Créditos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/ICMS/                         Estorno de Créditos
    Movimentos                Outros
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    E  
    RPA.Windows.Get Text      Estorno Créditos ICMS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Estorno Créditos ICMS (1)    ${Caminho_Screenshots}Outros/ICMS/Estorno de Créditos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > ICMS > Outros Créditos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/ICMS/                         Outros Créditos
    Movimentos                Outros
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    U  
    RPA.Windows.Get Text      Outros Créditos ICMS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Outros Créditos ICMS (1)    ${Caminho_Screenshots}Outros/ICMS/Outros Créditos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > ICMS > Estorno de Débitos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/ICMS/                         Estorno de Débitos
    Movimentos                Outros
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    S  
    RPA.Windows.Get Text      Estorno Débitos ICMS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Estorno Débitos ICMS (1)   ${Caminho_Screenshots}Outros/ICMS/Estorno de Débitos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > ICMS > Específicos > SC
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/ICMS/Específicos/            SC
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/ICMS/Específicos/            Apuração de Crédito de ICMS - TTD
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/ICMS/                         Deduções
    Movimentos                Outros
    RPA.Windows.Click         ICMS
    RPA.Desktop.Press Keys    D  
    RPA.Windows.Get Text      Deduções Fiscais (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Deduções Fiscais (1)    ${Caminho_Screenshots}Outros/ICMS/Deduções
    Fechar janela
    RPA.Windows.Click         Sim

Outros > IPI > Outros Débitos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/IPI/                         Outros Débitos
    Movimentos                Outros
    RPA.Windows.Click         IPI
    RPA.Desktop.Press Keys    O  
    RPA.Windows.Get Text      Outros Débitos IPI (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Outros Débitos IPI (1)   ${Caminho_Screenshots}Outros/IPI/Outros Débitos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > IPI > Estorno de Créditos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/IPI/                         Estorno de Créditos
    Movimentos                Outros
    RPA.Windows.Click         IPI
    RPA.Desktop.Press Keys    E  
    RPA.Windows.Get Text      Estorno Créditos IPI (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Estorno Créditos IPI (1)   ${Caminho_Screenshots}Outros/IPI/Estorno de Créditos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > IPI > Outros Créditos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/IPI/                         Outros Créditos
    Movimentos                Outros
    RPA.Windows.Click         IPI
    RPA.Desktop.Press Keys    U  
    RPA.Windows.Get Text      Outros Creditos IPI (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Outros Creditos IPI (1)   ${Caminho_Screenshots}Outros/IPI/Outros Créditos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > IPI > Estorno de Débitos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/IPI/                         Estorno de Débitos
    Movimentos                Outros
    RPA.Windows.Click         IPI
    RPA.Desktop.Press Keys    S  
    RPA.Windows.Get Text      Estorno Débitos IPI (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Estorno Débitos IPI (1)   ${Caminho_Screenshots}Outros/IPI/Estorno de Débitos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > Outras Bases > PIS > Outras Receitas - PIS
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/Outras Bases/PIS/                         Outras Receitas - PIS
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/Outras Bases/PIS/                         Deduções - PIS
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/Outras Bases/PIS/                         Compensações - PIS
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/Outras Bases/COFINS/                         Outras Receitas - COFINS
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/Outras Bases/COFINS/                         Deduções - COFINS
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/Outras Bases/COFINS/                         Compensações - COFINS
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/Outras Bases/CS/                         Outras Receitas - CS
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/Outras Bases/CS/                         Deduções - CS
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/Outras Bases/CS/                         Compensações - CS
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/Outras Bases/IRPJ/                         Demais Resultados - IRPJ
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/Outras Bases/IRPJ/                         Deduções - IRPJ
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/Outras Bases/IRPJ/                         Compensações - IRPJ
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/Outras Bases/IRPJ/                         Outras Deduções do IRF p_ IRPJ - IRPJ
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/PIS_COFINS/                         Lançamentos
    Movimentos                Outros
    RPA.Windows.Click         PIS/COFINS
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Lançamento PIS/COFINS (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Lançamento PIS/COFINS (1)   ${Caminho_Screenshots}Outros/PIS_COFINS/Lançamentos
    Fechar janela
    RPA.Windows.Click         Sim

Outros > PIS/COFINS > Informações > Ajustes Bebidas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/PIS_COFINS/Informações/        Ajustes Bebidas
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/PIS_COFINS/Informações/        Créditos Não Cumulativos
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/PIS_COFINS/                         Lançamento de Crédito do Pis_Cofins
    Movimentos                Outros
    RPA.Windows.Click         PIS/COFINS
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Lançamento de Crédito do Pis/Cofins (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Lançamento de Crédito do Pis/Cofins (1)   ${Caminho_Screenshots}Outros/PIS_COFINS/Lançamento de Crédito do Pis_Cofins
    Fechar janela
    RPA.Windows.Click         Sim

Outros > PIS/COFINS > Utilização de Crédito de Pis/Cofins
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/PIS_COFINS/                         Utilização de Crédito de Pis_Cofins
    Movimentos                Outros
    RPA.Windows.Click         PIS/COFINS
    RPA.Desktop.Press Keys    U
    RPA.Windows.Get Text      Lançamentos de Utilização de Créditos do Pis/Cofins (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Lançamentos de Utilização de Créditos do Pis/Cofins (1)   ${Caminho_Screenshots}Outros/PIS_COFINS/Utilização de Crédito de Pis_Cofins
    Fechar janela
    RPA.Windows.Click         Sim

Outros > PIS/COFINS > Gerar Lançamentos Automáticos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/PIS_COFINS/                         Gerar Lançamentos Automáticos
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/PIS_COFINS/                         Estornar Lançamentos Automáticos
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/Exportações/                         Exportações
    Movimentos                Outros
    RPA.Windows.Click         Exportações
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Informações sobre Exportações (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Informações sobre Exportações (1)          ${Caminho_Screenshots}Outros/Exportações/Exportações
    Fechar janela
    RPA.Windows.Click         Sim

Outros > Exportações > Saldo de NF's p/ Exportação
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/Exportações/                         Saldo de NF's p/ Exportação
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
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Outros/Exportações/PH/                        S-1250
    Movimentos                Outros
    RPA.Windows.Click         Exportações
    RPA.Windows.Click         PH
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      S-1250 (1)
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    S-1250 (1)          ${Caminho_Screenshots}Outros/Exportações/PS/S-1250
    RPA.Windows.Click         Confirmar
    Fechar janela

Alterar Lcto Entrada
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Alterar Lcto Entrada
    Movimentos                Alterar Lcto Entrada
    RPA.Windows.Get Text      Entradas/Compras - Incluir/Alterar (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Entradas/Compras - Incluir/Alterar (1)         ${Caminho_Screenshots}Alterar Lcto Entrada
    Fechar janela

Alterar Lcto Saída
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Alterar Lcto Saída
    Movimentos                Alterar Lcto Saída
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Alterar Saídas/Vendas (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    RPA.Windows.Click         Confirmar
    BaseDesktop.Screenshot    Saidas/Vendas - Produtos - Alterar Saídas/Vendas (1)         ${Caminho_Screenshots}Alterar Lcto Saída
    Fechar janela

Processos Personalizados
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        Processos Personalizados
    Movimentos                Processos Personalizados
    RPA.Windows.Get Text      Processos Personalizados (1)
    RPA.Windows.Click         Cadastrar Novo Processo
    BaseDesktop.Screenshot    Processos Personalizados (1)         ${Caminho_Screenshots}Processos Personalizados
    RPA.Windows.Click         Sair
    Fechar janela


    