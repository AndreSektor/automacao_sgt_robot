*** Settings ***
Library         SeleniumLibrary
Resource        ../elements/usuariosElements.robot
Resource        loginSuport.robot
Library         FakerLibrary         locale=pt_BR

*** Keywords ***

E clico no modal Usuários
    Click Element       locator=${Span-Usuarios}

E clico em Cadastrar Novo Usuário
    Wait Until Page Does Not Contain Element    timeout=0:00:30        locator=${Loading}
    Wait Until Page Contains         text=${Title-Usuarios}    
    Click Element                     locator=${Register-User-Button}

E checar tela de edição
    Wait Until Page Contains         text=${New-User-Title}  
    Wait Until Page Contains         text=${Informs}  

Então preencher campo Nome, Login e Senha
    Wait Until Page Does Not Contain Element    timeout=0:00:30        locator=${Loading}
    ${Name}             FakerLibrary.Name
    Input Text           locator=${Input-Name}         text=${Name} 
    ${Login}            FakerLibrary.Email
    Input Text           locator=${Input-Login}        text=${Login}
    ${Password}         FakerLibrary.Password
    Input Text           locator=${Input-Password}     text=${Password}

E clicar em Próximo
    Click Element       locator=${Button-Next}

E checar tela de informações do perfil
    Wait Until Page Contains         text=${Informs-Perfil}  
    
Então editar campo regional, perfil de menu e linhas de serviço
    Click Element       locator=${Regional}
    Wait Until Page Contains Element       locator=${Regional-Pernambuco}
    Click Element       locator=${Regional-Pernambuco} 
    Wait Until Page Does Not Contain Element    timeout=0:00:30        locator=${Tabela}   
    Click Element       locator=${Perfil-User}
    Click Element       locator=${Gestor}
    Wait Until Page Does Not Contain Element    timeout=0:00:30        locator=${Tabela} 
    Click Element       locator=${Linha-Service}
    Click Element       locator=${Metrologia}
    Wait Until Page Does Not Contain Element    timeout=0:00:30        locator=${Tabela} 
    Click Element       locator=${Plus}

Então checar tela de cadastro
    Wait Until Page Contains         text=${Revisao}


