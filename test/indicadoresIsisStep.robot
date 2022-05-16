*** Settings ***
Resource            ../resources/pageObjects/loginSuport.robot
Resource            ../resources/pageObjects/indicadoresIsis.robot
Test Setup          Abrir Navegador
Test Teardown       Fechar Navegador
Documentation       ../resources/pageObjects/indicadoresIsis.robot

*** Test Cases ***
#  Funcionalidade: Visualizar indicadores ISIs
#  Sendo um usuário UO administrador 
#  Quero visualizar os indicadores de ISIs 
#  Para ter acesso aos indicadores de ISIs

Cenário 1: Sucesso do Negócio
    [Tags]      SucessoDoNegocio
    Dado que estou logado como usuario UO administrador
    Quando expando a aba de indicadores de ISIs
    E clico no modal Sucesso do Negócio
    Então devo visualizar a tela KPI List
    Então no campo Ano devemos selecionar 2019 e Aplicar
    Então entrar no indicador Receita total de STI (Automático)
    Então entrar no indicador Custo total de STI (Declaratório)
    Então entrar no indicador Sustentabilidade de STI (Automático)
    Então entrar no indicador % de Receita da Indústria (Mercado) (Automático)
    Então entrar no indicador % de Receita de Programas de Fomento Externos (Automático)
    Então entrar no indicador % de Receita do Sistema Indústria (Automático)
    Então entrar no indicador Receita Total de P&D+I (Automático)
    Então entrar no indicador % de Receita de P&D+I (Automático)
    Então entrar no indicador Receita Total de Consultoria em Tecnologia (Automático)
    Então entrar no indicador % de Receita de Consultoria em Tecnologia (Automático)
    Então entrar no indicador Receita Total de Serviços Metrológicos (Automático)
    Então entrar no indicador % de Receita de Serviços Metrológicos (Automático)
    Então entrar no indicador Número de Publicações (Declaratório)
    Então entrar no indicador Número de Aplicações para Registro de PI (Declaratório)
    

Cenário 2: Valor para o cliente 
    [Tags]      ValorParaOCliente
    Dado que estou logado como usuario UO administrador
    Quando expando a aba de indicadores de ISIs
    E clico no modal Valor para o cliente
    Então devo visualizar a tela KPI List   
    Então no campo Ano devemos selecionar 2019 e Aplicar
    Então entrar no indicador Número Total de Clientes de STI (Automático)
    Então entrar no indicador Número Total de Clientes de P&D+I (Automático)    
    Então entrar no indicador Número de Clientes de P&D+I por Pesquisador Efetivo (Automático)
    Então entrar no indicador Número de Novos Clientes de P&D+I (Automático)
    Então entrar no indicador Taxa de retenção de clientes (Automático)
    Então entrar no indicador Taxa de Dependência do Principal Cliente de P&D+I (Automático)
    Então entrar no indicador Número de PMEs Atendidas (Automático)
    Então entrar no indicador Número de Grandes Empresas Atendidas (Automático)

Cenário 3: Processo de negócio
    [Tags]          ProcessoDeNegocio
    Dado que estou logado como usuario UO administrador
    Quando expando a aba de indicadores de ISIs
    E clico no modal Processo de negócio    