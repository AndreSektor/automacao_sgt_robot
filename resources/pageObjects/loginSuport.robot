*** Settings ***
Library         SeleniumLibrary
Resource        ../pageObjects/login.robot
Resource        ../elements/loginElements.robot
Resource        ../elements/dashboardElements.robot
Resource        ../elements/loginSuportElements.robot
Resource        ../../usuarioUO/usuarioUO.robot


# *** Variables ***
# ${browser}       firefox
# ${url}           https://qa.newsgt.isitics.com/#/
# ${log-null}      service_log_path=${{os.path.devnull}}


*** Keywords ***

Dado que estou no menu dashboard
    Dado que acesso a página do portal SGT
    Quando preencho login e senha com usuário DN administrador
    E clico no botão entrar
    Então devo ser redirecionado para o menu Dashboard de Atendimentos

Então expando o menu sanduiche 
    Wait Until Page Does Not Contain Element    timeout=0:00:30        locator=${Loading}
    Wait Until Element Is Visible        locator=${Btn-Sanduich}  
    Click Element                   locator=${Btn-Sanduich}

Então expando a aba configurações 
    Click Element           ${Btn-Configurações}

E clico no modal Login Suporte
    Click Element           locator=${Span-LoginSuport}

Então confirmo se estou na página gerenciamento de Usuários
    Wait Until Element Is Visible             locator=${Validar-LoginSuport-Tela}   
    Wait Until Page Contains                  text=${Msg-LoginSuport}  

E clico no modal busque por nome, login , perfil ou unidade
    Click Element           ${Input-Buscar-LoginSuport}

E preencher o campo de pesquisa com nome de usuario
    Input Text         locator=${Input-Buscar-LoginSuport}     text=${usuarioUO} 

E clicar no lupa
    Click Element           locator=${Btn-Pesquisar}    

Então confirmo a tela com usuarios do SGT
    Wait Until Page Contains  text=${Matricula}  text=${Nome}  text=${Unidade}  text=${Perfil}  text=${Ativo}

Então fazer o login de usuário ativo
    click Element           ${Btn-Login}

E checar usuario logado
    Wait Until Page Does Not Contain Element    timeout=0:00:30        locator=${Loading}
    Wait Until Element Is Visible        locator=${Btn-Sanduich}
    Wait Until Page Contains                 text=${Nome} 
