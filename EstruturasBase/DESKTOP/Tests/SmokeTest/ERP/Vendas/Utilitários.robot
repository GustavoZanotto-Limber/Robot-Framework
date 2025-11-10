*** Settings ***
Documentation    Smoke Test: Vendas
Resource         ../../../../Resources/Base/BaseKeywordsDesktop.robot
Suite Setup      Iniciar sessao  ${nome_exe}
Suite Teardown   Encerrar Tudo
Test Teardown    Caso aconteca erro 2  ${Caminho_Screenshots}Erros/    ${nome_print}    ${nome_exe}


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Bilheteria/ERP/Vendas/Utilitários/    
${nome_print}
${nome_exe}=    cde_win_ven
*** Keywords ***

Utilitários
    Cadastros
    repetidor de teclas    Right    9

*** Test Cases ***

Configurar Nota Fiscal
    ${nome_print}=     Set Variable     Configurar Nota Fiscal
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest    Teste
    Utilitários
    RPA.Windows.Click       Configurar Nota Fiscal
    RPA.Windows.Get Text    Configuração da Nota Fiscal (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Configuração da Nota Fiscal (1)    ${Caminho_Screenshots}Configurar Nota Fiscal
    Fechar janela

Favoritos
    ${nome_print}=     Set Variable     Favoritos
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest    Teste
    Utilitários
    RPA.Windows.Click       Favoritos
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       OK
    RPA.Windows.Click       Fechar

Papel de Parede
    ${nome_print}=     Set Variable     Papel de Parede
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Papel de Parede
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseKeywordsDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Configurar Menu Pincipal
    ${nome_print}=     Set Variable     Configurar Barra de Atalhos
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Configurar Menu Principal
    RPA.Windows.Get Text    Configurador de Menus (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Configurador de Menus (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    RPA.Windows.Click       Confirmar
    Fechar janela

Configurar Barra de Atalhos
    ${nome_print}=     Set Variable     Configurar Barra de Atalhos
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurar Barra de Atalhos
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar com Sim

Estilo do Menu Principal
    ${nome_print}=     Set Variable     Estilo do Menu Principal
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Estilo do Menu Principal
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    RPA.Windows.Click       Standard
    BaseKeywordsDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    ${nome_print}=     Set Variable     Controle de Acessos
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Controle de Acessos
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    RPA.Windows.Click       Confirmar
    BaseKeywordsDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    RPA.Windows.Click       OK
    Fechar janela

Configuração de Liberação
    ${nome_print}=     Set Variable     Configuração de Liberação
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configuração de Liberação
    RPA.Windows.Get Text    Configurações de Liberação (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Configurações de Liberação (1)    ${Caminho_Screenshots}Configuração de Liberação
    RPA.Windows.Click       Confirmar
    Fechar com Sim

Relatórios Personalizados > Cadastro de Categorias
    ${nome_print}=     Set Variable     Cadastro de Categorias
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  C
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Categorias
    RPA.Windows.Click       Confirmar
    Fechar janela

Relatórios Personalizados > Cadastro de Relatórios
    ${nome_print}=     Set Variable     Cadastro de Relatórios
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest    
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  a
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    BaseKeywordsDesktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    RPA.Windows.Click       Confirmar
    Fechar janela
    
Verificar Transações Abertas
    ${nome_print}=     Set Variable     Verificar Transações Abertas
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Verificar Transações Abertas
    RPA.Windows.Get Text    Verificar Transações Abertas (1)
    RPA.Windows.Click       Carregar
    BaseKeywordsDesktop.Screenshot  Verificar Transações Abertas (1)    ${Caminho_Screenshots}Verificar Transações Abertas
    Fechar janela

Impressão de Etiquetas/Produtos
    ${nome_print}=     Set Variable     Impressão de Etiquetas_Produtos
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Impressão de Etiquetas/Produtos
    RPA.Windows.Get Text    Emissão de Etiquetas (1)
    RPA.Windows.Click       Imprimir Etiquetas
    BaseKeywordsDesktop.Screenshot  Emissão de Etiquetas (1)    ${Caminho_Screenshots}Impressão de Etiquetas_Produtos
    RPA.Windows.Click       OK
    Fechar janela

Etiquetas (Terceiros)
    ${nome_print}=     Set Variable     Etiquetas (Terceiros)
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Etiquetas (Terceiros)
    RPA.Windows.Get Text    Emissão de Etiquetas de Terceiros (1)
    repetidor de teclas     tab      5
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Emissão de Etiquetas de Terceiros (1)   ${Caminho_Screenshots}Etiquetas (Terceiros)
    RPA.Windows.Click       OK
    Fechar janela
    RPA.Windows.Click       OK

Impressão de Etiquetas de Entrega
    ${nome_print}=     Set Variable     Impressão de Etiquetas de Entregas
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Impressão de Etiquetas de Entrega
    RPA.Windows.Get Text    Impressão de Etiquetas de Entrega (1)
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Impressão de Etiquetas de Entrega (1)    ${Caminho_Screenshots}Impressão de Etiquetas de Entregas
    RPA.Windows.Click       Confirmar
    Fechar janela

Configurador de Impressões > Ordem se Serviço
    ${nome_print}=     Set Variable     Ordem se Serviço
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  O
    RPA.Windows.Get Text    Configurador de Impressões - Ordem de Serviço (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Configurador de Impressões - Ordem de Serviço (1)    ${Caminho_Screenshots}Configurador de Impressões/Ordem se Serviço
    Fechar com Sim

Configurador de Impressões > Saídas_Vendas
    ${nome_print}=     Set Variable     Saídas_Vendas
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Configurador de Impressões
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Configurador de Impressões - Saídas/Vendas (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Configurador de Impressões - Saídas/Vendas (1)    ${Caminho_Screenshots}Configurador de Impressões/Saídas_Vendas
    Fechar com Sim

PDV > Atualizar Produtos
    ${nome_print}=     Set Variable     Atualizar Produtos
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Atualização de Produtos para o PDV (1)
    repetidor de teclas       tab      5
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Atualização de Produtos para o PDV (1)    ${Caminho_Screenshots}PDV/Atualizar Produtos
    RPA.Windows.Click         Confirmar
    Fechar janela

PDV > Atualizar Balança
    ${nome_print}=     Set Variable     Atualizar Balança
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Atualização de Produtos para a Balança
    repetidor de teclas       tab      4
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Atualização de Produtos para a Balança    ${Caminho_Screenshots}PDV/Atualizar Balança
    RPA.Windows.Click         Confirmar
    Fechar janela

Agenda > Agendamentos
    ${nome_print}=     Set Variable     Agendamentos
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Agenda
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Agenda (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Agenda (1)    ${Caminho_Screenshots}Agenda/Agendamentos
    Fechar com Sim

Agenda > Estados
    ${nome_print}=     Set Variable     Estados
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Agenda
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro Estados de Agendamentos (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Cadastro Estados de Agendamentos (1)    ${Caminho_Screenshots}Agenda/Estados
    Fechar com Sim

Agenda > Consulta
    ${nome_print}=     Set Variable     Consulta
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Agenda
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Consulta de Agendamentos (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Consulta de Agendamentos (1)    ${Caminho_Screenshots}Agenda/Consulta
    RPA.Windows.Click         Confirmar
    Fechar janela

Agenda > Calendários
    ${nome_print}=     Set Variable     Calendários
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Agenda
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Consultas Agenda (1)
    RPA.Windows.Click         Aplicar
    BaseKeywordsDesktop.Screenshot    Consultas Agenda (1)    ${Caminho_Screenshots}Agenda/Calendários
    RPA.Windows.Click         OK
    RPA.Windows.Click         Fechar

Agenda Telefônica
    ${nome_print}=     Set Variable     Agenda Telefônica
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Agenda Telefônica
    RPA.Windows.Get Text    Agenda Telefônica (1)
    RPA.Windows.Click       Novo
    BaseKeywordsDesktop.Screenshot  Agenda Telefônica (1)    ${Caminho_Screenshots}Agenda Telefônica
    Fechar com Sim

Integração WhatsApp > Configuração para Integração
    ${nome_print}=     Set Variable     Configuração para Integração
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Integração WhatsApp
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configuração Integração WhatsApp (1)
    RPA.Windows.Click         Confirmar
    BaseKeywordsDesktop.Screenshot    Configuração Integração WhatsApp (1)    ${Caminho_Screenshots}Integração WhatsApp/Configuração para Integração
    RPA.Windows.Click         OK
    Fechar janela

Integração WhatsApp > Envio de Mensagens
    ${nome_print}=     Set Variable     Envio de Mensagens
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Integração WhatsApp
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Envio de Mensagem - Integração WhatsApp (1)
    repetidor de teclas       tab      2
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Envio de Mensagem - Integração WhatsApp (1)    ${Caminho_Screenshots}Integração WhatsApp/Envio de Mensagens
    RPA.Windows.Click         Confirmar
    Fechar janela

Geração de Arquivos > Projeto Cultivar
    ${nome_print}=     Set Variable     Projeto Cultivar
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Geração de Arquivos
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Geração de Arquivos - Projeto Cultivar (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Geração de Arquivos - Projeto Cultivar (1)    ${Caminho_Screenshots}Geração de Arquivos/Projeto Cultivar
    RPA.Windows.Click         OK
    RPA.Windows.Click         Fechar
    RPA.Windows.Click         OK

Geração de Arquivos > Projeto Pegasus
    ${nome_print}=     Set Variable     Projeto Pegasus
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Geração de Arquivos
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Geração de Arquivos - Projeto Pegasus (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Geração de Arquivos - Projeto Pegasus (1)    ${Caminho_Screenshots}Geração de Arquivos/Projeto Pegasus
    RPA.Windows.Click         OK
    RPA.Windows.Click         Fechar
    RPA.Windows.Click         OK

Geração de Arquivos > Accera Bayer
    ${nome_print}=     Set Variable     Accera Bayer
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Geração de Arquivos
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Geração do arquivo Accera Bayer (1)
    RPA.Windows.Click         Gerar
    BaseKeywordsDesktop.Screenshot    Geração do arquivo Accera Bayer (1)    ${Caminho_Screenshots}Geração de Arquivos/Accera Bayer
    RPA.Windows.Click         OK
    Fechar janela

Geração de Arquivos > Projeto Cultivar (Fase II)
    ${nome_print}=     Set Variable     Projeto Cultivar (Fase II)
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Geração de Arquivos
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Geração de Arquivos - Projeto Cultivar (FASE II) (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Geração de Arquivos - Projeto Cultivar (FASE II) (1)    ${Caminho_Screenshots}Geração de Arquivos/Projeto Cultivar (Fase II)
    RPA.Windows.Click         OK
    RPA.Windows.Click         Fechar
    RPA.Windows.Click         OK

Geração de Arquivos > Histórico de Geracao de Arquivos
    ${nome_print}=     Set Variable     Histórico de Geracao de Arquivos
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Geração de Arquivos
    RPA.Desktop.Press Keys    H
    RPA.Windows.Get Text      Relátorio de histórico Geração de arquivos (1)
    repetidor de teclas       tab      3
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Relátorio de histórico Geração de arquivos (1)    ${Caminho_Screenshots}Geração de Arquivos/Histórico de Geracao de Arquivos
    RPA.Windows.Click         OK
    Fechar janela
    RPA.Windows.Click         OK

Exportação de Arquivos > Salvar arquivo XML NFe de Terceiros
    ${nome_print}=     Set Variable     Salvar arquivo XML NFe de Terceiros
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click       Exportação de arquivos
    RPA.Desktop.Press Keys  S
    RPA.Windows.Get Text    Salvar arquivo XML NF-e / NFS-e / CT-e / SAT própria(o) (1)
    RPA.Windows.Click       Salvar
    BaseKeywordsDesktop.Screenshot  Salvar arquivo XML NF-e / NFS-e / CT-e / SAT própria(o) (1)   ${Caminho_Screenshots}Exportação de Arquivos/Salvar arquivo XML NFe de Terceiros
    RPA.Windows.Click       OK
    Fechar janela

Exportação de arquivos > CRM Cloud > Integração
    ${nome_print}=     Set Variable     Integração
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Exportação de arquivos
    RPA.Windows.Click         CRM Cloud
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Integração CRM Cloud (1)
    RPA.Windows.Click         Carregar Logs
    BaseKeywordsDesktop.Screenshot    Integração CRM Cloud (1)    ${Caminho_Screenshots}Exportação de arquivos/CRM Cloud/Integração
    RPA.Windows.Click         OK
    Fechar janela

Exportação de arquivos > CRM Cloud > Configuração
    ${nome_print}=     Set Variable     Configuração
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Exportação de arquivos
    RPA.Windows.Click         CRM Cloud
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configuração API Cloud (Protótipo) (1)
    RPA.Windows.Click         Novo
    BaseKeywordsDesktop.Screenshot    Configuração API Cloud (Protótipo) (1)    ${Caminho_Screenshots}Exportação de arquivos/CRM Cloud/Configuração
    RPA.Windows.Click         Fechar
    RPA.Windows.Click         Sim

Integradores > Integração Padrão
    ${nome_print}=     Set Variable     Integração Padrão
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Integradores
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Gerenciador de Integrações (1)
    RPA.Windows.Click         Confirmar
    BaseKeywordsDesktop.Screenshot    Gerenciador de Integrações (1)    ${Caminho_Screenshots}Integradores/Integração Padrão
    RPA.Windows.Click         OK
    Fechar janela

Importação de Planilha Excel Personalizada
    ${nome_print}=     Set Variable     Importação de Planilha Excel Personalizada
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Importação de Planilha Excel Personalizada
    RPA.Windows.Get Text      Importação de Planilha Excel Personalizada (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Importação de Planilha Excel Personalizada (1)    ${Caminho_Screenshots}Importação de Planilha Excel Personalizada
    RPA.Windows.Click         Confirmar
    Fechar janela

Gerador de Vendas por XML
    ${nome_print}=     Set Variable     Gerador de Vendas por XML
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Gerador de Vendas por XML
    RPA.Windows.Get Text      Importação de Nota Fiscal (1)
    RPA.Windows.Click         Carregar
    BaseKeywordsDesktop.Screenshot    Importação de Nota Fiscal (1)    ${Caminho_Screenshots}Gerador de Vendas por XML
    RPA.Windows.Click         OK
    Fechar janela

Configuração de Certificado Digital
    ${nome_print}=     Set Variable     Configuração de Certificado Digital
    [Tags]   SmokeERP   Vendas   Utilitários   SmokeTest
    Utilitários
    RPA.Windows.Click         Configuração de Certificado Digital
    RPA.Windows.Get Text      Configuração de Certificado (1)
    RPA.Desktop.Press Keys    0
    RPA.Desktop.Press Keys    Enter
    BaseKeywordsDesktop.Screenshot    Configuração de Certificado (1)    ${Caminho_Screenshots}Configuração de Certificado Digital
    RPA.Windows.Click         Confirmar
    Fechar janela

Reprocessamento de disponibilidade de itens
    ${nome_print}=     Set Variable     Reprocessamento de disponibilidade de itens
    [Tags]   SmokeERP    Vendas    Utilitários   SmokeTest      
    Utilitários
    Sleep                   1s
    RPA.Desktop.Press Keys  UP
    RPA.Desktop.Press Keys  Enter
    RPA.Windows.Get Text   	Reprocessamento de Itens (1)
    repetidor de teclas     tab      1
    RPA.Desktop.Press Keys  0
    RPA.Desktop.Press Keys  Enter
    BaseKeywordsDesktop.Screenshot  Reprocessamento de Itens (1)    ${Caminho_Screenshots}Reprocessamento de disponibilidade de itens
    RPA.Windows.Click       Confirmar
    RPA.Windows.Click       Fechar