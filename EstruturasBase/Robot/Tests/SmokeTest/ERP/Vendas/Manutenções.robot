*** Settings ***
Documentation    Smoke Test: Vendas
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}



*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Vendas/Manutenções/    
${nome_print}
${nome_exe}=    cde_win_ven
*** Keywords ***

Manutenções
    Cadastros
    Repetidor de Teclas     Right    2

*** Test Cases ***

Saídas/Vendas > Incluir/Alterar - Sem Fechamento
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Saídas_Vendas/                         Incluir_Alterar - Sem Fechamento
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Sem Fechamento (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Saidas/Vendas - Produtos - Sem Fechamento (1)    ${Caminho_Screenshots}Saídas_Vendas/Incluir_Alterar - Sem Fechamento
    Fechar com Sim

Saídas/Vendas > Incluir - Com Fechamento
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Saídas_Vendas/                         Incluir - Com Fechamento
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Com Fechamento (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Saidas/Vendas - Produtos - Com Fechamento (1)    ${Caminho_Screenshots}Saídas_Vendas/Incluir - Com Fechamento
    Fechar com Sim

Saídas/Vendas > Fechar Saídas/Vendas Abertas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Saídas_Vendas/                         Fechar Saídas_Vendas Abertas
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Com Fechamento (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Saidas/Vendas - Produtos - Com Fechamento (1)    ${Caminho_Screenshots}Saídas_Vendas/Fechar Saídas_Vendas Abertas
    Fechar com Sim    

Saídas/Vendas > Alterar Saídas/Vendas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Saídas_Vendas/                         Alterar Saídas_Vendas
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Alterar Saídas/Vendas (1)
    BaseKeywordsDesktop.Screenshot    Saidas/Vendas - Produtos - Alterar Saídas/Vendas (1)    ${Caminho_Screenshots}Saídas_Vendas/Alterar Saídas_Vendas
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s
    RPA.Windows.Click         Confirmar
    Fechar janela

Saídas/Vendas > Consultar Saídas/Vendas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Saídas_Vendas/                         Consultar Saídas_Vendas
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    C
    Sleep                     1s
    RPA.Windows.Get Text      Saidas/Vendas - Produtos - Consulta (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s
    RPA.Windows.Click         Confirmar
    BaseKeywordsDesktop.Screenshot    Saidas/Vendas - Produtos - Consulta (1)    ${Caminho_Screenshots}Saídas_Vendas/Consultar Saídas_Vendas
    Fechar janela

Saídas/Vendas > Excluir Saídas/Vendas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Saídas_Vendas/                         Excluir Saídas_Vendas
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Excluir saídas/vendas (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s
    RPA.Windows.Click         Confirmar
    BaseKeywordsDesktop.Screenshot    Excluir saídas/vendas (1)    ${Caminho_Screenshots}Saídas_Vendas/Excluir Saídas_Vendas
    Fechar janela

Saídas/Vendas > Venda Simplificada
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Saídas_Vendas/                         Venda Simplificada
    Manutenções
    RPA.Windows.Click         Saídas/Vendas
    RPA.Desktop.Press Keys    V
    RPA.Windows.Get Text      Venda Simplificada (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Venda Simplificada (1)    ${Caminho_Screenshots}Saídas_Vendas/Venda Simplificada
    RPA.Windows.Click         Confirmar
    RPA.Windows.Click         OK
    Fechar janela

Ordem de Serviço > Abrir Ordem de Serviço
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Ordem de Serviço/                         Abrir Ordem de Serviço
    Manutenções
    RPA.Windows.Click         Ordem de Serviço
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Saidas/Vendas - Abertura de Ordem de Serviço (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Saidas/Vendas - Abertura de Ordem de Serviço (1)      ${Caminho_Screenshots}Ordem de Serviço/Abrir Ordem de Serviço
    RPA.Windows.Click         OK
    Fechar com Sim

Ordem de Serviço > Movimentar Ordem de Serviço
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Ordem de Serviço/                         Movimentar Ordem de Serviço
    Manutenções
    RPA.Windows.Click         Ordem de Serviço
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Saidas/Vendas - Movimento de Ordem de Serviço (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Saidas/Vendas - Movimento de Ordem de Serviço (1)    ${Caminho_Screenshots}Ordem de Serviço/Movimentar Ordem de Serviço
    RPA.Windows.Click         OK
    Fechar janela

Ordem de Serviço > Fechar Ordem de Serviço
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Ordem de Serviço/                         Fechar Ordem de Serviço
    Manutenções
    RPA.Windows.Click         Ordem de Serviço
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Saidas/Vendas - Fechamento de Ordem de Serviço (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Saidas/Vendas - Fechamento de Ordem de Serviço (1)    ${Caminho_Screenshots}Ordem de Serviço/Fechar Ordem de Serviço
    RPA.Windows.Click         OK
    Fechar com Sim

Ordem de Serviço > Alterar Ordem de Serviço
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Ordem de Serviço/                         Alterar Ordem de Serviço
    Manutenções
    RPA.Windows.Click         Ordem de Serviço
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Saidas/Vendas - Alterar Ordem de Serviço (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s
    RPA.Windows.Click         Confirmar
    BaseKeywordsDesktop.Screenshot    Saidas/Vendas - Alterar Ordem de Serviço (1)   ${Caminho_Screenshots}Ordem de Serviço/Alterar Ordem de Serviço
    Fechar janela

Ordem de Serviço > Consultar Ordem de Serviço
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Ordem de Serviço/                         Consultar Ordem de Serviço
    Manutenções
    RPA.Windows.Click         Ordem de Serviço
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Saidas/Vendas - Consulta de Ordem de Serviço (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s
    RPA.Windows.Click         Confirmar
    BaseKeywordsDesktop.Screenshot    Saidas/Vendas - Consulta de Ordem de Serviço (1)    ${Caminho_Screenshots}Ordem de Serviço/Consultar Ordem de Serviço
    Fechar janela

Ordem de Serviço > Excluir Ordem de Serviço
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Ordem de Serviço/                         Excluir Ordem de Serviço
    Manutenções
    RPA.Windows.Click         Ordem de Serviço
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Excluir saídas/vendas (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    Sleep                     1s
    RPA.Windows.Click         Confirmar
    BaseKeywordsDesktop.Screenshot    Excluir saídas/vendas (1)    ${Caminho_Screenshots}Ordem de Serviço/Excluir Ordem de Serviço
    Fechar janela

Saídas para Venda Ambulante > Cadastro de Motivo de Retorno de Vendas Ambulantes
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Saídas para Venda Ambulante/                         Cadastro de Motivo de Retorno de Vendas Ambulantes
    Manutenções
    RPA.Windows.Click         Saídas para Venda Ambulante
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Motivo de Retorno de Vendas Ambulantes (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Motivo de Retorno de Vendas Ambulantes (1)    ${Caminho_Screenshots}Saídas para Venda Ambulante/Cadastro de Motivo de Retorno de Vendas Ambulantes
    Fechar com Sim

Saídas para Venda Ambulante > Saídas para Venda Ambulante
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Saídas para Venda Ambulante/                         Saídas para Venda Ambulante
    Manutenções
    RPA.Windows.Click         Saídas para Venda Ambulante
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Lançamento de Saída para Venda Ambulante (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Lançamento de Saída para Venda Ambulante (1)    ${Caminho_Screenshots}Saídas para Venda Ambulante/Saídas para Venda Ambulante
    Fechar com Sim

Saídas para Venda Ambulante > Controle de Venda e Devoluções de Saídas para Venda Ambulante
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Saídas para Venda Ambulante/                         Controle de Venda e Devoluções de Saídas para Venda Ambulante
    Manutenções
    RPA.Windows.Click         Saídas para Venda Ambulante
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Controle de Venda e Devoluções de Saídas para Venda Ambulante (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Controle de Venda e Devoluções de Saídas para Venda Ambulante (1)    ${Caminho_Screenshots}Saídas para Venda Ambulante/Controle de Venda e Devoluções de Saídas para Venda Ambulante
    Fechar janela

Saídas para Venda Ambulante > Excluir Venda Ambulante
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Saídas para Venda Ambulante/                         Excluir Venda Ambulante
    Manutenções
    RPA.Windows.Click         Saídas para Venda Ambulante
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Exclusão de Vendas Ambulantes (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Exclusão de Vendas Ambulantes (1)    ${Caminho_Screenshots}Saídas para Venda Ambulante/Excluir Venda Ambulante
    RPA.Windows.Click         OK
    RPA.Windows.Click         Confirmar
    Fechar janela

Demais Operações de Saída > Manutenção de Devolução de Compra
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/                         Manutenção de Devolução de Compra
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Manutenção de Devolução de Compras (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Manutenção de Devolução de Compras (1)    ${Caminho_Screenshots}Demais Operações de Saída/Manutenção de Devolução de Compra
    RPA.Windows.Click         OK
    Fechar janela

Demais Operações de Saída > Manutenção de Entrega Futura
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/                         Manutenção de Entrega Futura
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Manutenção de Venda de Entrega Futura (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Manutenção de Venda de Entrega Futura (1)    ${Caminho_Screenshots}Demais Operações de Saída/Manutenção de Entrega Futura
    RPA.Windows.Click         OK
    Fechar janela

Demais Operações de Saída > Manutenção de Saídas Diversas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/                         Manutenção de Saídas Diversas
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Desktop.Press Keys    N
    RPA.Windows.Get Text      Manutenção de Saídas Diversas (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Manutenção de Saídas Diversas (1)    ${Caminho_Screenshots}Demais Operações de Saída/Manutenção de Saídas Diversas
    Fechar janela

Demais Operações de Saída > Emissão de notas fiscais sobre Saídas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/                         Emissão de notas fiscais sobre Saídas
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Consulta de vendas para Geração de Nota (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta de vendas para Geração de Nota (1)    ${Caminho_Screenshots}Demais Operações de Saída/Emissão de notas fiscais sobre Saídas
    RPA.Windows.Click         OK
    Fechar janela

Demais Operações de Saída > Estornar Fechamentos Vendas/Ordens de Serviços
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/                         Estornar Fechamentos Vendas_Ordens de Serviços
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cancelar Fechamentos (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Cancelar Fechamentos (1)    ${Caminho_Screenshots}Demais Operações de Saída/Estornar Fechamentos Vendas_Ordens de Serviços
    Fechar janela

Demais Operações de Saída > Agendamentos > Tipo Contato
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/                         Tipo Contato
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Agendamentos
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Cadastro de tipo de Histórico de Contatos (1)
    BaseKeywordsDesktop.Screenshot    Cadastro de tipo de Histórico de Contatos (1)    ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/Tipo Contato
    Fechar janela

Demais Operações de Saída > Agendamentos > Contato
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/                         Contato
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Agendamentos
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Registro de Contato (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Registro de Contato (1)    ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/Contato
    Fechar com Sim

Demais Operações de Saída > Agendamentos > Agendamento
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/                         Agendamento
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Agendamentos
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Agendar (1)
    RPA.Windows.Click         Agendar
    BaseKeywordsDesktop.Screenshot    Agendar (1)    ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/Agendamento
    RPA.Windows.Click         OK
    Fechar janela

Demais Operações de Saída > Agendamentos > Consultar Agendamentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/                         Consultar Agendamentos
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Agendamentos
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Consulta de agendamentos (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta de agendamentos (1)    ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/Consultar Agendamentos
    Fechar janela

Demais Operações de Saída > Agendamentos > Relatório de Contatos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/                         Relatório de Contatos
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Agendamentos
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Relatório de Registro de Contatos (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Relatório de Registro de Contatos (1)    ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/Relatório de Contatos
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Demais Operações de Saída > Agendamentos > Relatório de Agendamentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/                         Relatório de Agendamentos
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Agendamentos
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Relatório de Agendamentos (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Relatório de Agendamentos (1)    ${Caminho_Screenshots}Demais Operações de Saída/Agendamentos/Relatório de Agendamentos
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Demais Operações de Saída > Condicional > Inclusão de Saídas em Condicional
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/Condicional/                         Inclusão de Saídas em Condicional
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Condicional
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Saída em Condicional (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Saída em Condicional (1)    ${Caminho_Screenshots}Demais Operações de Saída/Condicional/Inclusão de Saídas em Condicional
    Fechar com Sim

Demais Operações de Saída > Condicional > Manutenção/consulta de saídas em condicional
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/Condicional/                         Manutenção_consulta de saídas em condicional
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Condicional
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Manutenção de Saídas em Condicional (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Manutenção de Saídas em Condicional (1)    ${Caminho_Screenshots}Demais Operações de Saída/Condicional/Manutenção_consulta de saídas em condicional
    Fechar janela

Demais Operações de Saída > Condicional > Saldo de saídas em condicional
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/Condicional/                         Saldo de saídas em condicional
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Condicional
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Saldo de Saídas em Condicional (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Saldo de Saídas em Condicional (1)    ${Caminho_Screenshots}Demais Operações de Saída/Condicional/Saldo de saídas em condicional
    Fechar janela

Demais Operações de Saída > Fixação de vendas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/                         Fixação de vendas
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Fixação de Vendas (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Fixação de Vendas (1)    ${Caminho_Screenshots}Demais Operações de Saída/Fixação de vendas
    RPA.Windows.Click         OK
    Fechar janela

Demais Operações de Saída > Exportação > Venda para exportação
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/Exportação/                         Venda para exportação
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Exportação
    RPA.Desktop.Press Keys    V
    RPA.Windows.Get Text      Vendas para Exportação (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Vendas para Exportação (1)    ${Caminho_Screenshots}Demais Operações de Saída/Exportação/Venda para exportação
    RPA.Windows.Click         Confirmar
    Fechar janela

Demais Operações de Saída > Exportação > Venda para Exportação - Pendentes
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/Exportação/                         Venda para Exportação - Pendentes
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Exportação
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Vendas para Exportação - Pendentes (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Vendas para Exportação - Pendentes (1)    ${Caminho_Screenshots}Demais Operações de Saída/Exportação/Venda para Exportação - Pendentes
    RPA.Windows.Click         Confirmar
    Fechar janela

Demais Operações de Saída > Exportação > Relatório de Movimentação
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Demais Operações de Saída/Exportação/                         Relatório de Movimentação
    Manutenções
    RPA.Windows.Click         Demais Operações de Saída
    RPA.Windows.Click         Exportação
    RPA.Desktop.Press Keys    R
    RPA.Windows.Click         OK
    RPA.Windows.Get Text      Vendas para Exportação - Relatório (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Vendas para Exportação - Relatório (1)    ${Caminho_Screenshots}Demais Operações de Saída/Exportação/Relatório de Movimentação
    RPA.Windows.Click         Confirmar
    Fechar janela
Documentos Fiscais > NF-e > Emissão de Notas Fiscais Eletrônicas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Documentos Fiscais/NF-e/                         Emissão de Notas Fiscais Eletrônicas
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         NF-e
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Emissão de Notas Fiscais Eletrônicas (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Emissão de Notas Fiscais Eletrônicas (1)    ${Caminho_Screenshots}Documentos Fiscais/NF-e/Emissão de Notas Fiscais Eletrônicas
    Fechar janela
    
Documentos Fiscais > NF-e > Monitorar NFe's
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Documentos Fiscais/NF-e/                         Monitorar NFe's
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         NF-e
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Monitor de NF-e/NFC-e (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Monitor de NF-e/NFC-e (1)    ${Caminho_Screenshots}Documentos Fiscais/NF-e/Monitorar NFe's
    Fechar janela

Documentos Fiscais > NF-e > Inutilização de Numeração
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Documentos Fiscais/NF-e/                         Inutilização de Numeração
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         NF-e
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Nota Fiscal Eletrônica - Inutilização de Numeração (1)
    RPA.Windows.Click         Enviar
    BaseKeywordsDesktop.Screenshot    Nota Fiscal Eletrônica - Inutilização de Numeração (1)    ${Caminho_Screenshots}Documentos Fiscais/NF-e/Inutilização de Numeração
    RPA.Windows.Click         Fechar

Documentos Fiscais > NF-e > Inutilização de Numeração(Envio Rápido)
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Documentos Fiscais/NF-e/                         Inutilização de Numeração(Envio Rápido)
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         NF-e
    RPA.Desktop.Press Keys    N
    RPA.Windows.Get Text      Inutilização de Numeração - Envio Rápido (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Inutilização de Numeração - Envio Rápido (1)    ${Caminho_Screenshots}Documentos Fiscais/NF-e/Inutilização de Numeração(Envio Rápido)
    Fechar janela

Documentos Fiscais > NF-e > Carta de Correção Eletrônica
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Documentos Fiscais/NF-e/                         Carta de Correção Eletrônica
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         NF-e
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Carta de Correção Eletrônica (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Carta de Correção Eletrônica (1)    ${Caminho_Screenshots}Documentos Fiscais/NF-e/Carta de Correção Eletrônica
    RPA.Windows.Click         OK
    RPA.Windows.Click         Fechar

Documentos Fiscais > NF-e > Insucesso de Entrega da NF-e
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Documentos Fiscais/NF-e/                         Insucesso de Entrega da NF-e
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         NF-e
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Nota Fiscal Eletrônica - Insucesso na Entrega (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Nota Fiscal Eletrônica - Insucesso na Entrega (1)    ${Caminho_Screenshots}Documentos Fiscais/NF-e/Insucesso de Entrega da NF-e
    RPA.Windows.Click         OK
    Fechar janela

Documentos Fiscais > Monitorar NFSE's
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Documentos Fiscais/                      Monitorar NFSE's
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Consulta de Notas Fiscais de Serviço Eletrônicas (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta de Notas Fiscais de Serviço Eletrônicas (1)      ${Caminho_Screenshots}Documentos Fiscais/Monitorar NFSE's
    Fechar janela

Documentos Fiscais > Monitorar GNRE
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Documentos Fiscais/                      Monitorar GNRE
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Consulta de Vendas e GNRE (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta de Vendas e GNRE (1)  ${Caminho_Screenshots}Documentos Fiscais/Monitorar GNRE
    Fechar janela

Documentos Fiscais > ECF > Leitura X
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Documentos Fiscais/ECF/                         Leitura X
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         ECF
    RPA.Desktop.Press Keys    X
    RPA.Windows.Get Text      Leitura X (1)
    BaseKeywordsDesktop.Screenshot    Leitura X (1)    ${Caminho_Screenshots}Documentos Fiscais/ECF/Leitura X
    Fechar janela

Documentos Fiscais > ECF > Redução Z
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Documentos Fiscais/ECF/                         Redução Z
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         ECF
    RPA.Desktop.Press Keys    Z
    RPA.Windows.Get Text      Redução Z (1)
    BaseKeywordsDesktop.Screenshot    Redução Z (1)    ${Caminho_Screenshots}Documentos Fiscais/ECF/Redução Z
    Fechar janela

Documentos Fiscais > ECF > Relatório Gerencial
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Documentos Fiscais/ECF/                         Relatório Gerencial
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         ECF
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Relatório Gerencial (1)
    BaseKeywordsDesktop.Screenshot    Relatório Gerencial (1)    ${Caminho_Screenshots}Documentos Fiscais/ECF/Relatório Gerencial
    Fechar janela

Documentos Fiscais > ECF > Cancelar Último Cupom
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Documentos Fiscais/ECF/                         Cancelar Último Cupom
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         ECF
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cancelar Último Cupom (1)
    BaseKeywordsDesktop.Screenshot    Cancelar Último Cupom (1)    ${Caminho_Screenshots}Documentos Fiscais/ECF/Cancelar Último Cupom
    Fechar janela

Documentos Fiscais > ECF > Mapa Resumo (Redução Z)
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Documentos Fiscais/ECF/                         Mapa Resumo (Redução Z)
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         ECF
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Mapa Resumo da ECF (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Mapa Resumo da ECF (1)    ${Caminho_Screenshots}Documentos Fiscais/ECF/Mapa Resumo (Redução Z)
    Fechar com Sim


Documentos Fiscais > MDF-e > Manifesto de Documentos Fiscais
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Documentos Fiscais/MDF-e/                         Manifesto de Documentos Fiscais
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         MDF-e
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Manifesto de Documentos Fiscais (1)
    BaseKeywordsDesktop.Screenshot    Manifesto de Documentos Fiscais (1)    ${Caminho_Screenshots}Documentos Fiscais/MDF-e/Manifesto de Documentos Fiscais
    Fechar janela

Documentos Fiscais > MDF-e > Monitor - MDF-e
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Documentos Fiscais/MDF-e/                         Monitor - MDF-e
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         MDF-e
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Monitor MDF-e (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Monitor MDF-e (1)    ${Caminho_Screenshots}Documentos Fiscais/MDF-e/Monitor - MDF-e
    Fechar janela

Documentos Fiscais > MDF-e > Importar NF-e para MDF-e
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Documentos Fiscais/MDF-e/                         Importar NF-e para MDF-e
    Manutenções
    RPA.Windows.Click         Documentos Fiscais
    RPA.Windows.Click         MDF-e
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Importador MDF-e (1)
    BaseKeywordsDesktop.Screenshot    Importador MDF-e (1)    ${Caminho_Screenshots}Documentos Fiscais/MDF-e/Importar NF-e para MDF-e
    Fechar janela

Pedidos > Pedidos de Venda > Pedido de Venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/                       Pedido de Venda
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Pedidos de Venda (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Pedidos de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Pedido de Venda
    Fechar com Sim

Pedidos > Pedidos de Venda > Zeramento de Pedido
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/                       Zeramento de Pedido
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    Z
    RPA.Windows.Get Text      Zeramento de Pedido de Venda (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Zeramento de Pedido de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Zeramento de Pedido
    Fechar com Sim

Pedidos > Pedidos de Venda > Pré Zeramento de Pedido
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/                       Pré Zeramento de Pedido
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Pré Zeramento de Pedido de Venda (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Pré Zeramento de Pedido de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Pré Zeramento de Pedido
    Fechar com Sim

Pedidos > Pedidos de Venda > Gerar Venda por Pedido de Venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/                       Gerar Venda por Pedido de Venda
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    G
    RPA.Windows.Get Text      Gerador de Vendas por Pedido de Venda (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Gerador de Vendas por Pedido de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Gerar Venda por Pedido de Venda
    Fechar janela

Pedidos > Pedidos de Venda > Pedido de Venda Simplificado
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/                       Pedido de Venda Simplificado
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Pedido de Venda Simplificado
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Pedido de Venda Simplificado    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Pedido de Venda Simplificado
    Fechar com Sim

Pedidos > Pedidos de Venda > Manutenção de Pedido de Venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/                       Manutenção de Pedido de Venda
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    M
    RPA.Windows.Get Text      Manutenção de Pedido de Venda (1)
    RPA.Windows.Click         Validar Pedido
    BaseKeywordsDesktop.Screenshot    Manutenção de Pedido de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Manutenção de Pedido de Venda
    RPA.Windows.Click         OK
    Fechar janela

Pedidos > Pedidos de Venda > Cadastro de Status
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/                       Cadastro de Status
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Cadastro de Status - Pedido de Venda (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro de Status - Pedido de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Cadastro de Status
    Fechar com Sim

Pedidos > Pedidos de Venda > Aprovação/Rejeição
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/                       Aprovação_Rejeição
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Aprovação/Rejeição de Pedidos de Venda (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Aprovação/Rejeição de Pedidos de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Aprovação_Rejeição
    Fechar janela

Pedidos > Pedidos de Venda > Estorno da Aprovação
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/                       Estorno da Aprovação
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    S
    Sleep                     1s
    RPA.Windows.Get Text      Estorno da Aprovação de Pedidos de Venda (1)
    RPA.Windows.Click         Carregar
    RPA.Windows.Click         Sim
    BaseKeywordsDesktop.Screenshot    Estorno da Aprovação de Pedidos de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Estorno da Aprovação
    RPA.Windows.Click         Fechar

Pedidos > Pedidos de Venda > Enviar Email para Aprovação/Rejeição Pedido de Venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/                       Enviar Email para Aprovação_Rejeição Pedido de Venda
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    N
    RPA.Windows.Get Text      Envio de Email para Pedidos de Venda Aprovados/Rejeitados (1)
    RPA.Windows.Click         Carregar    
    BaseKeywordsDesktop.Screenshot    Envio de Email para Pedidos de Venda Aprovados/Rejeitados (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Enviar Email para Aprovação_Rejeição Pedido de Venda
    Fechar janela

Pedidos > Pedidos de Venda > Definir lotes - Expedição
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/                       Definir lotes - Expedição
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    D
    RPA.Windows.Get Text      Definir lotes Expedição (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Definir lotes Expedição (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Definir lotes - Expedição
    Fechar janela

Pedidos > Pedidos de Venda > Modelo de Impressão
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/                       Modelo de Impressão
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Configuração de Layout Personalizado (1)
    repetidor de teclas       tab   5
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Configuração de Layout Personalizado (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Modelo de Impressão
    RPA.Windows.Click         Confirmar
    Fechar com Sim    
    
Pedidos > Pedidos de Venda > Agrupamento de Pedidos de Venda > Agrupar Pedidos de Venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Agrupamento de Pedidos de Venda/                       Agrupar Pedidos de Venda
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Windows.Click         Agrupador de Pedidos de Venda
    RPA.Desktop.Press Keys    A
    Sleep                     1s
    RPA.Windows.Get Text      Agrupador de Pedidos de Venda
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Agrupador de Pedidos de Venda    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Agrupamento de Pedidos de Venda/Agrupar Pedidos de Venda
    RPA.Windows.Click         Fechar  

Pedidos > Pedidos de Venda > Agrupamento de Pedidos de Venda > Estornar Pedidos de Venda Agrupados
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Agrupamento de Pedidos de Venda/                       Estornar Pedidos de Venda Agrupados
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Windows.Click         Agrupador de Pedidos de Venda
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Estorno de Agrupamento de Pedidos de Venda (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Estorno de Agrupamento de Pedidos de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Agrupamento de Pedidos de Venda/Estornar Pedidos de Venda Agrupados
    Fechar janela

Pedidos > Pedidos de Venda > Agrupamento de Pedidos de Venda > Relatório de Pedidos de Venda Agrupados
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Agrupamento de Pedidos de Venda/                       Relatório de Pedidos de Venda Agrupados
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Windows.Click         Agrupador de Pedidos de Venda
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Relatório de Pedidos de Venda Agrupados (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Relatório de Pedidos de Venda Agrupados (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Agrupamento de Pedidos de Venda/Relatório de Pedidos de Venda Agrupados
    RPA.Windows.Click         Confirmar
    Fechar janela

Pedidos > Pedidos de Venda > Reprocessamento de Custos Gerenciais de Pedido de Venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/                       Reprocessamento de Custos Gerenciais de Pedido de Venda
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Windows.Click         Pedidos de Venda
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Reprocessamento Custos Gerenciais Pedido de Venda (1)
    RPA.Windows.Click         Processar
    BaseKeywordsDesktop.Screenshot    Reprocessamento Custos Gerenciais Pedido de Venda (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Reprocessamento de Custos Gerenciais de Pedido de Venda
    RPA.Windows.Click         OK  
    Fechar janela

Pedidos > Pedidos de Transferência
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Pedidos/Pedidos de Venda/                       Pedidos de Transferência
    Manutenções
    RPA.Windows.Click         Pedidos
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Pedido de Transferência (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Pedido de Transferência (1)    ${Caminho_Screenshots}Pedidos/Pedidos de Venda/Pedidos de Transferência
    Fechar com Sim

Orçamentos > Orçamentos
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Orçamentos/                      Orçamentos
    Manutenções
    RPA.Windows.Click         Orçamentos
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Orçamentos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Orçamentos (1)    ${Caminho_Screenshots}Orçamentos/Orçamentos
    RPA.Windows.Click         OK
    Fechar com Sim

Orçamentos > Consulta
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Orçamentos/                      Consulta
    Manutenções
    RPA.Windows.Click         Orçamentos
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Consulta de Orçamentos (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta de Orçamentos (1)    ${Caminho_Screenshots}Orçamentos/Consulta
    Fechar janela

Pesagem Geral
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}                      Pesagem Geral
    Manutenções
    RPA.Windows.Click         Pesagem Geral
    RPA.Windows.Get Text      Consulta de Pesagem Geral (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta de Pesagem Geral (1)    ${Caminho_Screenshots}Pesagem Geral
    Fechar janela

Controle de Viagens de Vendedores > Lançamento de Viagens
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Controle de Viagens de Vendedores/                      Lançamento de Viagens
    Manutenções
    RPA.Windows.Click         Controle de Viagens de Vendedores
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Lançamento de Viagens (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Lançamento de Viagens (1)    ${Caminho_Screenshots}Controle de Viagens de Vendedores/Lançamento de Viagens
    Fechar com Sim

Controle de Viagens de Vendedores > Lançamento de Despesas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Controle de Viagens de Vendedores/                      Lançamento de Despesas
    Manutenções
    RPA.Windows.Click         Controle de Viagens de Vendedores
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Lançamento de Despesas (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Lançamento de Despesas (1)    ${Caminho_Screenshots}Controle de Viagens de Vendedores/Lançamento de Despesas
    Fechar com Sim

Controle de Viagens de Vendedores > Relatório de Despesas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Controle de Viagens de Vendedores/                      Relatório de Despesas
    Manutenções
    RPA.Windows.Click         Controle de Viagens de Vendedores
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Relatório de Despesas (1)
    repetidor de teclas       tab    2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Relatório de Despesas (1)    ${Caminho_Screenshots}Controle de Viagens de Vendedores/Relatório de Despesas
    RPA.Windows.Click         Confirmar
    Fechar janela

Gerenciamento de Preços > Formação de Preços de Venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Gerenciamento de Preços/                      Formação de Preços de Venda
    Manutenções
    RPA.Windows.Click         Gerenciamento de Preços
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Formação de Preços de Venda (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Formação de Preços de Venda (1)    ${Caminho_Screenshots}Gerenciamento de Preços/Formação de Preços de Venda
    RPA.Windows.Click         OK
    Fechar janela

Gerenciamento de Preços > Tabela de Preços Condicionais
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Gerenciamento de Preços/                      Tabela de Preços Condicionais
    Manutenções
    RPA.Windows.Click         Gerenciamento de Preços
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Tabela de Preço Condicional (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Tabela de Preço Condicional (1)    ${Caminho_Screenshots}Gerenciamento de Preços/Tabela de Preços Condicionais
    Fechar janela

Gerenciamento de Preços > Tabela de Preços de Venda
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Gerenciamento de Preços/                      Tabela de Preços de Venda
    Manutenções
    RPA.Windows.Click         Gerenciamento de Preços
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Tabela de Preços de Venda (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Tabela de Preços de Venda (1)    ${Caminho_Screenshots}Gerenciamento de Preços/Tabela de Preços de Venda
    RPA.Windows.Click         Sim
    Fechar janela

Caixa Operador > Abertura
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Caixa Operador/                      Abertura
    Manutenções
    RPA.Windows.Click         Caixa Operador
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Abertura de Caixa
    RPA.Desktop.Press Keys    Enter
    RPA.Windows.Click         Confirmar
    BaseKeywordsDesktop.Screenshot    Abertura de Caixa    ${Caminho_Screenshots}Caixa Operador/Abertura
    Fechar janela

Caixa Operador > Suprimento/Entradas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Caixa Operador/                      Suprimento_Entradas
    Manutenções
    RPA.Windows.Click         Caixa Operador
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Suprimento/Entradas
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Suprimento/Entradas    ${Caminho_Screenshots}Caixa Operador/Suprimento_Entradas
    Fechar com Sim

Caixa Operador > Sangria/Saídas
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Caixa Operador/                      Sangria_Saídas
    Manutenções
    RPA.Windows.Click         Caixa Operador
    RPA.Desktop.Press Keys    N
    RPA.Windows.Get Text      Sangria\\Saidas
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Sangria\\Saidas    ${Caminho_Screenshots}Caixa Operador/Sangria_Saídas
    Fechar com Sim

Caixa Operador > Fechamento
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Caixa Operador/                      Fechamento
    Manutenções
    RPA.Windows.Click         Caixa Operador
    RPA.Desktop.Press Keys    F
    RPA.Windows.Get Text      Fechamento de Caixa
    RPA.Desktop.Press Keys    Enter
    RPA.Windows.Click         Confirmar
    BaseKeywordsDesktop.Screenshot    Fechamento de Caixa    ${Caminho_Screenshots}Caixa Operador/Fechamento
    Fechar janela

Caixa Operador > Relatório
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Caixa Operador/                      Relatório
    Manutenções
    RPA.Windows.Click         Caixa Operador
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Relatório do Caixa Operador (1)
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Relatório do Caixa Operador (1)    ${Caminho_Screenshots}Caixa Operador/Relatório
    RPA.Windows.Click         Confirmar
    Fechar janela

Processos Personalizados
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Caixa Operador/                      Processos Personalizados
    Manutenções
    RPA.Windows.Click         Processos Personalizados
    RPA.Windows.Get Text      Processos Personalizados (1)
    RPA.Windows.Click         Cadastrar Novo Processo
    BaseKeywordsDesktop.Screenshot    Processos Personalizados (1)    ${Caminho_Screenshots}Caixa Operador/Processos Personalizados
    RPA.Windows.Click         Sair
    Fechar janela

Controle de Recorrências
    [Teardown]                Caso aconteça erro           ${Caminho_Screenshots}Caixa Operador/                      Controle de Recorrências
    Manutenções
    RPA.Windows.Click         Controle de Recorrências
    RPA.Windows.Get Text      Consulta de Recorrências (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Consulta de Recorrências (1)    ${Caminho_Screenshots}Caixa Operador/Controle de Recorrências
    RPA.Windows.Click         OK
    Fechar janela


    