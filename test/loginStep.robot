*** Settings ***
Resource            ../resources/pageObjects/login.robot
Test Setup          Abrir Navegador
Test Teardown       Fechar Navegador
Library             SeleniumLibrary

*** Test Cases ***
#  Funcionalidade: Fazer login no portal do SGT
#  Sendo um usuário DN administrador
#  Quero logar no portal SGT 
#  Para ter acesso ao menu dashboard

Cenário 1: Login Perfeito
    [Tags]      Login Perfeito
    Dado que acesso a página do portal SGT
    Quando preencho login e senha com usuário DN administrador
    E clico no botão Entrar 
    Então devo ser redirecionado para o menu Dashboard de Atendimentos

Cenário 2: E-mail Vazio
    [Tags]      E-mail Vazio
    Dado que acesso a página do portal SGT
    Quando submeto o email vazio e senha correta
    E clico no botão Entrar
    Então devo validar a mensagem Campo obrigatório

Cenário 3: Senha Vazia
    [Tags]      Senha Vazia
    Dado que acesso a página do portal SGT
    Quando submeto o email correto e senha vazia
    E clico no botão Entrar
    Então devo validar a mensagem Campo obrigatório senha

Cenário 4: E-mail Incorreto
    [Tags]      E-mail Incorreto
    Dado que acesso a página do portal SGT
    Quando submeto o email incorreto e senha correta
    E clico no botão Entrar
    Então devo validar Usuário ou senha inválido email

Cenário 5: Senha Incorreta
    [Tags]      Senha Incorreta
    Dado que acesso a página do portal SGT
    Quando submeto o email correto e senha incorreta
    E clico no botão Entrar
    Então devo validar Usuário ou senha inválido senha

Cenario: E-mail/Senha Vazios
    [Tags]      E-mail/Senha Vazios
    Dado que acesso a página do portal SGT
    Quando submeto email e senha vazios 
    E clico no botão Entrar
    Então devo validar as mensagems Campo obrigatório