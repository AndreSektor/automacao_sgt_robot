*** Settings ***
Library         SeleniumLibrary
Resource        ../pageObjects/login.robot
Resource        ../elements/loginElements.robot
Resource        ../elements/dashboardElements.robot
Resource        ../elements/loginSuportElements.robot


*** Variables ***
${browser}       headlessfirefox
${url}           https://qa.newsgt.isitics.com/#/
${log-null}      geckodriver.log=null


*** Keywords ***

Dado que estou no menu dashboard
    Dado que acesso a página do portal SGT
    Quando preencho login e senha com usuário DN administrador
    E clico no botão entrar
    Então devo ser redirecionado para o menu Dashboard de Atendimentos

Então expando o menu sanduiche 
    Wait Until Location Does Not Contain           locator=${Loading}
#     Wait Until Element Is Visible   implicit_wait=0:00:30     ${Btn-Sanduich}  
#     Click Element                   ${Btn-Sanduich}

# Então expando a aba configurações 
#     Click Element           ${Btn-Configurações}

# E clico no modal Login Suporte
#     Click Element           ${Span-LoginSuport}

# Então confirmo se estou na página gerenciamento de Usuários
#     Wait Until Element Is Visible             locator=${Validar-LoginSuport-Tela}   
#     Wait Until Page Contains                  text=${Msg-LoginSuport}  



