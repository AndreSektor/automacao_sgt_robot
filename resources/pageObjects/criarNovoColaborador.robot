*** Settings ***
Library         SeleniumLibrary
Resource        ../elements/colaboradorElements.robot
Library         FakerLibrary        locale=pt_BR
Resource        criarNovoUsuario.robot

*** Keywords ***
E clico no modal colaboradores
    Click Element          locator=${Btn-Colaboradores} 

E clico no botão Cadastrar Novo colaborador  
    Wait Until Page Does Not Contain Element    timeout=0:00:30        locator=${Loading} 
    Wait Until Page Contains                    ${Validar-Tela}
    Click Element          locator=${Register-Colaborador-Button}
