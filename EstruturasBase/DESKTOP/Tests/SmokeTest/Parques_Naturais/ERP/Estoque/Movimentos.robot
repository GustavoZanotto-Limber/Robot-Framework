*** Settings ***
Documentation    Smoke Test: Estoque
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_est


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Estoque/Movimentos/    

*** Keywords ***

Movimentos 
    Cadastros
    repetidor de teclas     right     1

*** Test Cases ***

Movimentações de Produtos - Agrupados
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Movimentações de Produtos - Agrupados
    Movimentos
    RPA.Windows.Click       Movimentações de Produtos - Agrupados
    RPA.Windows.Get Text    Movimentações de Produtos Agrupados (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Movimentações de Produtos Agrupados (1)    ${Caminho_Screenshots}Movimentações de Produtos - Agrupados
    Fechar com Sim

Movimentações de Produtos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Movimentações de Produtos 
    Movimentos
    RPA.Windows.Click       Movimentações de Produtos 
    RPA.Windows.Get Text    Movimentações de Produtos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Movimentações de Produtos (1)    ${Caminho_Screenshots}Movimentações de Produtos 
    Fechar com Sim

Ajuste/Contagem de Estoque
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Ajuste_Contagem de Estoque 
    Movimentos
    RPA.Windows.Click       Ajuste/Contagem de Estoque 
    RPA.Windows.Get Text    Ajuste/Contagem de Estoque (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Ajuste/Contagem de Estoque (1)    ${Caminho_Screenshots}Ajuste_Contagem de Estoque
    Fechar com Sim

Balanço de Estoque
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Balanço de Estoque 
    Movimentos
    RPA.Windows.Click       Balanço de Estoque 
    RPA.Windows.Get Text    Balanço de Estoque (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Balanço de Estoque (1)    ${Caminho_Screenshots}Balanço de Estoque
    Fechar com Sim

Quantidade Mínima/Máxima de Itens por Estabelecimento
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Quantidade Mínima_Máxima de Itens por Estabelecimento
    Movimentos
    RPA.Windows.Click       Quantidade Mínima/Máxima de Itens por Estabelecimento
    RPA.Windows.Get Text    Cadastro de Quantidade Mínima/Máxima de Itens por Estabelecimento (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Cadastro de Quantidade Mínima/Máxima de Itens por Estabelecimento (1)    ${Caminho_Screenshots}Quantidade Mínima_Máxima de Itens por Estabelecimento
    RPA.Windows.Click       Confirmar
    Fechar janela

Alocação de Setores
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Alocação de Setores
    Movimentos
    RPA.Windows.Click       Alocação de Setores
    RPA.Windows.Get Text    Alocação de Setores (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Alocação de Setores (1)    ${Caminho_Screenshots}Alocação de Setores
    RPA.Windows.Click       Fechar
    Fechar janela

Transferências entre Depósitos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Transferências entre Depósitos
    Movimentos
    RPA.Windows.Click       Transferências entre Depósitos
    RPA.Windows.Get Text    Transferências de Depósito (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Transferências de Depósito (1)    ${Caminho_Screenshots}Transferências entre Depósitos
    Fechar com Sim

Pré Transferências entre Depósitos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Pré Transferências entre Depósitos
    Movimentos
    RPA.Desktop.Press Keys  P 
    RPA.Windows.Get Text    Pré - Transferências de Depósito (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Pré - Transferências de Depósito (1)    ${Caminho_Screenshots}Pré Transferências entre Depósitos
    Fechar com Sim

Aprovação de Pré Transferências entre Depósitos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Aprovação de Pré Transferências entre Depósitos
    Movimentos
    RPA.Windows.Click       Aprovação de Pré Transferência entre Depósitos
    RPA.Windows.Get Text    Consulta/Aprovação/Rejeição de Pré transferência entre depósitos (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta/Aprovação/Rejeição de Pré transferência entre depósitos (1)      ${Caminho_Screenshots}Aprovação de Pré Transferências entre Depósitos
    Fechar janela
    

Tranferência entre Produtos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Tranferência entre Produtos
    Movimentos
    RPA.Windows.Click       Transferência entre Produtos
    RPA.Windows.Get Text    Transferência entre Produtos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Transferência entre Produtos (1)    ${Caminho_Screenshots}Tranferência entre Produtos
    Fechar com Sim

Bloqueio de Movimentos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Bloqueio de Movimentos
    Movimentos
    RPA.Windows.Click       Bloqueio de Movimentos
    RPA.Windows.Get Text    Bloqueio de Movimento (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Bloqueio de Movimento (1)    ${Caminho_Screenshots}Bloqueio de Movimentos
    RPA.Windows.Click       Confirmar
    Fechar janela

Inventário Manual
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Inventário Manual
    Movimentos
    RPA.Windows.Click       Inventário Manual
    RPA.Windows.Get Text    Inventário Manual (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Inventário Manual (1)    ${Caminho_Screenshots}Inventário Manual
    RPA.Windows.Click       Confirmar
    Fechar janela

Tranferência entre Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Tranferência entre Terceiros
    Movimentos
    RPA.Windows.Click       Transferência entre Terceiros
    RPA.Windows.Get Text    Transferência de depósitos entre terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Transferência de depósitos entre terceiros (1)    ${Caminho_Screenshots}Tranferência entre Terceiros
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Bloqueio de Saldo de Terceiros
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Bloqueio de Saldo de Terceiros
    Movimentos
    RPA.Windows.Click       Bloqueio de Saldo de Terceiros
    RPA.Windows.Get Text    Bloqueio de Saldo de Terceiros (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Bloqueio de Saldo de Terceiros (1)    ${Caminho_Screenshots}Bloqueio de Saldo de Terceiros
    Fechar com Sim

Controle de Empréstimos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Controle de Empréstimos
    Movimentos
    RPA.Windows.Click       Controle de Empréstimos
    RPA.Windows.Get Text    Controle de Empréstimos de Grãos (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Controle de Empréstimos de Grãos (1)    ${Caminho_Screenshots}Controle de Empréstimos
    RPA.Windows.Click       Confirmar
    Fechar janela

Requisição de Compra/Transferência > Manutenção
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Requisição de Compra_Transferência/              Manutenção
    Movimentos
    RPA.Windows.Click       Requisição de Compra/Transferência
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Requisição de Compras (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Requisição de Compras (1)    ${Caminho_Screenshots}Requisição de Compra_Transferência/Manutenção
    Fechar com Sim

Requisição de Compra/Transferência > Consultar
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Requisição de Compra_Transferência/              Consultar
    Movimentos
    RPA.Windows.Click       Requisição de Compra/Transferência
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Consulta de Requisição de Compra (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Consulta de Requisição de Compra (1)    ${Caminho_Screenshots}Requisição de Compra_Transferência/Consultar
    RPA.Windows.Click       Confirmar
    Fechar janela

Requisição de Compra/Transferência > Aprovação/Rejeição de Requisição
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Requisição de Compra_Transferência/              Aprovação_Rejeição de Requisição
    Movimentos
    RPA.Windows.Click       Requisição de Compra/Transferência
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Aprovação/Rejeição de Requisição de Compra (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter 
    BaseDesktop.Screenshot  Aprovação/Rejeição de Requisição de Compra (1)    ${Caminho_Screenshots}Requisição de Compra_Transferência/Aprovação_Rejeição de Requisição
    RPA.Windows.Click       Confirmar
    Fechar janela

Requisição de Movimentos > Emissão/Manutenção
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Requisição de Movimentos/              Emissão_Manutenção
    Movimentos
    RPA.Windows.Click       Requisição de Movimentos
    RPA.Desktop.Press Keys  E
    RPA.Windows.Get Text    Requisição de Movimentos (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Requisição de Movimentos (1)    ${Caminho_Screenshots}Requisição de Movimentos/Emissão_Manutenção
    Fechar com Sim

Requisição de Movimentos > Consulta
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Requisição de Movimentos/              Consulta
    Movimentos
    RPA.Windows.Click       Requisição de Movimentos
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Consulta de Requisição de Movimentos (1)
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Consulta de Requisição de Movimentos (1)    ${Caminho_Screenshots}Requisição de Movimentos/Consulta
    Fechar janela

Requisição de Movimentos > Aprovação/Rejeição
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Requisição de Movimentos/              Aprovação_Rejeição
    Movimentos
    RPA.Windows.Click       Requisição de Movimentos
    RPA.Desktop.Press Keys  A
    RPA.Windows.Get Text    Aprovação/Rejeição de Requisição de Movimentos
    RPA.Windows.Click       Carregar
    BaseDesktop.Screenshot  Aprovação/Rejeição de Requisição de Movimentos    ${Caminho_Screenshots}Requisição de Movimentos/Aprovação_Rejeição
    Fechar janela

Controle de Vasilhames > Lançamento Inicial/Ajuste
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Controle de Vasilhames/              Lançamento Inicial_Ajuste
    Movimentos
    RPA.Windows.Click       Controle de Vasilhames
    RPA.Desktop.Press Keys  L
    RPA.Windows.Get Text    Lançamento Inicial/Ajuste de Vasilhames (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Lançamento Inicial/Ajuste de Vasilhames (1)    ${Caminho_Screenshots}Controle de Vasilhames/Lançamento Inicial_Ajuste
    Fechar com Sim

Controle de Vasilhames > Movimentação de Vasilhames
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}Controle de Vasilhames/              Movimentação de Vasilhames
    Movimentos
    RPA.Windows.Click       Controle de Vasilhames
    RPA.Desktop.Press Keys  M
    RPA.Windows.Get Text    Movimentação de Vasilhames (1)
    RPA.Windows.Click       Novo
    BaseDesktop.Screenshot  Movimentação de Vasilhames (1)    ${Caminho_Screenshots}Controle de Vasilhames/Movimentação de Vasilhames
    Fechar com Sim

Processos Personalizados
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}              Processos Personalizados
    Movimentos
    RPA.Windows.Click       Processos Personalizados
    RPA.Windows.Get Text    Processos Personalizados (1)
    RPA.Windows.Click       Cadastrar Novo Processo
    BaseDesktop.Screenshot  Processos Personalizados (1)    ${Caminho_Screenshots}Processos Personalizados
    RPA.Windows.Click       Sair
    Fechar janela

 
    