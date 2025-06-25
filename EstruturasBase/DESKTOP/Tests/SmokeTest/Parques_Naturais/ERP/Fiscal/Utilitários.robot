*** Settings ***
Documentation    Smoke Test: Utilitários
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_fis


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Fiscal/Utilitários/    

*** Keywords ***

Utilitários
    [Arguments]    ${nome}
    Cadastros
    Repetidor de teclas    right    5
    RPA.Windows.Click    ${nome}

*** Test Cases ***

Favoritos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Utilitários
    Utilitários             Favoritos
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar
    
Papel de Parede
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                         Papel de Parede
    Utilitários             Papel de Parede
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Configurar Menu Pincipal
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Configurar Barra de Atalhos
    Utilitários             Configurar Menu Principal
    RPA.Windows.Get Text    Configurador de Menus (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configurador de Menus (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Configurar Barra de Atalhos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Configurar Barra de Atalhos
    Utilitários             Configurar Barra de Atalhos
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar com Sim

Estilo do Menu Principal
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Estilo do Menu Principal
    Utilitários             Estilo do Menu Principal    
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    RPA.Windows.Click       Standard
    BaseDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Controle de Acessos
    Utilitários             Controle de Acessos   
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    RPA.Windows.Click       Confirmar
    BaseDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    RPA.Windows.Click       OK
    Fechar janela

Configuração de Liberação
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Configuração de Liberação
    Utilitários             Configuração de Liberação 
    RPA.Windows.Get Text    Configurações de Liberação (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configurações de Liberação (1)    ${Caminho_Screenshots}Configuração de Liberação
    RPA.Windows.Click       Confirmar
    Fechar com Sim


Relatórios Personalizados > Cadastro de Categorias
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Relatórios Personalizados/                             Cadastro de Categorias
    Utilitários             Relatórios Personalizados
    RPA.Desktop.Press Keys  c
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Categorias
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Criar Usuario de Log
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Criar Usuario de Log
    Utilitários             Criar Usuário de Log
    RPA.Windows.Get Text    Cadastro Usuario de Log (1)
    BaseDesktop.Screenshot  Cadastro Usuario de Log (1)    ${Caminho_Screenshots}Criar Usuario de Log
    Fechar janela

Verifica transações abertas
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Verifica transações abertas
    Utilitários             Verifica transações abertas
    RPA.Windows.Get Text    Verifica transações abertas (1)
    RPA.Windows.Click      Carregar
    BaseDesktop.Screenshot  Verifica transações abertas (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Importar Arquivos Transmitidos > SPED Contábil (ECD)
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Importar Arquivos Transmitidos/        SPED Contábil (ECD)
    Utilitários               Importar Arquivos Transmitidos
    RPA.Desktop.Press Keys    S  
    RPA.Windows.Get Text      Importar Arquivos SPED - ECD (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Importar Arquivos SPED - ECD (1)    ${Caminho_Screenshots}Importar Arquivos Transmitidos/SPED Contábil (ECD)
    Fechar janela
    RPA.Windows.Click         Sim

Reprocessar Contas ECD
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                             Reprocessar Contas ECD
    Utilitários             Reprocessar Contas ECD
    RPA.Windows.Get Text    Ajustar Registros I050 - ECD (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Ajustar Registros I050 - ECD (1)    ${Caminho_Screenshots}Reprocessar Contas ECD
    RPA.Windows.Click       Confirmar
    Fechar janela


    