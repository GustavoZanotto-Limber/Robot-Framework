*** Settings ***
Documentation    Smoke Test: Frotas
Resource          C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_frotas

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Frotas/Conhecimento de Transporte/    

*** Keywords ***

Conhecimento de Transporte
    [Arguments]    ${nome}
    Cadastros
    repetidor de teclas    right    3
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Conhecimento de Transporte > Emissão
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Conhecimento de Transporte/             Emissão
    Conhecimento de Transporte                  Conhecimento de Transporte
    RPA.Desktop.Press Keys  E  
    RPA.Windows.Get Text    Conhecimento de Transporte (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Conhecimento de Transporte (1)                             ${Caminho_Screenshots}Conhecimento de Transporte/Emissão
    Fechar Janela
    RPA.Windows.Click       Sim

Conhecimento de Transporte > Cancelamento
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Conhecimento de Transporte/             Cancelamento
    Conhecimento de Transporte                  Conhecimento de Transporte
    RPA.Desktop.Press Keys  C  
    RPA.Windows.Get Text    Conhecimento de Transporte Eletrônico - Cancelamento (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Conhecimento de Transporte Eletrônico - Cancelamento (1)                             ${Caminho_Screenshots}Conhecimento de Transporte/Cancelamento
    RPA.Windows.Click       Confirmar
    Fechar Janela


Conhecimento de Transporte > Carta de Correção
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Conhecimento de Transporte/             Carta de Correção
    Conhecimento de Transporte                  Conhecimento de Transporte
    RPA.Desktop.Press Keys  A  
    RPA.Windows.Click       OK
    RPA.Windows.Get Text    Carta de Correção Eletrônica (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Carta de Correção Eletrônica (1)                             ${Caminho_Screenshots}Conhecimento de Transporte/Carta de Correção
    RPA.Windows.Click       Confirmar
    Fechar Janela
      
Conhecimento de Transporte > Cálculo Desconto Quebra
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Conhecimento de Transporte/             Cálculo Desconto Quebra
    Conhecimento de Transporte                  Conhecimento de Transporte
    RPA.Desktop.Press Keys  L  
    RPA.Windows.Get Text    Cálculo Desconto Quebra (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Cálculo Desconto Quebra (1)                             ${Caminho_Screenshots}Conhecimento de Transporte/Cálculo Desconto Quebra
    RPA.Windows.Click       Confirmar
    Fechar Janela

Envio de Lote
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Envio em Lote
    Conhecimento de Transporte                  Envio em Lote
    RPA.Windows.Click       OK
    RPA.Windows.Get Text    Emissão em Lote - Conhecimento de Transporte Eletrônico (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Emissão em Lote - Conhecimento de Transporte Eletrônico (1)                             ${Caminho_Screenshots}Envio em Lote
    Fechar Janela

Monitor de CT-e
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Monitor de CT-e
    Conhecimento de Transporte                  Monitor de CT-e
    RPA.Windows.Get Text    Monitor - CT-e (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Monitor - CT-e (1)                             ${Caminho_Screenshots}Monitor de CT-e
    RPA.Windows.Click       Confirmar
    Fechar Janela

Insucesso/Cancelar Insucesso
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Insucesso_Cancelar Insucesso
    Conhecimento de Transporte                  Insucesso/Cancelar Insucesso
    RPA.Windows.Get Text    CT-e Insucesso/Cancelamento de Insucesso (1)
    RPA.Windows.Click       Selecionar CTe
    BaseDesktop.Screenshot  CT-e Insucesso/Cancelamento de Insucesso (1)                             ${Caminho_Screenshots}Insucesso_Cancelar Insucesso
    RPA.Windows.Click       Confirmar
    RPA.Windows.Click       OK
    Fechar Janela

Notas Fiscais Pendentes de Emissão de CT-e
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Notas Fiscais Pendentes de Emissão de CT-e
    Conhecimento de Transporte                  Notas Fiscais Pendentes de Emissão de CT-e
    RPA.Windows.Get Text   	Notas Fiscais Pendentes de Emissão de CTe. (1)
    RPA.Windows.Click       Atualizar
    BaseDesktop.Screenshot  Notas Fiscais Pendentes de Emissão de CTe. (1)                             ${Caminho_Screenshots}Notas Fiscais Pendentes de Emissão de CT-e
    Fechar Janela

Subcontratação de CT-e
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Subcontratação de CT-e
    Conhecimento de Transporte                  Subcontratação de CT-e
    RPA.Windows.Get Text   	Subcontratação de CT-e (1)
    RPA.Windows.Click       Atualizar
    BaseDesktop.Screenshot 	Subcontratação de CT-e (1)                             ${Caminho_Screenshots}Subcontratação de CT-e
    Fechar Janela

Recibo de Pagamento a Autônomo (RPA) > Emissão
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Recibo de Pagamento a Autônomo (RPA)/        Emissão
    Conhecimento de Transporte                  Recibo de Pagamento a Autônomo (RPA)
    RPA.Desktop.Press Keys       E
    RPA.Windows.Get Text    Emissão de RPA (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Emissão de RPA (1)                             ${Caminho_Screenshots}Recibo de Pagamento a Autônomo (RPA)/Emissão
    Fechar Janela

Recibo de Pagamento a Autônomo (RPA) > Exclusão/Reimpressão
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}Recibo de Pagamento a Autônomo (RPA)/        Exclusão_Reimpressão
    Conhecimento de Transporte                  Recibo de Pagamento a Autônomo (RPA)
    RPA.Desktop.Press Keys       X  
    RPA.Windows.Get Text   	Reimpressão/Exclusão de RPAs (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot 	Reimpressão/Exclusão de RPAs (1)                             ${Caminho_Screenshots}Recibo de Pagamento a Autônomo (RPA)/Exclusão_Reimpressão
    Fechar Janela

Documentos emitidos contra o estabelecimento para CT-e
    [Teardown]              Caso aconteça erro                    ${Caminho_Screenshots}           Documentos emitidos contra o estabelecimento para CT-e
    Conhecimento de Transporte                  Documentos emitidos contra o estabelecimento para CT-e
    RPA.Windows.Get Text   	Documentos emitidos contra o estabelecimento para CT-e (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot 	Documentos emitidos contra o estabelecimento para CT-e (1)                             ${Caminho_Screenshots}Documentos emitidos contra o estabelecimento para CT-e
    Fechar Janela

Encerrar
    Encerrar tudo