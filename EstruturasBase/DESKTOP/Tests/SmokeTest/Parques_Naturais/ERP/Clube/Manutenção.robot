*** Settings ***
Documentation    Smoke Test: Clube
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_clube

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Clube/Manutenção/    

*** Keywords ***

Manutenções
    Cadastros
    repetidor de teclas    right    1

*** Test Cases ***

Geração de Mensalidades
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Geração de Mensalidades
    Manutenções
    RPA.Windows.Click       Geração de Mensalidades
    RPA.Windows.Get Text    Geração de Mensalidades/Anuidades/Serviços (1)
    BaseDesktop.Screenshot  Geração de Mensalidades/Anuidades/Serviços (1)   ${Caminho_Screenshots}Geração de Mensalidades
    Fechar janela

Exclusão de Mensalidades
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Exclusão de Mensalidades
    Manutenções
    RPA.Windows.Click       Exclusão de Mensalidades
    RPA.Windows.Get Text    Exclusão de Mensalidades (1)
    BaseDesktop.Screenshot  Exclusão de Mensalidades (1)   ${Caminho_Screenshots}Exclusão de Mensalidades
    Fechar janela

Atualização de Mensalidades
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Atualização de Mensalidades
    Manutenções
    RPA.Windows.Click       Atualização de Mensalidades
    RPA.Windows.Get Text    Atualização de Mensalidades (1)
    BaseDesktop.Screenshot  Atualização de Mensalidades (1)   ${Caminho_Screenshots}Atualização de Mensalidades
    RPA.Windows.Click       Fechar

Emissão de Carnês
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Emissão de Carnês
    Manutenções
    RPA.Windows.Click       Emissão de Carnês
    RPA.Windows.Get Text    Impressão de Carnês (1)
    BaseDesktop.Screenshot  Impressão de Carnês (1)   ${Caminho_Screenshots}Emissão de Carnês
    Fechar janela

Mala Direta > Emissão de Etiquetas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Mala Direta/             ERRO Emissão de Etiquetas
    Manutenções
    RPA.Windows.Click       Mala Direta
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Emissão de Etiquetas (1)
    BaseDesktop.Screenshot  Emissão de Etiquetas (1)   ${Caminho_Screenshots}Mala Direta/Emissão de Etiquetas
    Fechar janela

Reservas
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Reservas
    Manutenções
    RPA.Windows.Click       Reservas
    RPA.Windows.Get Text    Controle de Reservas (1)
    BaseDesktop.Screenshot  Controle de Reservas (1)   ${Caminho_Screenshots}Reservas
    Fechar janela

Processos Personalizados
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                        ERRO Processos Personalizados
    Manutenções
    RPA.Windows.Click         Processos Personalizados
    RPA.Windows.Get Text      Processos Personalizados (1)
    BaseDesktop.Screenshot    Processos Personalizados (1)    ${Caminho_Screenshots}Processos Personalizados
    Fechar janela

Encerrar    
    Encerrar tudo