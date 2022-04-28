** Settings ***
Library     SeleniumLibrary
Resource    ../elements/loginElements.robot
Resource    ../../usuarioDN/usuario.robot
Resource    ../elements/dashboardElements.robot

*** Variables ***
${browser}       headlessfirefox
${url}           https://qa.newsgt.isitics.com/#/
${log-null}      geckodriver.log=null

*** Keywords ***
Abrir Navegador
    Open Browser      ${url}     ${browser}     ${log-null}

Fechar Navegador
    Close Browser 

Dado que acesso a página do portal SGT
    Go To                   url=${url}
    Title Should Be         ${Title}

Quando preencho login e senha com usuário DN administrador
    Input Text              ${Modal-Login}     ${usuario}
    Input Text              ${Modal-Senha}     ${senha}

E clico no botão Entrar     
    Click Element           locator=${Btn-Entrar}

Então devo ser redirecionado para o menu Dashboard de Atendimentos
    Wait Until Element Is Visible    timeout=15  locator=${Tela-Dashboard}
    Wait Until Page Contains          text=${Validar-Dashboard}

Quando submeto o email vazio e senha correta 
    Input Text              ${Modal-Senha}     ${senha}

Então devo validar a mensagem Campo obrigatório   
    Wait Until Element Is Visible     locator=${Span-Email}
    Wait Until Page Contains          text=${Msg-Email}

Quando submeto o email correto e senha vazia
    Input Text              ${Modal-Login}     ${usuario}

Então devo validar a mensagem Campo obrigatório senha
    Wait Until Element Is Visible     locator=${Span-Senha}
    Wait Until Page Contains          text=${Msg-Email}

Quando submeto o email incorreto e senha correta
    Input Text              ${Modal-Login}     ${usuarioF}
    Input Text              ${Modal-Senha}     ${senha}

Então devo validar Usuário ou senha inválido email
    Wait Until Element Is Visible     locator=${Span-Senha}
    Wait Until Page Contains          text=${Msg-Email-Invalid}  

Quando submeto o email correto e senha incorreta
    Input Text              ${Modal-Login}     ${usuario}
    Input Text              ${Modal-Senha}     ${senhaF}

Então devo validar Usuário ou senha inválido senha
    Wait Until Element Is Visible     locator=${Span-Senha}
    Wait Until Page Contains          text=${Msg-Email-Invalid}        

Quando submeto email e senha vazios    
    Click Element           ${Modal-Login}
    Click Element           ${Modal-Senha}

Então devo validar as mensagems Campo obrigatório
    Wait Until Element Is Visible     locator=${Span-Email}
    Wait Until Page Contains          text=${Msg-Email}
    Wait Until Element Is Visible     locator=${Span-Senha}
    Wait Until Page Contains          text=${Msg-Email} 



