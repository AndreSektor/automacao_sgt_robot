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
    Então entrar no indicador Receita total de STI (declaratório Futuro)
    Então entrar no indicador Custo total de STI (declaratório Presente/Futuro)
    Sustentabilidade de STI (declaratório Presente/Futuro)
    # % de Receita da Indústria (Mercado) (declaratório Futuro)
    # % de Receita de Programas de Fomento Externos (declaratório Futuro)
    # % de Receita do Sistema Indústria (declaratório Futuro)
    # Receita Total de P&D+I (declaratório Futuro)
    # % de Receita de P&D+I (declaratório Futuro)
    # Receita Total de Consultoria em Tecnologia (declaratório Futuro)
    # % de Receita de Consultoria em Tecnologia (declaratório Futuro)
    # Receita Total de Serviços Metrológicos (declaratório Futuro)
    # % de Receita de Serviços Metrológicos (declaratório Futuro)
    # Número de Publicações (declaratório Presente/Futuro)
    # Número de Aplicações para Registro de PI (declaratório Presente/Futuro)