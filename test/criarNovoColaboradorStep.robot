*** Settings ***
Resource            ../resources/pageObjects/criarNovoColaborador.robot
Test Setup          Abrir Navegador
Test Teardown       Fechar Navegador

*** Test Cases ***
# Funcionalidade: Fazer login suporte no portal do SGT
# Sendo um usuário DN administrador
# Quero logar no portal SGT 
# Para cadastrar um colaborador ativo/inativo

Cenário: Cenário: Cadastrar Colaborador Ativo
    [Tags]           @criarNovoColaborador
    Dado que estou no menu dashboard
    Então expando o menu sanduiche
    E clico no modal colaboradores
    E clico no botão Cadastrar Novo colaborador
    # E checar tela Dados Pessoais
    # Então preencher modal Nome, CPF, Email, Telefone, Currículum, Linkedin e Unidade
    # E clicar em Próximo
    # E checar tela Informações de Trabalho
    # Então selecionar Contrato
    # Então selecionar Formação
    # Então selecionar Função
    # Então preencher CR
    # Então preencher N de Horas
    # E clicar em Próximo
    # E checar tela Competências
    # Então selecionar Competência
    # E clicar em Próximo
    # E checar tela Skills
    # Então selecionar Skills
    # E clicar em Próximo
    # E checar tela Revisão