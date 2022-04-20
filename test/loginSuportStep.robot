*** Settings ***
Resource        ../resources/pageObjects/login.robot
Resource        ../resources/pageObjects/loginSuport.robot
Test Setup          Abrir Navegador
Test Teardown       Fechar Navegador
Library             SeleniumLibrary

*** Test Cases ***
# Funcionalidade: Fazer login suporte no portal do SGT
# Sendo um usuário DN administrador
# Quero logar no portal SGT 
# Para poder fazer login suporte em um usuário

Cenário 1: Login Suporte Usuário Ativo
    Dado que estou no menu dashboard
    Então expando o menu sanduiche  
    # Então expando a aba configurações 
    # E clico no modal Login Suporte
    # Então confirmo se estou na página gerenciamento de Usuários
    # E clico no modal busque por nome, login , perfil ou unidade 
    # E preencher o campo de pesquisa com nome de usuario
    # E clicar no lupa
    # Então confirmo a tela com usuarios do SGT
    # Então fazer o login de usuário ativo
    # E checar usuario logado
    # E clicar no botão logout

# Cenário: loginSuporteUsuarioInitivo
#     Dado que estou no menu dashboard
#     Então expando o menu sanduiche  
#     Então expando a aba configurações 
#     E clico no modal Login Suporte
#     Então confirmo se estou na página  gerenciamento de Usuários
#     E clico no modal busque por nome, login , perfil ou unidade 
#     E preencher o campo de pesquisa com nome de usuario inativo
#     E clicar no lupa
#     Então confirmo a tela com usuarios do SGT
#     Então tentar fazer login de usuario inativo
#     E checar mensagem de erro
#     E clicar no botão logout