*** Settings ***
Resource            ../resources/pageObjects/criarNovoUsuario.robot
Test Setup          Abrir Navegador
Test Teardown       Fechar Navegador
<<<<<<< HEAD
=======
Library             SeleniumLibrary
Library             FakerLibrary
>>>>>>> ce8f27ce941c147d92aeaa4389dbcc7ba7e780bb

***Test Cases ***
#   Funcionalidade: Criar Novo Usuario no portal do SGT
#   Sendo um usuário DN administrador
#   Quero criar um ususário
#   Para ter acesso ao sistema

Cenário 1: Cadastrar Usuário com sucesso
    [Tags]          @criarNovoUsuario 
    Dado que estou no menu dashboard
    Então expando o menu sanduiche
    Então expando a aba configurações
    E clico no modal Usuários
    E clico em Cadastrar Novo Usuário
    E checar tela de edição
    Então preencher campo Nome, Login e Senha
    E clicar em Próximo
    E checar tela de informações do perfil
    Então editar campo regional, perfil de menu e linhas de serviço
<<<<<<< HEAD
    E clicar em Próximo
    Então checar tela de cadastro
=======
    # E clicar em Próximo
    # Então checar tela de cadastro
>>>>>>> ce8f27ce941c147d92aeaa4389dbcc7ba7e780bb
    # E clicar em Finalizar
    # Então checar span