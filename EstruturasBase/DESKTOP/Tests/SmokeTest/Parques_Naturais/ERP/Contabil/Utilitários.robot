*** Settings ***
Documentation    Smoke Test: Contábil
Resource         ../../../../../Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Contábil/Utilitários/    
${nome_print}
${nome_exe}=    cde_win_ctb
*** Keywords ***

Utilitários
    Cadastros
    repetidor de teclas    right    4

*** Test Cases ***

Favoritos
    ${nome_print}=     Set Variable     Favoritos
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Favoritos
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar
    
Papel de Parede
    ${nome_print}=     Set Variable     Papel de Parede
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Papel de Parede
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Configurar Menu Pincipal
    ${nome_print}=     Set Variable     Configurar Menu Pincipal
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurar Menu Principal
    RPA.Windows.Get Text    Configurador de Menus (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configurador de Menus (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Configurar Barra de Atalhos
    ${nome_print}=     Set Variable     Configurar Barra de Atalhos
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurar Barra de Atalhos
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar com Sim

Estilo do Menu Principal
    ${nome_print}=     Set Variable     Estilo do Menu Principal
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Estilo do Menu Principal
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    RPA.Windows.Click       Standard
    BaseDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    ${nome_print}=     Set Variable     Controle de Acessos
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Controle de Acessos
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    RPA.Windows.Click       Confirmar
    BaseDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    RPA.Windows.Click       OK
    Fechar janela

Configuração de Liberação
    ${nome_print}=     Set Variable     Configuração de Liberação
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configuração de Liberação
    RPA.Windows.Get Text    Configurações de Liberação (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Configurações de Liberação (1)    ${Caminho_Screenshots}Configuração de Liberação
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Relatórios Personalizados > Cadastro de Categorias
    ${nome_print}=     Set Variable     Cadastro de Categorias
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  c
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseDesktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Categorias
    RPA.Windows.Click       Confirmar
    Fechar com Sim
    
Relatórios Personalizados > Cadastro de Relatórios
    ${nome_print}=     Set Variable     Cadastro de Relatórios
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  a
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    BaseDesktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Verifica transações abertas
    ${nome_print}=     Set Variable     Verifica transações abertas
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Verifica transações abertas
    RPA.Windows.Get Text    Verifica transações abertas (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Verifica transações abertas (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Integrações > SCPH
    ${nome_print}=     Set Variable     SCPH
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Integração Contábil SCPH (1)
    RPA.Windows.Click       Identificar conta do Cliente/Fornecedor
    BaseDesktop.Screenshot  Integração Contábil SCPH (1)    ${Caminho_Screenshots}Integrações/SCPH
    Fechar janela

Integrações > Sênior > Importação
    ${nome_print}=     Set Variable     Importação
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Windows.Click       Sênior
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Sênior - Integração Folha de Pagamento (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Sênior - Integração Folha de Pagamento (1)    ${Caminho_Screenshots}Integrações/Sênior/Importação
    RPA.Windows.Click         OK
    Fechar janela

Integrações > Sênior > Configuração
    ${nome_print}=     Set Variable     Configuração
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Windows.Click       Sênior
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro Configuração Integração Sênior (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Cadastro Configuração Integração Sênior (1)    ${Caminho_Screenshots}Integrações/Sênior/Configuração
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Integrações > DPPH > Lançamentos Funcionários
    ${nome_print}=     Set Variable     Lançamentos Funcionários
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Windows.Click       DPPH
    RPA.Desktop.Press Keys  L
    Sleep                   1s
    RPA.Windows.Get Text    Lançamentos Funcionários (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Lançamentos Funcionários (1)    ${Caminho_Screenshots}Integrações/DPPH/Lançamentos Funcionários
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar

Integrações > Folhas de Pagamento
    ${nome_print}=     Set Variable     Folhas de Pagamento
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Desktop.Press Keys  F
    RPA.Windows.Get Text    Integrações de Folha de Pagamentos (1)
    RPA.Windows.Click       Mostrar Arquivo Exemplo
    BaseDesktop.Screenshot  Integrações de Folha de Pagamentos (1)    ${Caminho_Screenshots}Integrações/Folhas de Pagamento
    RPA.Windows.Click       Fechar
    Fechar janela

Integrações > Ocepar
    ${nome_print}=     Set Variable     Ocepar
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Integrações
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Geração de Arquivo Ocepar (1)
    RPA.Windows.Click       Gerar Arquivo
    BaseDesktop.Screenshot  Geração de Arquivo Ocepar (1)    ${Caminho_Screenshots}Integrações/Ocepar
    RPA.Windows.Click       OK
    Fechar janela

Agenda Telefônica
    ${nome_print}=     Set Variable     Agenda Telefônica
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Agenda Telefônica
    RPA.Windows.Get Text    Agenda Telefônica (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Agenda Telefônica (1)    ${Caminho_Screenshots}Agenda Telefônica
    RPA.Windows.Click         Confirmar
    Fechar com Sim

Upload de Arquivos
    ${nome_print}=     Set Variable     Upload de Arquivos
    [Tags]     Contábil    Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Upload de Arquivos
    RPA.Windows.Get Text    Upload de Arquivos (1)
    RPA.Windows.Click       Importar
    BaseDesktop.Screenshot  Upload de Arquivos (1)    ${Caminho_Screenshots}Upload de Arquivos
    RPA.Windows.Click         OK
    RPA.Windows.Click       Fechar