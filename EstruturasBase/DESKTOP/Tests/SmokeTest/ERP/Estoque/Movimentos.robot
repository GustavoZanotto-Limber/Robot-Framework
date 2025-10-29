*** Settings ***
Documentation    Smoke Test: Estoque
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Estoque/Movimentos/    
${nome_print}
${nome_exe}=    cde_win_est
*** Keywords ***

Movimentos 
    Cadastros
    repetidor de teclas     right     1

*** Test Cases ***

Movimentações de Produtos - Agrupados
    ${nome_print}=     Set Variable     Movimentações de Produtos - Agrupados
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Movimentações de Produtos - Agrupados
    RPA.Windows.Get Text    Movimentações de Produtos Agrupados (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Movimentações de Produtos Agrupados (1)    ${Caminho_Screenshots}Movimentações de Produtos - Agrupados
    Fechar com Sim

Movimentações de Produtos
    ${nome_print}=     Set Variable     Movimentações de Produtos
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Movimentações de Produtos 
    RPA.Windows.Get Text    Movimentações de Produtos (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Movimentações de Produtos (1)    ${Caminho_Screenshots}Movimentações de Produtos 
    Fechar com Sim

Ajuste/Contagem de Estoque
    ${nome_print}=     Set Variable     Ajuste_Contagem de Estoque
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Ajuste/Contagem de Estoque 
    RPA.Windows.Get Text    Ajuste/Contagem de Estoque (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Ajuste/Contagem de Estoque (1)    ${Caminho_Screenshots}Ajuste_Contagem de Estoque
    Fechar com Sim

Balanço de Estoque
    ${nome_print}=     Set Variable     Balanço de Estoque
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Balanço de Estoque 
    RPA.Windows.Get Text    Balanço de Estoque (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Balanço de Estoque (1)    ${Caminho_Screenshots}Balanço de Estoque
    Fechar com Sim

Quantidade Mínima/Máxima de Itens por Estabelecimento
    ${nome_print}=     Set Variable     Quantidade Mínima_Máxima de Itens por Estabelecimento
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Quantidade Mínima/Máxima de Itens por Estabelecimento
    RPA.Windows.Get Text    Cadastro de Quantidade Mínima/Máxima de Itens por Estabelecimento (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot  Cadastro de Quantidade Mínima/Máxima de Itens por Estabelecimento (1)    ${Caminho_Screenshots}Quantidade Mínima_Máxima de Itens por Estabelecimento
    RPA.Windows.Click       Confirmar
    Fechar janela

Alocação de Setores
    ${nome_print}=     Set Variable     Alocação de Setores
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Alocação de Setores
    RPA.Windows.Get Text    Alocação de Setores (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot  Alocação de Setores (1)    ${Caminho_Screenshots}Alocação de Setores
    RPA.Windows.Click       Fechar
    Fechar janela

Transferências entre Depósitos
    ${nome_print}=     Set Variable     Transferências entre Depósitos
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Transferências entre Depósitos
    RPA.Windows.Get Text    Transferências de Depósito (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Transferências de Depósito (1)    ${Caminho_Screenshots}Transferências entre Depósitos
    Fechar com Sim

Pré Transferências entre Depósitos
    ${nome_print}=     Set Variable     Pré Transferências entre Depósitos
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Desktop.Press Keys  P 
    RPA.Windows.Get Text    Pré - Transferências de Depósito (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Pré - Transferências de Depósito (1)    ${Caminho_Screenshots}Pré Transferências entre Depósitos
    Fechar com Sim

Aprovação de Pré Transferências entre Depósitos
    ${nome_print}=     Set Variable     Aprovação de Pré Transferências entre Depósitos
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Aprovação de Pré Transferência entre Depósitos
    RPA.Windows.Get Text    Consulta/Aprovação/Rejeição de Pré transferência entre depósitos (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta/Aprovação/Rejeição de Pré transferência entre depósitos (1)      ${Caminho_Screenshots}Aprovação de Pré Transferências entre Depósitos
    Fechar janela

Tranferência entre Produtos
    ${nome_print}=     Set Variable     Tranferência entre Produtos
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Transferência entre Produtos
    RPA.Windows.Get Text    Transferência entre Produtos (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Transferência entre Produtos (1)    ${Caminho_Screenshots}Tranferência entre Produtos
    Fechar com Sim

Bloqueio de Movimentos
    ${nome_print}=     Set Variable     Bloqueio de Movimentos
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Bloqueio de Movimentos
    RPA.Windows.Get Text    Bloqueio de Movimento (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot  Bloqueio de Movimento (1)    ${Caminho_Screenshots}Bloqueio de Movimentos
    RPA.Windows.Click       Confirmar
    Fechar janela

Inventário Manual
    ${nome_print}=     Set Variable     Inventário Manual
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Inventário Manual
    RPA.Windows.Get Text    Inventário Manual (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot  Inventário Manual (1)    ${Caminho_Screenshots}Inventário Manual
    RPA.Windows.Click       Confirmar
    Fechar janela

Tranferência entre Terceiros
    ${nome_print}=     Set Variable     Tranferência entre Terceiros
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Transferência entre Terceiros
    RPA.Windows.Get Text    Transferência de depósitos entre terceiros (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Transferência de depósitos entre terceiros (1)    ${Caminho_Screenshots}Tranferência entre Terceiros
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Bloqueio de Saldo de Terceiros
    ${nome_print}=     Set Variable     Bloqueio de Saldo de Terceiros
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Bloqueio de Saldo de Terceiros
    RPA.Windows.Get Text    Bloqueio de Saldo de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Bloqueio de Saldo de Terceiros (1)    ${Caminho_Screenshots}Bloqueio de Saldo de Terceiros
    Fechar com Sim

Controle de Empréstimos
    ${nome_print}=     Set Variable     Controle de Empréstimos
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Controle de Empréstimos
    RPA.Windows.Get Text    Controle de Empréstimos de Grãos (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot  Controle de Empréstimos de Grãos (1)    ${Caminho_Screenshots}Controle de Empréstimos
    RPA.Windows.Click       Confirmar
    Fechar janela

Requisição de Compra/Transferência > Manutenção
    ${nome_print}=     Set Variable     Manutenção
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Requisição de Compra/Transferência
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Requisição de Compras (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Requisição de Compras (1)    ${Caminho_Screenshots}Requisição de Compra_Transferência/Manutenção
    Fechar com Sim

Requisição de Compra/Transferência > Consultar
    ${nome_print}=     Set Variable     Consultar
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Requisição de Compra/Transferência
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Consulta de Requisição de Compra (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot  Consulta de Requisição de Compra (1)    ${Caminho_Screenshots}Requisição de Compra_Transferência/Consultar
    RPA.Windows.Click       Confirmar
    Fechar janela

Requisição de Compra/Transferência > Aprovação/Rejeição de Requisição
    ${nome_print}=     Set Variable     Aprovação_Rejeição de Requisição
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Requisição de Compra/Transferência
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Aprovação/Rejeição de Requisição de Compra (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseKeywordsDesktop.Screenshot  Aprovação/Rejeição de Requisição de Compra (1)    ${Caminho_Screenshots}Requisição de Compra_Transferência/Aprovação_Rejeição de Requisição
    RPA.Windows.Click       Confirmar
    Fechar janela

Requisição de Movimentos > Emissão/Manutenção
    ${nome_print}=     Set Variable     Emissão_Manutenção
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Requisição de Movimentos
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Requisição de Movimentos (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Requisição de Movimentos (1)    ${Caminho_Screenshots}Requisição de Movimentos/Emissão_Manutenção
    Fechar com Sim

Requisição de Movimentos > Consulta
    ${nome_print}=     Set Variable     Consulta
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Requisição de Movimentos
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Consulta de Requisição de Movimentos (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Consulta de Requisição de Movimentos (1)    ${Caminho_Screenshots}Requisição de Movimentos/Consulta
    Fechar janela

Requisição de Movimentos > Aprovação/Rejeição
    ${nome_print}=     Set Variable     Aprovação_Rejeição
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Requisição de Movimentos
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Aprovação/Rejeição de Requisição de Movimentos
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Aprovação/Rejeição de Requisição de Movimentos    ${Caminho_Screenshots}Requisição de Movimentos/Aprovação_Rejeição
    Fechar janela

Controle de Vasilhames > Lançamento Inicial/Ajuste
    ${nome_print}=     Set Variable     Lançamento Inicial_Ajuste
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Controle de Vasilhames
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Lançamento Inicial/Ajuste de Vasilhames (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Lançamento Inicial/Ajuste de Vasilhames (1)    ${Caminho_Screenshots}Controle de Vasilhames/Lançamento Inicial_Ajuste
    Fechar com Sim

Controle de Vasilhames > Movimentação de Vasilhames
    ${nome_print}=     Set Variable     Movimentação de Vasilhames
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Controle de Vasilhames
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Movimentação de Vasilhames (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Movimentação de Vasilhames (1)    ${Caminho_Screenshots}Controle de Vasilhames/Movimentação de Vasilhames
    Fechar com Sim

Manutenção de Máquinas Agrícolas
    ${nome_print}=     Set Variable     Manutenção de Máquinas Agrícolas
    [Tags]     Estoque    Movimentos   SmokeTest    
    Movimentos
    RPA.Windows.Click       Manutenção de Máquinas Agrícolas
    RPA.Windows.Get Text    Manutenção de Máquinas Agrícolas (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Manutenção de Máquinas Agrícolas (1)    ${Caminho_Screenshots}Manutenção de Máquinas Agrícolas
    Fechar janela

Processos Personalizados
    ${nome_print}=     Set Variable     Processos Personalizados
    [Tags]     Estoque    Movimentos   SmokeTest
    Movimentos
    RPA.Windows.Click       Processos Personalizados
    RPA.Windows.Get Text    Processos Personalizados (1)
    RPA.Windows.Click       Cadastrar Novo Processo
    BaseKeywordsDesktop.Screenshot  Processos Personalizados (1)    ${Caminho_Screenshots}Processos Personalizados
    RPA.Windows.Click       Sair
    Fechar janela