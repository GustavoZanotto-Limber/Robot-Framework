*** Settings ***
Documentation    Smoke Test: Corretagem
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_crt
Suite Teardown   Encerrar Tudo

*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Corretagem/Manutenções/    

*** Keywords ***

Manutenções
    Cadastros 
    repetidor de teclas    right    1

*** Test Cases ***

Confirmação de Negócio
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                      Confirmação de Negócio
    Manutenções
    RPA.Windows.Click         Confirmação de Negócio
    RPA.Windows.Get Text      Confirmação de Negócio (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Confirmação de Negócio (1)      ${Caminho_Screenshots}Confirmação de Negócio
    Fechar com Sim

Emissão de NFS-e sobre Confirmações de Negócios
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                      Confirmação de Negócio
    Manutenções
    RPA.Windows.Click         Emissão de NFS-e sobre Confirmações de Negócios
    RPA.Windows.Get Text      Emissão de NFS-e sobre Confirmações de Negócios (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Emissão de NFS-e sobre Confirmações de Negócios (1)      ${Caminho_Screenshots}Confirmação de Negócio
    Fechar janela

Pedidos > Pedidos de Compra
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                      Pedidos de Compra
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Pedidos de Compra (1)
    RPA.Windows.Click         Novo  
    BaseDesktop.Screenshot    Pedidos de Compra (1)      ${Caminho_Screenshots}Pedidos de Compra
    Fechar com Sim

Pedidos > Pedidos de Venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                      Pedidos de Venda
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Pedidos de Venda (1)  
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Pedidos de Venda (1)      ${Caminho_Screenshots}Pedidos de Venda
    Fechar com Sim

Entradas/Compras > Incluir/Alterar
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Entradas_Compras/              Incluir_Alterar
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  I
    RPA.Windows.Get Text    Entradas/Compras - Incluir/Alterar (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Entradas/Compras - Incluir/Alterar (1)   ${Caminho_Screenshots}Entradas_Compras/Incluir_Alterar 
    Fechar com Sim

Entradas/Compras > Consultar
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Entradas_Compras/              Consultar
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Entradas/Compras - Consultar (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Entradas/Compras - Consultar (1)    ${Caminho_Screenshots}Entradas_Compras/Consultar
    Fechar com Sim

Saídas/Vendas > Incluir Saídas/Vendas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Saídas_Vendas/                         Alterar Saídas_Vendas
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Com Fechamento (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Saidas/Vendas - Produtos - Com Fechamento (1)    ${Caminho_Screenshots}Saídas_Vendas/Alterar Saídas_Vendas
    Fechar janela
    RPA.Windows.Click         Sim


Saídas/Vendas > Alterar Saídas/Vendas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Saídas_Vendas/                         Alterar Saídas_Vendas
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Alterar Saídas/Vendas (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot    Saidas/Vendas - Produtos - Alterar Saídas/Vendas (1)    ${Caminho_Screenshots}Saídas_Vendas/Alterar Saídas_Vendas
    RPA.Windows.Click       Cancelar
    Fechar janela

Saídas/Vendas > Consultar Saídas/Vendas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Saídas_Vendas/                         Consultar Saídas_Vendas
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Consulta (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot    Saidas/Vendas - Produtos - Consulta (1)    ${Caminho_Screenshots}Saídas_Vendas/Consultar Saídas_Vendas
    RPA.Windows.Click       Cancelar
    Fechar janela


    