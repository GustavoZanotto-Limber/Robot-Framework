*** Settings ***
Documentation    Smoke Test: Compras
Resource         C:/Users/Gustavo Zanotto/AppData/Local/Programs/Python/Python39/Scripts/RobotFramework/EstruturasBase/DESKTOP/Resources/BaseDesktop.robot
Suite Setup      Iniciar sessao  cde_win_ven


*** Variables ***

${Caminho_Screenshots}=    ${EXECDIR}/EstruturasBase/DESKTOP/ScreenShots/SmokeTest/Parques_Naturais/ERP/Vendas/Utilitários/    

*** Keywords ***

Utilitários
    Cadastros
    repetidor de teclas    Right    8

*** Test Cases ***

Configurar Nota Fiscal
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Configurar Nota Fiscal
    Utilitários
    RPA.Windows.Click       Configurar Nota Fiscal
    RPA.Windows.Get Text    Configuração da Nota Fiscal (1)
    BaseDesktop.Screenshot  Configuração da Nota Fiscal (1)    ${Caminho_Screenshots}Configurar Nota Fiscal
    Fechar janela

Favoritos
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}             ERRO Favoritos
    Utilitários
    RPA.Windows.Click       Favoritos
    RPA.Windows.Get Text    Configuração de Favoritos (1)
    BaseDesktop.Screenshot  Configuração de Favoritos (1)    ${Caminho_Screenshots}Favoritos
    RPA.Windows.Click       Fechar
    
Papel de Parede
    [Teardown]              Caso aconteça erro            ${Caminho_Screenshots}                   ERRO Papel de Parede
    Utilitários
    RPA.Windows.Click       Papel de Parede
    Sleep                   2s
    RPA.Windows.Get Text    Seleção de Papel de Parede
    BaseDesktop.Screenshot  Seleção de Papel de Parede    ${Caminho_Screenshots}Papel de Parede
    RPA.Windows.Click       Fechar

Configurar Menu Principal
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Configurar Menu Principal
    Utilitários
    RPA.Windows.Click       Configurar Menu Principal
    RPA.Windows.Get Text    Configurador de Menus (1)
    BaseDesktop.Screenshot  Configurador de Menus (1)    ${Caminho_Screenshots}Configurar Menu Principal
    Fechar janela

Configurar Barra de Atalhos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Configurar Barra de Atalhos
    Utilitários
    RPA.Windows.Click       Configurar Barra de Atalhos
    RPA.Windows.Get Text    Configurador de Atalhos (1)
    BaseDesktop.Screenshot  Configurador de Atalhos (1)    ${Caminho_Screenshots}Configurar Barra de Atalhos
    Fechar Janela

Estilo do Menu Principal
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Estilo do Menu Principal
    Utilitários
    RPA.Windows.Click       Estilo do Menu Principal
    RPA.Windows.Get Text    Seleção do Estilo do Menu Principal (1)
    BaseDesktop.Screenshot  Seleção do Estilo do Menu Principal (1)    ${Caminho_Screenshots}Estilo do Menu Principal
    RPA.Windows.Click       Fechar

Controle de Acessos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Controle de Acessos
    Utilitários
    RPA.Windows.Click       Controle de Acessos
    RPA.Windows.Get Text    Controle de Acessos : Formulários (1)
    BaseDesktop.Screenshot  Controle de Acessos : Formulários (1)    ${Caminho_Screenshots}Controle de Acessos
    Fechar janela

Configuração de Liberação
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Configuração de Liberação
    Utilitários
    RPA.Windows.Click       Configuração de Liberação
    RPA.Windows.Get Text    Configurações de Liberação (1)
    BaseDesktop.Screenshot  Configurações de Liberação (1)    ${Caminho_Screenshots}Configuração de Liberação
    Fechar janela

