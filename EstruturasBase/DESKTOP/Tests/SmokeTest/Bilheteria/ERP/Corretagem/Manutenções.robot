*** Settings ***
Documentation    Smoke Test: Corretagem
Resource         ../../../../../Resources/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Corretagem/Manutenções/    
${nome_print}
${nome_exe}=    cde_win_crt
*** Keywords ***

Manutenções
    Cadastros 
    repetidor de teclas    right    2

*** Test Cases ***

Confirmação de Negócio
    ${nome_print}=     Set Variable     Confirmação de Negócio
    [Tags]     Corretagem    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Confirmação de Negócio
    RPA.Windows.Get Text      Confirmação de Negócio (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Confirmação de Negócio (1)      ${Caminho_Screenshots}Confirmação de Negócio
    Fechar com Sim

Emissão de NFS-e sobre Confirmações de Negócios
    ${nome_print}=     Set Variable     Emissão de NFS-e sobre Confirmações de Negócios
    [Tags]     Corretagem    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Emissão de NFS-e sobre Confirmações de Negócios
    RPA.Windows.Get Text      Emissão de NFS-e sobre Confirmações de Negócios (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Emissão de NFS-e sobre Confirmações de Negócios (1)      ${Caminho_Screenshots}Confirmação de Negócio
    Fechar janela

Pedidos > Pedidos de Compra
    ${nome_print}=     Set Variable     Pedidos de Compra
    [Tags]     Corretagem    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Pedidos de Compra (1)
    RPA.Windows.Click         Novo  
    BaseKeywordsDesktop.Screenshot    Pedidos de Compra (1)      ${Caminho_Screenshots}Pedidos de Compra
    Fechar com Sim

Pedidos > Pedidos de Venda
    ${nome_print}=     Set Variable     Pedidos de Venda
    [Tags]     Corretagem    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Pedidos de Venda (1)  
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Pedidos de Venda (1)      ${Caminho_Screenshots}Pedidos de Venda
    Fechar com Sim

Entradas/Compras > Incluir/Alterar
    ${nome_print}=     Set Variable     Incluir_Alterar
    [Tags]     Corretagem    Manutenções   SmokeTest    
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  I
    Sleep                   2s  
    RPA.Windows.Get Text    Entradas/Compras - Incluir/Alterar (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Entradas/Compras - Incluir/Alterar (1)   ${Caminho_Screenshots}Entradas_Compras/Incluir_Alterar 
    Fechar com Sim

Entradas/Compras > Consultar
    ${nome_print}=     Set Variable     Consultar
    [Tags]     Corretagem    Manutenções   SmokeTest    
    Manutenções
    RPA.Windows.Click       Entradas/Compras
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Entradas/Compras - Consultar (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    Sleep                   3s
    RPA.Windows.Click       Confirmar
    BaseKeywordsDesktop.Screenshot  Entradas/Compras - Consultar (1)    ${Caminho_Screenshots}Entradas_Compras/Consultar
    Fechar Janela

Saídas/Vendas > Incluir Saídas/Vendas
    ${nome_print}=     Set Variable     Alterar Saídas_Vendas
    [Tags]     Corretagem    Manutenções   SmokeTest    
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    I
    Sleep                     4s
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Com Fechamento (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Saidas/Vendas - Produtos - Com Fechamento (1)    ${Caminho_Screenshots}Saídas_Vendas/Alterar Saídas_Vendas
    Fechar janela
    RPA.Windows.Click         Sim

Saídas/Vendas > Alterar Saídas/Vendas
    ${nome_print}=     Set Variable     Alterar Saídas_Vendas
    [Tags]     Corretagem    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    A
    Sleep                     2s
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Alterar Saídas/Vendas (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter 
    BaseKeywordsDesktop.Screenshot    Saidas/Vendas - Produtos - Alterar Saídas/Vendas (1)    ${Caminho_Screenshots}Saídas_Vendas/Alterar Saídas_Vendas
    RPA.Windows.Click       Cancelar
    Fechar janela

Saídas/Vendas > Consultar Saídas/Vendas
    ${nome_print}=     Set Variable     Consultar Saídas_Vendas
    [Tags]     Corretagem    Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    C
    Sleep                     2s
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Consulta (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot    Saidas/Vendas - Produtos - Consulta (1)    ${Caminho_Screenshots}Saídas_Vendas/Consultar Saídas_Vendas
    RPA.Windows.Click       Cancelar
    Fechar janela