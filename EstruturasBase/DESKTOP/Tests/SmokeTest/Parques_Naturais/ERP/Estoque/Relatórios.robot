*** Settings ***
Documentation    Smoke Test: Vendas
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteça erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}



*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Vendas/Manutenções/    
${nome_print}
${nome_exe}=    cde_win_ven
*** Keywords ***

Manutenções
    Cadastros
    Repetidor de Teclas     Right    1

*** Test Cases ***

Saídas/Vendas > Incluir/Alterar - Sem Fechamento
    ${nome_print}=     Set Variable     Incluir_Alterar - Sem Fechamento
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Sem Fechamento (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Saidas/Vendas - Produtos - Sem Fechamento (1)    ${Caminho_Screenshots}Saídas_Vendas/Incluir_Alterar - Sem Fechamento
    Fechar com Sim

Saídas/Vendas > Incluir - Com Fechamento
    ${nome_print}=     Set Variable     Incluir - Com Fechamento
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Com Fechamento (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Saidas/Vendas - Produtos - Com Fechamento (1)    ${Caminho_Screenshots}Saídas_Vendas/Incluir - Com Fechamento
    Fechar com Sim

Saídas/Vendas > Fechar Saídas/Vendas Abertas
    ${nome_print}=     Set Variable     Fechar Saídas_Vendas Abertas
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Com Fechamento (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Saidas/Vendas - Produtos - Com Fechamento (1)    ${Caminho_Screenshots}Saídas_Vendas/Fechar Saídas_Vendas Abertas
    Fechar com Sim    

Saídas/Vendas > Alterar Saídas/Vendas
    ${nome_print}=     Set Variable     Alterar Saídas_Vendas
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Alterar Saídas/Vendas (1)
    BaseDesktop.Screenshot    Saidas/Vendas - Produtos - Alterar Saídas/Vendas (1)    ${Caminho_Screenshots}Saídas_Vendas/Alterar Saídas_Vendas
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s
    RPA.Windows.Click         Confirmar
    Fechar janela

Saídas/Vendas > Consultar Saídas/Vendas
    ${nome_print}=     Set Variable     Consultar Saídas_Vendas
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    C
    Sleep                     1s
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Consulta (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s
    RPA.Windows.Click         Confirmar
    BaseDesktop.Screenshot    Saidas/Vendas - Produtos - Consulta (1)    ${Caminho_Screenshots}Saídas_Vendas/Consultar Saídas_Vendas
    Fechar janela

Saídas/Vendas > Excluir Saídas/Vendas
    ${nome_print}=     Set Variable     Excluir Saídas_Vendas
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Excluir saídas/vendas (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s
    RPA.Windows.Click         Confirmar
    BaseDesktop.Screenshot    Excluir saídas/vendas (1)    ${Caminho_Screenshots}Saídas_Vendas/Excluir Saídas_Vendas
    Fechar janela

Saídas/Vendas > Venda Simplificada
    ${nome_print}=     Set Variable     Venda Simplificada
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    V
    RPA.Windows.Get Text      Venda Simplificada (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Venda Simplificada (1)    ${Caminho_Screenshots}Saídas_Vendas/Venda Simplificada
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

Ordem de Serviço > Abrir Ordem de Serviço
    ${nome_print}=     Set Variable     Abrir Ordem de Serviço
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Ordem de Serviço
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Saidas/Vendas - Abertura de Ordem de Serviço (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Saidas/Vendas - Abertura de Ordem de Serviço (1)      ${Caminho_Screenshots}Ordem de Serviço/Abrir Ordem de Serviço
    RPA.Windows.Click         OK
    Fechar com Sim

Ordem de Serviço > Movimentar Ordem de Serviço
    ${nome_print}=     Set Variable     Movimentar Ordem de Serviço
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Ordem de Serviço
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Saidas/Vendas - Movimento de Ordem de Serviço (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Saidas/Vendas - Movimento de Ordem de Serviço (1)    ${Caminho_Screenshots}Ordem de Serviço/Movimentar Ordem de Serviço
    RPA.Windows.Click         OK
    Fechar janela

Ordem de Serviço > Fechar Ordem de Serviço
    ${nome_print}=     Set Variable     Fechar Ordem de Serviço
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Ordem de Serviço
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Saidas/Vendas - Fechamento de Ordem de Serviço (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Saidas/Vendas - Fechamento de Ordem de Serviço (1)    ${Caminho_Screenshots}Ordem de Serviço/Fechar Ordem de Serviço
    RPA.Windows.Click         OK
    Fechar com Sim

Ordem de Serviço > Alterar Ordem de Serviço
    ${nome_print}=     Set Variable     Alterar Ordem de Serviço
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Ordem de Serviço
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Saidas/Vendas - Alterar Ordem de Serviço (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s
    RPA.Windows.Click         Confirmar
    BaseDesktop.Screenshot    Saidas/Vendas - Alterar Ordem de Serviço (1)   ${Caminho_Screenshots}Ordem de Serviço/Alterar Ordem de Serviço
    Fechar janela

Ordem de Serviço > Consultar Ordem de Serviço
    ${nome_print}=     Set Variable     Consultar Ordem de Serviço
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Ordem de Serviço
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Saidas/Vendas - Consulta de Ordem de Serviço (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s
    RPA.Windows.Click         Confirmar
    BaseDesktop.Screenshot    Saidas/Vendas - Consulta de Ordem de Serviço (1)    ${Caminho_Screenshots}Ordem de Serviço/Consultar Ordem de Serviço
    Fechar janela

Ordem de Serviço > Excluir Ordem de Serviço
    ${nome_print}=     Set Variable     Excluir Ordem de Serviço
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Ordem de Serviço
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Excluir saídas/vendas (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s
    RPA.Windows.Click         Confirmar
    BaseDesktop.Screenshot    Excluir saídas/vendas (1)    ${Caminho_Screenshots}Ordem de Serviço/Excluir Ordem de Serviço
    Fechar janela

Saídas para Venda Ambulante > Cadastro de Motivo de Retorno de Vendas Ambulantes
    ${nome_print}=     Set Variable     Cadastro de Motivo de Retorno de Vendas Ambulantes
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Saídas para Venda Ambulante
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Motivo de Retorno de Vendas Ambulantes (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Motivo de Retorno de Vendas Ambulantes (1)    ${Caminho_Screenshots}Saídas para Venda Ambulante/Cadastro de Motivo de Retorno de Vendas Ambulantes
    Fechar com Sim

Saídas para Venda Ambulante > Saídas para Venda Ambulante
    ${nome_print}=     Set Variable     Saídas para Venda Ambulante
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Saídas para Venda Ambulante
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Lançamento de Saída para Venda Ambulante (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Lançamento de Saída para Venda Ambulante (1)    ${Caminho_Screenshots}Saídas para Venda Ambulante/Saídas para Venda Ambulante
    Fechar com Sim

Saídas para Venda Ambulante > Controle de Venda e Devoluções de Saídas para Venda Ambulante
    ${nome_print}=     Set Variable     Controle de Venda e Devoluções de Saídas para Venda Ambulante
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Saídas para Venda Ambulante
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Controle de Venda e Devoluções de Saídas para Venda Ambulante (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Controle de Venda e Devoluções de Saídas para Venda Ambulante (1)    ${Caminho_Screenshots}Saídas para Venda Ambulante/Controle de Venda e Devoluções de Saídas para Venda Ambulante
    Fechar janela

Saídas para Venda Ambulante > Excluir Venda Ambulante
    ${nome_print}=     Set Variable     Excluir Venda Ambulante
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Saídas para Venda Ambulante
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Exclusão de Vendas Ambulantes (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Exclusão de Vendas Ambulantes (1)    ${Caminho_Screenshots}Saídas para Venda Ambulante/Excluir Venda Ambulante
    RPA.Windows.Click         OK
    RPA.Windows.Click         Confirmar
    Fechar janela

Demais Operações de Saída > Manutenção de Devolução de Compra
    ${nome_print}=     Set Variable     Manutenção de Devolução de Compra
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Manutenção de Devolução de Compras (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Manutenção de Devolução de Compras (1)    ${Caminho_Screenshots}Demais Operações de Saída/Manutenção de Devolução de Compra
    RPA.Windows.Click         OK
    Fechar janela

Demais Operações de Saída > Manutenção de Entrega Futura
    ${nome_print}=     Set Variable     Manutenção de Entrega Futura
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Manutenção de Venda de Entrega Futura (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Manutenção de Venda de Entrega Futura (1)    ${Caminho_Screenshots}Demais Operações de Saída/Manutenção de Entrega Futura
    RPA.Windows.Click         OK
    Fechar janela

Demais Operações de Saída > Manutenção de Saídas Diversas
    ${nome_print}=     Set Variable     Manutenção de Saídas Diversas
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Desktop.Press Keys    N
    RPA.Windows.Get Text      Manutenção de Saídas Diversas (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Manutenção de Saídas Diversas (1)    ${Caminho_Screenshots}Demais Operações de Saída/Manutenção de Saídas Diversas
    Fechar janela

Demais Operações de Saída > Emissão de notas fiscais sobre Saídas
    ${nome_print}=     Set Variable     Emissão de notas fiscais sobre Saídas
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Consulta de vendas para Geração de Nota (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de vendas para Geração de Nota (1)    ${Caminho_Screenshots}Demais Operações de Saída/Emissão de notas fiscais sobre Saídas
    RPA.Windows.Click         OK
    Fechar janela

Demais Operações de Saída > Estornar Fechamentos Vendas/Ordens de Serviços
    ${nome_print}=     Set Variable     Estornar Fechamentos Vendas_Ordens de Serviços
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cancelar Fechamentos (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Cancelar Fechamentos (1)    ${Caminho_Screenshots}Demais Operações de Saída/Estornar Fechamentos Vendas_Ordens de Serviços
    Fechar janela

Demais Operações de Saída > Agendamentos > Tipo Contato
    ${nome_print}=     Set Variable     Tipo Contato
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Agendamentos
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de tipo de Histórico de Contatos (1)
    BaseDesktop.Screenshot    Cadastro de tipo de Histórico de Contatos (1)    ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/Tipo Contato
    Fechar janela

Demais Operações de Saída > Agendamentos > Contato
    ${nome_print}=     Set Variable     Contato
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Agendamentos
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Registro de Contato (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Registro de Contato (1)    ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/Contato
    Fechar com Sim

Demais Operações de Saída > Agendamentos > Agendamento
    ${nome_print}=     Set Variable     Agendamento
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Agendamentos
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Agendar (1)
    RPA.Windows.Click         Agendar
    BaseDesktop.Screenshot    Agendar (1)    ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/Agendamento
    RPA.Windows.Click         OK
    Fechar janela

Demais Operações de Saída > Agendamentos > Consultar Agendamentos
    ${nome_print}=     Set Variable     Consultar Agendamentos
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Agendamentos
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Consulta de agendamentos (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de agendamentos (1)    ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/Consultar Agendamentos
    Fechar janela

Demais Operações de Saída > Agendamentos > Relatório de Contatos
    ${nome_print}=     Set Variable     Relatório de Contatos
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Agendamentos
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Relatório de Registro de Contatos (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Registro de Contatos (1)    ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/Relatório de Contatos
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Demais Operações de Saída > Agendamentos > Relatório de Agendamentos
    ${nome_print}=     Set Variable     Relatório de Agendamentos
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Agendamentos
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Relatório de Agendamentos (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Agendamentos (1)    ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/Relatório de Agendamentos
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Demais Operações de Saída > Condicional > Inclusão de Saídas em Condicional
    ${nome_print}=     Set Variable     Inclusão de Saídas em Condicional
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Condicional
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Saída em Condicional (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Saída em Condicional (1)    ${Caminho_Screenshots}Demais Operações de Saída/Condicional/Inclusão de Saídas em Condicional
    Fechar com Sim

Demais Operações de Saída > Condicional > Manutenção/consulta de saídas em condicional
    ${nome_print}=     Set Variable     Manutenção_consulta de saídas em condicional
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Condicional
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Manutenção de Saídas em Condicional (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Manutenção de Saídas em Condicional (1)    ${Caminho_Screenshots}Demais Operações de Saída/Condicional/Manutenção_consulta de saídas em condicional
    Fechar janela

Demais Operações de Saída > Condicional > Saldo de saídas em condicional
    ${nome_print}=     Set Variable     Saldo de saídas em condicional
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Condicional
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Saldo de Saídas em Condicional (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Saldo de Saídas em Condicional (1)    ${Caminho_Screenshots}Demais Operações de Saída/Condicional/Saldo de saídas em condicional
    Fechar janela

Demais Operações de Saída > Fixação de vendas
    ${nome_print}=     Set Variable     Fixação de vendas
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Fixação de Vendas (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Fixação de Vendas (1)    ${Caminho_Screenshots}Demais Operações de Saída/Fixação de vendas
    RPA.Windows.Click         OK
    Fechar janela

Demais Operações de Saída > Exportação > Venda para exportação
    ${nome_print}=     Set Variable     Venda para exportação
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Exportação
    RPA.Desktop.Press Keys    V
    RPA.Windows.Get Text      Vendas para Exportação (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Vendas para Exportação (1)    ${Caminho_Screenshots}Demais Operações de Saída/Exportação/Venda para exportação
    RPA.Windows.Click         Confirmar
    Fechar janela

Demais Operações de Saída > Exportação > Venda para Exportação - Pendentes
    ${nome_print}=     Set Variable     Venda para Exportação - Pendentes
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Exportação
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Vendas para Exportação - Pendentes (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Vendas para Exportação - Pendentes (1)    ${Caminho_Screenshots}Demais Operações de Saída/Exportação/Venda para Exportação - Pendentes
    RPA.Windows.Click         Confirmar
    Fechar janela

Demais Operações de Saída > Exportação > Relatório de Movimentação
    ${nome_print}=     Set Variable     Relatório de Movimentação
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Exportação
    RPA.Desktop.Press Keys    R
    RPA.Windows.Click         OK
    RPA.Windows.Get Text      Vendas para Exportação - Relatório (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Vendas para Exportação - Relatório (1)    ${Caminho_Screenshots}Demais Operações de Saída/Exportação/Relatório de Movimentação
    RPA.Windows.Click         Confirmar
    Fechar janela

Documentos Fiscais > NF-e > Emissão de Notas Fiscais Eletrônicas
    ${nome_print}=     Set Variable     Emissão de Notas Fiscais Eletrônicas
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         NF-e
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Emissão de Notas Fiscais Eletrônicas (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Emissão de Notas Fiscais Eletrônicas (1)    ${Caminho_Screenshots}Documentos Fiscais/NF-e/Emissão de Notas Fiscais Eletrônicas
    Fechar janela
    
Documentos Fiscais > NF-e > Monitorar NFe's
    ${nome_print}=     Set Variable     Monitorar NFe's
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         NF-e
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Monitor de NF-e/NFC-e (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Monitor de NF-e/NFC-e (1)    ${Caminho_Screenshots}Documentos Fiscais/NF-e/Monitorar NFe's
    Fechar janela

Documentos Fiscais > NF-e > Inutilização de Numeração
    ${nome_print}=     Set Variable     Inutilização de Numeração
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         NF-e
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Nota Fiscal Eletrônica - Inutilização de Numeração (1)
    RPA.Windows.Click         Enviar
    BaseDesktop.Screenshot    Nota Fiscal Eletrônica - Inutilização de Numeração (1)    ${Caminho_Screenshots}Documentos Fiscais/NF-e/Inutilização de Numeração
    RPA.Windows.Click         Fechar

Documentos Fiscais > NF-e > Inutilização de Numeração(Envio Rápido)
    ${nome_print}=     Set Variable     Inutilização de Numeração(Envio Rápido)
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         NF-e
    RPA.Desktop.Press Keys    N
    RPA.Windows.Get Text      Inutilização de Numeração - Envio Rápido (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Inutilização de Numeração - Envio Rápido (1)    ${Caminho_Screenshots}Documentos Fiscais/NF-e/Inutilização de Numeração(Envio Rápido)
    Fechar janela

Documentos Fiscais > NF-e > Carta de Correção Eletrônica
    ${nome_print}=     Set Variable     Carta de Correção Eletrônica
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         NF-e
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Carta de Correção Eletrônica (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Carta de Correção Eletrônica (1)    ${Caminho_Screenshots}Documentos Fiscais/NF-e/Carta de Correção Eletrônica
    RPA.Windows.Click         OK
    RPA.Windows.Click         Fechar

Documentos Fiscais > NF-e > Insucesso de Entrega da NF-e
    ${nome_print}=     Set Variable     Insucesso de Entrega da NF-e
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         NF-e
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Nota Fiscal Eletrônica - Insucesso na Entrega (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Nota Fiscal Eletrônica - Insucesso na Entrega (1)    ${Caminho_Screenshots}Documentos Fiscais/NF-e/Insucesso de Entrega da NF-e
    RPA.Windows.Click         OK
    Fechar janela

Documentos Fiscais > Monitorar NFSE's
    ${nome_print}=     Set Variable     Monitorar NFSE's
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Consulta de Notas Fiscais de Serviço Eletrônicas (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Notas Fiscais de Serviço Eletrônicas (1)      ${Caminho_Screenshots}Documentos Fiscais/Monitorar NFSE's
    Fechar janela

Documentos Fiscais > Monitorar GNRE
    ${nome_print}=     Set Variable     Monitorar GNRE
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Consulta de Vendas e GNRE (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Vendas e GNRE (1)  ${Caminho_Screenshots}Documentos Fiscais/Monitorar GNRE
    Fechar janela

Documentos Fiscais > ECF > Leitura X
    ${nome_print}=     Set Variable     Leitura X
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         ECF
    RPA.Desktop.Press Keys    X
    RPA.Windows.Get Text      Leitura X (1)
    BaseDesktop.Screenshot    Leitura X (1)    ${Caminho_Screenshots}Documentos Fiscais/ECF/Leitura X
    Fechar janela

Documentos Fiscais > ECF > Redução Z
    ${nome_print}=     Set Variable     Redução Z
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         ECF
    RPA.Desktop.Press Keys    Z
    RPA.Windows.Get Text      Redução Z (1)
    BaseDesktop.Screenshot    Redução Z (1)    ${Caminho_Screenshots}Documentos Fiscais/ECF/Redução Z
    Fechar janela

Documentos Fiscais > ECF > Relatório Gerencial
    ${nome_print}=     Set Variable     Relatório Gerencial
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         ECF
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Relatório Gerencial (1)
    BaseDesktop.Screenshot    Relatório Gerencial (1)    ${Caminho_Screenshots}Documentos Fiscais/ECF/Relatório Gerencial
    Fechar janela

Documentos Fiscais > ECF > Cancelar Último Cupom
    ${nome_print}=     Set Variable     Cancelar Último Cupom
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         ECF
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cancelar Último Cupom (1)
    BaseDesktop.Screenshot    Cancelar Último Cupom (1)    ${Caminho_Screenshots}Documentos Fiscais/ECF/Cancelar Último Cupom
    Fechar janela

Documentos Fiscais > ECF > Mapa Resumo (Redução Z)
    ${nome_print}=     Set Variable     Mapa Resumo (Redução Z)
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         ECF
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Mapa Resumo da ECF (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Mapa Resumo da ECF (1)    ${Caminho_Screenshots}Documentos Fiscais/ECF/Mapa Resumo (Redução Z)
    Fechar com Sim

# TODO:Ajustar o ambiente para testar.
Documentos Fiscais > MDF-e > Manifesto de Documentos Fiscais
    ${nome_print}=     Set Variable     Manifesto de Documentos Fiscais
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         MDF-e
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Manifesto de Documentos Fiscais (1)
    BaseDesktop.Screenshot    Manifesto de Documentos Fiscais (1)    ${Caminho_Screenshots}Documentos Fiscais/MDF-e/Manifesto de Documentos Fiscais
    Fechar janela

Documentos Fiscais > MDF-e > Monitor - MDF-e
    ${nome_print}=     Set Variable     Monitor - MDF-e
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         MDF-e
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Monitor MDF-e (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Monitor MDF-e (1)    ${Caminho_Screenshots}Documentos Fiscais/MDF-e/Monitor - MDF-e
    Fechar janela

Documentos Fiscais > MDF-e > Importar NF-e para MDF-e
    ${nome_print}=     Set Variable     Importar NF-e para MDF-e
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         MDF-e
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Importador MDF-e (1)
    BaseDesktop.Screenshot    Importador MDF-e (1)    ${Caminho_Screenshots}Documentos Fiscais/MDF-e/Importar NF-e para MDF-e
    Fechar janela

Pedidos > Pedidos de Venda > Pedido de Venda
    ${nome_print}=     Set Variable     Pedido de Venda
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Pedidos de Venda (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Pedidos de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Pedido de Venda
    Fechar com Sim

Pedidos > Pedidos de Venda > Zeramento de Pedido
    ${nome_print}=     Set Variable     Zeramento de Pedido
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    Z
    RPA.Windows.Get Text      Zeramento de Pedido de Venda (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Zeramento de Pedido de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Zeramento de Pedido
    Fechar com Sim

Pedidos > Pedidos de Venda > Pré Zeramento de Pedido
    ${nome_print}=     Set Variable     Pré Zeramento de Pedido
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Pré Zeramento de Pedido de Venda (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Pré Zeramento de Pedido de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Pré Zeramento de Pedido
    Fechar com Sim

Pedidos > Pedidos de Venda > Gerar Venda por Pedido de Venda
    ${nome_print}=     Set Variable     Gerar Venda por Pedido de Venda
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Gerador de Vendas por Pedido de Venda (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Gerador de Vendas por Pedido de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Gerar Venda por Pedido de Venda
    Fechar janela

Pedidos > Pedidos de Venda > Pedido de Venda Simplificado
    ${nome_print}=     Set Variable     Pedido de Venda Simplificado
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Pedido de Venda Simplificado
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Pedido de Venda Simplificado    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Pedido de Venda Simplificado
    Fechar com Sim

Pedidos > Pedidos de Venda > Manutenção de Pedido de Venda
    ${nome_print}=     Set Variable     Manutenção de Pedido de Venda
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Manutenção de Pedido de Venda (1)
    RPA.Windows.Click         Validar Pedido
    BaseDesktop.Screenshot    Manutenção de Pedido de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Manutenção de Pedido de Venda
    RPA.Windows.Click         OK
    Fechar janela

Pedidos > Pedidos de Venda > Cadastro de Status
    ${nome_print}=     Set Variable     Cadastro de Status
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Status - Pedido de Venda (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Cadastro de Status - Pedido de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Cadastro de Status
    Fechar com Sim

Pedidos > Pedidos de Venda > Aprovação/Rejeição
    ${nome_print}=     Set Variable     Aprovação_Rejeição
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Aprovação/Rejeição de Pedidos de Venda (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Aprovação/Rejeição de Pedidos de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Aprovação_Rejeição
    Fechar janela

Pedidos > Pedidos de Venda > Estorno da Aprovação
    ${nome_print}=     Set Variable     Estorno da Aprovação
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    S
    Sleep                     1s
    RPA.Windows.Get Text      Estorno da Aprovação de Pedidos de Venda (1)
    RPA.Windows.Click         Carregar
    RPA.Windows.Click         Sim
    BaseDesktop.Screenshot    Estorno da Aprovação de Pedidos de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Estorno da Aprovação
    RPA.Windows.Click         Fechar

Pedidos > Pedidos de Venda > Enviar Email para Aprovação/Rejeição Pedido de Venda
    ${nome_print}=     Set Variable     Enviar Email para Aprovação_Rejeição Pedido de Venda
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    N
    RPA.Windows.Get Text      Envio de Email para Pedidos de Venda Aprovados/Rejeitados (1)
    RPA.Windows.Click         Carregar    
    BaseDesktop.Screenshot    Envio de Email para Pedidos de Venda Aprovados/Rejeitados (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Enviar Email para Aprovação_Rejeição Pedido de Venda
    Fechar janela

Pedidos > Pedidos de Venda > Definir lotes - Expedição
    ${nome_print}=     Set Variable     Definir lotes - Expedição
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    D
    RPA.Windows.Get Text      Definir lotes Expedição (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Definir lotes Expedição (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Definir lotes - Expedição
    Fechar janela

Pedidos > Pedidos de Venda > Modelo de Impressão
    ${nome_print}=     Set Variable     Modelo de Impressão
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Configuração de Layout Personalizado (1)
    repetidor de teclas       tab   5
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Configuração de Layout Personalizado (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Modelo de Impressão
    RPA.Windows.Click         Confirmar
    Fechar com Sim    
    
Pedidos > Pedidos de Venda > Agrupamento de Pedidos de Venda > Agrupar Pedidos de Venda
    ${nome_print}=     Set Variable     Agrupar Pedidos de Venda
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Windows.Click         Agrupador de Pedidos de Venda
    RPA.Desktop.Press Keys    A
    Sleep                     1s
    RPA.Windows.Get Text      Agrupador de Pedidos de Venda
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Agrupador de Pedidos de Venda    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Agrupamento de Pedidos de Venda/Agrupar Pedidos de Venda
    RPA.Windows.Click         Fechar  

Pedidos > Pedidos de Venda > Agrupamento de Pedidos de Venda > Estornar Pedidos de Venda Agrupados
    ${nome_print}=     Set Variable     Estornar Pedidos de Venda Agrupados
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Windows.Click         Agrupador de Pedidos de Venda
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Estorno de Agrupamento de Pedidos de Venda (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Estorno de Agrupamento de Pedidos de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Agrupamento de Pedidos de Venda/Estornar Pedidos de Venda Agrupados
    Fechar janela

Pedidos > Pedidos de Venda > Agrupamento de Pedidos de Venda > Relatório de Pedidos de Venda Agrupados
    ${nome_print}=     Set Variable     Relatório de Pedidos de Venda Agrupados
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Windows.Click         Agrupador de Pedidos de Venda
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Relatório de Pedidos de Venda Agrupados (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Pedidos de Venda Agrupados (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Agrupamento de Pedidos de Venda/Relatório de Pedidos de Venda Agrupados
    RPA.Windows.Click         Confirmar
    Fechar janela

Pedidos > Pedidos de Venda > Reprocessamento de Custos Gerenciais de Pedido de Venda
    ${nome_print}=     Set Variable     Reprocessamento de Custos Gerenciais de Pedido de Venda
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Reprocessamento Custos Gerenciais Pedido de Venda (1)
    RPA.Windows.Click         Processar
    BaseDesktop.Screenshot    Reprocessamento Custos Gerenciais Pedido de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Reprocessamento de Custos Gerenciais de Pedido de Venda
    RPA.Windows.Click         OK  
    Fechar janela

Pedidos > Pedidos de Transferência
    ${nome_print}=     Set Variable     Pedidos de Transferência
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Pedido de Transferência (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Pedido de Transferência (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Pedidos de Transferência
    Fechar com Sim

Orçamentos > Orçamentos
    ${nome_print}=     Set Variable     Orçamentos
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Orçamentos
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Orçamentos (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Orçamentos (1)    ${Caminho_Screenshots}Orçamentos/Orçamentos
    RPA.Windows.Click         OK
    Fechar com Sim

Orçamentos > Consulta
    ${nome_print}=     Set Variable     Consulta
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Orçamentos
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Consulta de Orçamentos (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Orçamentos (1)    ${Caminho_Screenshots}Orçamentos/Consulta
    Fechar janela

Pesagem Geral
    ${nome_print}=     Set Variable     Pesagem Geral
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Pesagem Geral
    RPA.Windows.Get Text      Consulta de Pesagem Geral (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Pesagem Geral (1)    ${Caminho_Screenshots}Pesagem Geral
    Fechar janela

Controle de Viagens de Vendedores > Lançamento de Viagens
    ${nome_print}=     Set Variable     Lançamento de Viagens
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Controle de Viagens de Vendedores
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Lançamento de Viagens (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Lançamento de Viagens (1)    ${Caminho_Screenshots}Controle de Viagens de Vendedores/Lançamento de Viagens
    Fechar com Sim

Controle de Viagens de Vendedores > Lançamento de Despesas
    ${nome_print}=     Set Variable     Lançamento de Despesas
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Controle de Viagens de Vendedores
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Lançamento de Despesas (1)
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Lançamento de Despesas (1)    ${Caminho_Screenshots}Controle de Viagens de Vendedores/Lançamento de Despesas
    Fechar com Sim

Controle de Viagens de Vendedores > Relatório de Despesas
    ${nome_print}=     Set Variable     Relatório de Despesas
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Controle de Viagens de Vendedores
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Relatório de Despesas (1)
    repetidor de teclas       tab    2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório de Despesas (1)    ${Caminho_Screenshots}Controle de Viagens de Vendedores/Relatório de Despesas
    RPA.Windows.Click         Confirmar
    Fechar janela

Gerenciamento de Preços > Formação de Preços de Venda
    ${nome_print}=     Set Variable     Formação de Preços de Venda
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Gerenciamento de Preços
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Formação de Preços de Venda (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Formação de Preços de Venda (1)    ${Caminho_Screenshots}Gerenciamento de Preços/Formação de Preços de Venda
    RPA.Windows.Click         OK
    Fechar janela

Gerenciamento de Preços > Tabela de Preços Condicionais
    ${nome_print}=     Set Variable     Tabela de Preços Condicionais
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Gerenciamento de Preços
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Tabela de Preço Condicional (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Tabela de Preço Condicional (1)    ${Caminho_Screenshots}Gerenciamento de Preços/Tabela de Preços Condicionais
    Fechar janela

Gerenciamento de Preços > Tabela de Preços de Venda
    ${nome_print}=     Set Variable     Tabela de Preços de Venda
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Gerenciamento de Preços
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Tabela de Preços de Venda (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Tabela de Preços de Venda (1)    ${Caminho_Screenshots}Gerenciamento de Preços/Tabela de Preços de Venda
    RPA.Windows.Click         Sim
    Fechar janela

Caixa Operador > Abertura
    ${nome_print}=     Set Variable     Abertura
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Caixa Operador
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Abertura de Caixa
    RPA.Desktop.Press Keys    Enter
    RPA.Windows.Click         Confirmar
    BaseDesktop.Screenshot    Abertura de Caixa    ${Caminho_Screenshots}Caixa Operador/Abertura
    Fechar janela

Caixa Operador > Suprimento/Entradas
    ${nome_print}=     Set Variable     Suprimento_Entradas
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Caixa Operador
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Suprimento/Entradas
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Suprimento/Entradas    ${Caminho_Screenshots}Caixa Operador/Suprimento_Entradas
    Fechar com Sim

Caixa Operador > Sangria/Saídas
    ${nome_print}=     Set Variable     Sangria_Saídas
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Caixa Operador
    RPA.Desktop.Press Keys    N
    RPA.Windows.Get Text      Sangria\\Saidas
    RPA.Windows.Click         Novo
    BaseDesktop.Screenshot    Sangria\\Saidas    ${Caminho_Screenshots}Caixa Operador/Sangria_Saídas
    Fechar com Sim

Caixa Operador > Fechamento
    ${nome_print}=     Set Variable     Fechamento
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Caixa Operador
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Fechamento de Caixa
    RPA.Desktop.Press Keys    Enter
    RPA.Windows.Click         Confirmar
    BaseDesktop.Screenshot    Fechamento de Caixa    ${Caminho_Screenshots}Caixa Operador/Fechamento
    Fechar janela

Caixa Operador > Relatório
    ${nome_print}=     Set Variable     Relatório
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Caixa Operador
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Relatório do Caixa Operador (1)
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseDesktop.Screenshot    Relatório do Caixa Operador (1)    ${Caminho_Screenshots}Caixa Operador/Relatório
    RPA.Windows.Click         Confirmar
    Fechar janela

Processos Personalizados
    ${nome_print}=     Set Variable     Processos Personalizados
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Processos Personalizados
    RPA.Windows.Get Text      Processos Personalizados (1)
    RPA.Windows.Click         Cadastrar Novo Processo
    BaseDesktop.Screenshot    Processos Personalizados (1)    ${Caminho_Screenshots}Caixa Operador/Processos Personalizados
    RPA.Windows.Click         Sair
    Fechar janela

Controle de Recorrências
    ${nome_print}=     Set Variable     Controle de Recorrências
    [Tags]    Vendas   Manutenções   SmokeTest
    Manutenções
    RPA.Windows.Click         Controle de Recorrências
    RPA.Windows.Get Text      Consulta de Recorrências (1)
    RPA.Windows.Click         Carregar
    BaseDesktop.Screenshot    Consulta de Recorrências (1)    ${Caminho_Screenshots}Caixa Operador/Controle de Recorrências
    RPA.Windows.Click         OK
    Fechar janela