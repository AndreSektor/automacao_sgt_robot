*** Settings ***
Resource            ../resources/pageObjects/loginSuport.robot
Resource            ../resources/pageObjects/indicadoresIsis.robot
Test Setup          Abrir Navegador
Test Teardown       Fechar Navegador

*** Test Cases ***
#  Funcionalidade: Visualizar indicadores ISIs
#  Sendo um usuário UO administrador 
#  Quero visualizar os indicadores de ISIs 
#  Para ter acesso aos indicadores de ISIs

Cenário 1: Sucesso do Negócio
    [Tags]      Sucesso do Negócio
    Dado que estou logado como usuario UO administrador
    Quando expando a aba de indicadores de ISIs
    E clico no modal Sucesso do Negócio
    Então devo visualizar a tela KPI List
    Então no campo Ano devemos selecionar 2019 e Aplicar
    Então entrar no indicador Receita total de STI (Automático)
    Então entrar no indicador Custo total de STI (Declaratório)
    Sustentabilidade de STI (Automático)
    % de Receita da Indústria (Mercado) (Automático)
    % de Receita de Programas de Fomento Externos (Automático)
    % de Receita do Sistema Indústria (Automático)
    Receita Total de P&D+I (Automático)
    % de Receita de P&D+I (Automático)
    Receita Total de Consultoria em Tecnologia (Automático)
    % de Receita de Consultoria em Tecnologia (Automático)
    Receita Total de Serviços Metrológicos (Automático)
    % de Receita de Serviços Metrológicos (Automático)
    Número de Publicações (Declaratório)
    Número de Aplicações para Registro de PI (Declaratório)