Relatórios Personalizados > Cadastro de Categorias
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Relatórios Personalizados/                            ERRO Cadastro de Categorias
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  c
    RPA.Windows.Get Text    Cadastro de Categoria (1)
    BaseDesktop.Screenshot  Cadastro de Categoria (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Categorias
    Fechar janela
    
Relatórios Personalizados > Cadastro de Relatórios
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}Relatórios Personalizados/                              ERRO Cadastro de Relatórios
    Utilitários
    RPA.Windows.Click       Relatórios Personalizados
    RPA.Desktop.Press Keys  a
    RPA.Windows.Get Text    Cadastro de Relatórios Personalizados (1)
    BaseDesktop.Screenshot  Cadastro de Relatórios Personalizados (1)    ${Caminho_Screenshots}Relatórios Personalizados/Cadastro de Relatórios
    Fechar janela

Criar Usuario de Log
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Criar Usuario de Log
    Utilitários
    RPA.Windows.Click       Criar Usuário de Log
    RPA.Windows.Get Text    Cadastro Usuario de Log (1)
    BaseDesktop.Screenshot  Cadastro Usuario de Log (1)    ${Caminho_Screenshots}Criar Usuario de Log
    Fechar janela

Verifica transações abertas
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Verifica transações abertas
    Utilitários
    RPA.Windows.Click       Verifica transações abertas
    RPA.Windows.Get Text    Verifica transações abertas (1)
    BaseDesktop.Screenshot  Verifica transações abertas (1)    ${Caminho_Screenshots}Verifica transações abertas
    Fechar janela

Impressão de Etiquetas/Produtos
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Impressão de Etiquetas_Produtos
    Utilitários
    RPA.Windows.Click       Impressão de Etiquetas/Produtos
    RPA.Windows.Get Text    Emissão de Etiquetas (1)
    BaseDesktop.Screenshot  Emissão de Etiquetas (1)    ${Caminho_Screenshots}Impressão de Etiquetas_Produtos
    Fechar janela  

Etiquetas (Terceiros)
    [Teardown]              Caso aconteça erro                ${Caminho_Screenshots}            ERRO Etiquetas (Terceiros)
    Utilitários
    RPA.Windows.Click       Etiquetas (Terceiros)
    RPA.Windows.Get Text    Emissão de Etiquetas de Terceiros (1)
    BaseDesktop.Screenshot  Emissão de Etiquetas de Terceiros (1)   ${Caminho_Screenshots}Etiquetas (Terceiros)
    Fechar janela

Impressão de Etiquetas de Entrega
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Impressão de Etiquetas de Entregas
    Utilitários
    RPA.Windows.Click       Impressão de Etiquetas de Entrega
    RPA.Windows.Get Text    Impressão de Etiquetas de Entrega (1)
    BaseDesktop.Screenshot  Impressão de Etiquetas de Entrega (1)    ${Caminho_Screenshots}Impressão de Etiquetas de Entregas
    Fechar janela 
PDV > Atualizar Produtos
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/          ERRO Atualizar Produtos
    Utilitários
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Atualização de Produtos para o PDV (1)
    BaseDesktop.Screenshot    Atualização de Produtos para o PDV (1)    ${Caminho_Screenshots}PDV/Atualizar Produtos
    Fechar janela

PDV > Atualizar Balança
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}PDV/          ERRO Atualizar Balança
    Utilitários
    RPA.Windows.Click         PDV
    RPA.Desktop.Press Keys    T
    RPA.Windows.Get Text      Atualização de Produtos para a Balança
    BaseDesktop.Screenshot    Atualização de Produtos para a Balança    ${Caminho_Screenshots}PDV/Atualizar Balança
    Fechar janela

Agenda > Agendamentos
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Agenda/          ERRO Agendamentos
    Utilitários
    RPA.Windows.Click         Agenda
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Agenda (1)
    BaseDesktop.Screenshot    Agenda (1)    ${Caminho_Screenshots}Agenda/Agendamentos
    Fechar janela

Agenda > Estados
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Agenda/          ERRO Estados
    Utilitários
    RPA.Windows.Click         Agenda
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Cadastro Estados de Agendamentos (1)
    BaseDesktop.Screenshot    Cadastro Estados de Agendamentos (1)    ${Caminho_Screenshots}Agenda/Estados
    Fechar janela

