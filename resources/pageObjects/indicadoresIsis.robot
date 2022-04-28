*** Settings ***
Library     SeleniumLibrary
Resource    ../elements/kpiElements.robot
Resource    ../../usuarioUO/usuarioUO.robot
Resource    ../pageObjects/loginSuport.robot

*** Variables ***
${browser}      firefox
${url}          https://qa.newsgt.isitics.com/#/

*** Keywords ***
Dado que estou logado como usuario UO administrador
    Dado que estou no menu dashboard
    Então expando o menu sanduiche 
    Então expando a aba configurações 
    E clico no modal Login Suporte
    Então confirmo se estou na página gerenciamento de Usuários
    E clico no modal busque por nome, login , perfil ou unidade
    E preencher o campo de pesquisa com nome de usuario
    E clicar no lupa
    Então fazer o login de usuário ativo

Quando expando a aba de indicadores de ISIs 
    Então devo ser redirecionado para o menu Dashboard de Atendimentos
    Wait Until Page Does Not Contain Element    timeout=0:00:30    locator=${Loading} 
    Click Element                            locator=${Btn-Sanduich}
    Click Element                               locator=${Btn-Indicadores-ISIs}

E clico no modal Sucesso do Negócio    
    Click Element       locator=${Span-SucessoNegocio}

Então devo visualizar a tela KPI List
    Wait Until Page Contains     text=${Titulo-KPI-List}
    Wait Until Page Does Not Contain Element    timeout=0:00:30    locator=${Loading}   

Então no campo Ano devemos selecionar 2019 e Aplicar
    Click Element           locator=${Modal-Ano}  
    Click Element           locator=${Ano-2019} 
    Page Should Contain Button            locator=${Btn-Aplicar}
    Click Element At Coordinates       locator=${Btn-Aplicar}
    ...                                 xoffset=46                
    ...                                 yoffset=22     
    Wait Until Page Does Not Contain Element    timeout=0:00:30    locator=${Loading}         

Então entrar no indicador Receita total de STI (declaratório Futuro)
    
    Wait Until Element Is Visible           ${Span-RTdeSTI}
    Click Element           locator=${Span-RTdeSTI}
    Click Element           locator=${Futuro22}     
    Click Element           locator=${Futuro23}         
    Click Element           locator=${Bom}     
    Click Element           locator=${Regular}          
    Click Element           locator=${Ruim}   
    Click Element           locator=${Comentarios}
    