Agenda > Consulta
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Agenda/          ERRO Consulta
    Utilitários
    RPA.Windows.Click         Agenda
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Consulta de Agendamentos (1)
    BaseDesktop.Screenshot    Consulta de Agendamentos (1)    ${Caminho_Screenshots}Agenda/Consulta
    Fechar janela

Agenda > Calendários
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Agenda/          ERRO Calendários
    Utilitários
    RPA.Windows.Click         Agenda
    RPA.Desktop.Press Keys    L
    RPA.Windows.Get Text      Consultas Agenda (1)
    BaseDesktop.Screenshot    Consultas Agenda (1)    ${Caminho_Screenshots}Agenda/Calendários
    RPA.Windows.Click         Fechar

Agenda Telefônica
    [Teardown]              Caso aconteça erro                         ${Caminho_Screenshots}                            ERRO Agenda Telefônica
    Utilitários
    RPA.Windows.Click       Agenda Telefônica
    RPA.Windows.Get Text    Agenda Telefônica (1)
    BaseDesktop.Screenshot  Agenda Telefônica (1)    ${Caminho_Screenshots}Agenda Telefônica
    Fechar janela

Integração WhatsApp > Configuração para Integração
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Integração WhatsApp/          ERRO Configuração para Integração
    Utilitários
    RPA.Windows.Click         Integração WhatsApp
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configuração Integração WhatsApp (1)
    BaseDesktop.Screenshot    Configuração Integração WhatsApp (1)    ${Caminho_Screenshots}Integração WhatsApp/Configuração para Integração
    Fechar janela

Integração WhatsApp > Envio de Mensagens
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Integração WhatsApp/          ERRO Envio de Mensagens
    Utilitários
    RPA.Windows.Click         Integração WhatsApp
    RPA.Desktop.Press Keys    E
    RPA.Windows.Get Text      Envio de Mensagem - Integração WhatsApp (1)
    BaseDesktop.Screenshot    Envio de Mensagem - Integração WhatsApp (1)    ${Caminho_Screenshots}Integração WhatsApp/Envio de Mensagens
    Fechar janela

Geração de Arquivos > Projeto Cultivar
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Geração de Arquivos/          ERRO Projeto Cultivar
    Utilitários
    RPA.Windows.Click         Geração de Arquivos
    RPA.Desktop.Press Keys    P
    RPA.Windows.Get Text      Geração de Arquivos - Projeto Cultivar (1)
    BaseDesktop.Screenshot    Geração de Arquivos - Projeto Cultivar (1)    ${Caminho_Screenshots}Geração de Arquivos/Projeto Cultivar
    RPA.Windows.Click         Fechar

Geração de Arquivos > Projeto Pegasus
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Geração de Arquivos/          ERRO Projeto Pegasus
    Utilitários
    RPA.Windows.Click         Geração de Arquivos
    RPA.Desktop.Press Keys    R
    RPA.Windows.Get Text      Geração de Arquivos - Projeto Pegasus (1)
    BaseDesktop.Screenshot    Geração de Arquivos - Projeto Pegasus (1)    ${Caminho_Screenshots}Geração de Arquivos/Projeto Pegasus
    RPA.Windows.Click         Fechar

Geração de Arquivos > Accera Bayer
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Geração de Arquivos/          ERRO Accera Bayer
    Utilitários
    RPA.Windows.Click         Geração de Arquivos
    RPA.Desktop.Press Keys    A
    RPA.Windows.Get Text      Geração do arquivo Accera Bayer (1)
    BaseDesktop.Screenshot    Geração do arquivo Accera Bayer (1)    ${Caminho_Screenshots}Geração de Arquivos/Accera Bayer
    Fechar janela

Geração de Arquivos > Projeto Cultivar (Fase II)
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Geração de Arquivos/          ERRO Projeto Cultivar (Fase II)
    Utilitários
    RPA.Windows.Click         Geração de Arquivos
    RPA.Desktop.Press Keys    O
    RPA.Windows.Get Text      Geração de Arquivos - Projeto Cultivar (FASE II) (1)
    BaseDesktop.Screenshot    Geração de Arquivos - Projeto Cultivar (FASE II) (1)    ${Caminho_Screenshots}Geração de Arquivos/Projeto Cultivar (Fase II)
    RPA.Windows.Click         Fechar

Geração de Arquivos > Histórico de Geracao de Arquivos
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Geração de Arquivos/          ERRO Histórico de Geracao de Arquivos
    Utilitários
    RPA.Windows.Click         Geração de Arquivos
    RPA.Desktop.Press Keys    H
    RPA.Windows.Get Text      Relátorio de histórico Geração de arquivos (1)
    BaseDesktop.Screenshot    Relátorio de histórico Geração de arquivos (1)    ${Caminho_Screenshots}Geração de Arquivos/Histórico de Geracao de Arquivos
    Fechar janela

Exportação de arquivos > Salvar arquivo XML NFe Própria
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Exportação de arquivos/          ERRO Salvar arquivo XML NFe Própria
    Utilitários
    RPA.Windows.Click         Exportação de arquivos
    RPA.Desktop.Press Keys    S
    RPA.Windows.Get Text      Salvar arquivo XML NF-e / NFS-e / CT-e / SAT própria(o) (1)
    BaseDesktop.Screenshot    Salvar arquivo XML NF-e / NFS-e / CT-e / SAT própria(o) (1)    ${Caminho_Screenshots}Exportação de arquivos/Salvar arquivo XML NFe Própria
    Fechar janela

Exportação de arquivos > CRM Cloud > Integração
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Exportação de arquivos/CRM Cloud/          ERRO Integração
    Utilitários
    RPA.Windows.Click         Exportação de arquivos
    RPA.Windows.Click         CRM Cloud
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Integração CRM Cloud (1)
    BaseDesktop.Screenshot    Integração CRM Cloud (1)    ${Caminho_Screenshots}Exportação de arquivos/CRM Cloud/Integração
    RPA.Windows.Click         OK
    Fechar janela

Exportação de arquivos > CRM Cloud > Configuração
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Exportação de arquivos/CRM Cloud/          ERRO Configuração
    Utilitários
    RPA.Windows.Click         Exportação de arquivos
    RPA.Windows.Click         CRM Cloud
    RPA.Desktop.Press Keys    C
    RPA.Windows.Get Text      Configuração API Cloud (Protótipo) (1)
    BaseDesktop.Screenshot    Configuração API Cloud (Protótipo) (1)    ${Caminho_Screenshots}Exportação de arquivos/CRM Cloud/Configuração
    RPA.Windows.Click         Fechar

Integradores > Integração Padrão
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}Integradores/         ERRO Integração Padrão
    Utilitários
    RPA.Windows.Click         Integradores
    RPA.Desktop.Press Keys    I
    RPA.Windows.Get Text      Gerenciador de Integrações (1)
    BaseDesktop.Screenshot    Gerenciador de Integrações (1)    ${Caminho_Screenshots}Integradores/Integração Padrão
    Fechar janela

Importação de Planilha Excel Personalizada
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}         ERRO Importação de Planilha Excel Personalizada
    Utilitários
    RPA.Windows.Click         Importação de Planilha Excel Personalizada
    RPA.Windows.Get Text      Importação de Planilha Excel Personalizada (1)
    BaseDesktop.Screenshot    Importação de Planilha Excel Personalizada (1)    ${Caminho_Screenshots}Importação de Planilha Excel Personalizada
    Fechar janela

Gerador de Vendas por XML
    [Teardown]                Caso aconteça erro                                                ${Caminho_Screenshots}         ERRO Gerador de Vendas por XML
    Utilitários
    RPA.Windows.Click         Gerador de Vendas por XML
    RPA.Windows.Get Text      Importação de Nota Fiscal (1)
    BaseDesktop.Screenshot    Importação de Nota Fiscal (1)    ${Caminho_Screenshots}Gerador de Vendas por XML
    Fechar janela

Encerrar
    Encerrar tudo