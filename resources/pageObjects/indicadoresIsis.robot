*** Settings ***
Library     SeleniumLibrary
Resource    ../elements/kpiElements.robot
Resource    ../../usuarioUO/usuarioUO.robot
Resource    ../pageObjects/loginSuport.robot

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

Então entrar no indicador Receita total de STI (Automático)
    Wait Until Element Is Visible           ${Span-RTdeSTI}
    Click Element           locator=${Span-RTdeSTI}     
    Click Element           locator=${Futuro22}     
    Click Element           locator=${Futuro23}         
    Click Element           locator=${Bom}     
    Click Element           locator=${Regular}          
    Click Element           locator=${Ruim}  
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir} 
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

Então entrar no indicador Custo total de STI (Declaratório)   
    Wait Until Element Is Visible           ${Span-CTdeSTI}
    Click Element           locator=${Span-CTdeSTI}
    Click Element           locator=${Presente}     
    Click Element           locator=${Futuro23}
    Click Element           locator=${Futuro24}         
    Click Element           locator=${Bom}     
    Click Element           locator=${Regular}          
    Click Element           locator=${Ruim}   
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir}
    Click Element           locator=${Comentarios} 
    Click Element           locator=${Fechar}

Então entrar no indicador Sustentabilidade de STI (Automático)
    Wait Until Element Is Visible           ${Span-SusdeSTI}
    Click Element           locator=${Span-SusdeSTI}
    Click Element           locator=${Futuro22}     
    Click Element           locator=${Futuro23}         
    Click Element           locator=${Bom}     
    Click Element           locator=${Regular}          
    Click Element           locator=${Ruim}  
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir} 
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

Então entrar no indicador % de Receita da Indústria (Mercado) (Automático)
    Wait Until Element Is Visible           ${Span-%RIM} 
    Click Element           locator=${Span-%RIM}
    Click Element           locator=${Futuro22}     
    Click Element           locator=${Futuro23}         
    Click Element           locator=${Bom}     
    Click Element           locator=${Regular}          
    Click Element           locator=${Ruim}  
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir} 
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}
      
Então entrar no indicador % de Receita de Programas de Fomento Externos (Automático)
    Wait Until Element Is Visible           ${Span-%RPFE}    
    Click Element           locator=${Span-%RPFE}
    Click Element           locator=${Futuro22}     
    Click Element           locator=${Futuro23}         
    Click Element           locator=${Bom}     
    Click Element           locator=${Regular}          
    Click Element           locator=${Ruim}  
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir} 
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

Então entrar no indicador % de Receita do Sistema Indústria (Automático)
    Wait Until Element Is Visible           ${Span-%RSI}
    Click Element           locator=${Span-%RSI}
    Click Element           locator=${Futuro22}     
    Click Element           locator=${Futuro23}         
    Click Element           locator=${Bom}     
    Click Element           locator=${Regular}          
    Click Element           locator=${Ruim}  
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir} 
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}
  
Então entrar no indicador Receita Total de P&D+I (Automático)
    Wait Until Element Is Visible           ${Span-RTPDI}  
    Click Element           locator=${Span-RTPDI}
    Click Element           locator=${Futuro22}     
    Click Element           locator=${Futuro23}         
    Click Element           locator=${Bom}     
    Click Element           locator=${Regular}          
    Click Element           locator=${Ruim}  
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir} 
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

Então entrar no indicador % de Receita de P&D+I (Automático)
    Wait Until Element Is Visible           ${Span-%RPDI}
    Click Element           locator=${Span-%RPDI}
    Click Element           locator=${Futuro22}     
    Click Element           locator=${Futuro23}         
    Click Element           locator=${Bom}     
    Click Element           locator=${Regular}          
    Click Element           locator=${Ruim}  
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir} 
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

Então entrar no indicador Receita Total de Consultoria em Tecnologia (Automático)
    Wait Until Element Is Visible           ${Span-RTCT}
    Click Element           locator=${Span-RTCT}
    Click Element           locator=${Presente}
    Click Element           locator=${Futuro22}
    Click Element           locator=${Futuro23}
    Click Element           locator=${Bom}
    Click Element           locator=${Regular}
    Click Element           locator=${Ruim}
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir}
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

Então entrar no indicador % de Receita de Consultoria em Tecnologia (Automático)
    Wait Until Element Is Visible           ${Span-%RCT}
    Click Element           locator=${Span-%RCT}
    Click Element           locator=${Presente}
    Click Element           locator=${Futuro22}
    Click Element           locator=${Futuro23}
    Click Element           locator=${Bom}
    Click Element           locator=${Regular}
    Click Element           locator=${Ruim}
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir}
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

Então entrar no indicador Receita Total de Serviços Metrológicos (Automático)
    Wait Until Element Is Visible           ${Span-RTSM}
    Click Element           locator=${Span-RTSM}
    Click Element           locator=${Presente}
    Click Element           locator=${Futuro22}
    Click Element           locator=${Futuro23}
    Click Element           locator=${Bom}
    Click Element           locator=${Regular}
    Click Element           locator=${Ruim}
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir}
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

Então entrar no indicador % de Receita de Serviços Metrológicos (Automático)
    Wait Until Element Is Visible           ${Span-%RSM}
    Click Element           locator=${Span-%RSM}
    Click Element           locator=${Presente}
    Click Element           locator=${Futuro22}
    Click Element           locator=${Futuro23}
    Click Element           locator=${Bom}
    Click Element           locator=${Regular}
    Click Element           locator=${Ruim}
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir}
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

Então entrar no indicador Número de Publicações (Declaratório)
    Wait Until Element Is Visible           ${Span-NP}
    Click Element           locator=${Span-NP}
    Click Element           locator=${Presente}
    Click Element           locator=${Futuro22}
    Click Element           locator=${Futuro23}
    Click Element           locator=${Futuro24}
    Click Element           locator=${Bom}
    Click Element           locator=${Regular}
    Click Element           locator=${Ruim}
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir}
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}
Então entrar no indicador Número de Aplicações para Registro de PI (Declaratório)
    Wait Until Element Is Visible           ${Span-NARPI}
    Click Element           locator=${Span-NARPI}
    Click Element           locator=${Presente}
    Click Element           locator=${Futuro22}
    Click Element           locator=${Futuro23}
    Click Element           locator=${Futuro24}
    Click Element           locator=${Bom}
    Click Element           locator=${Regular}
    Click Element           locator=${Ruim}
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir}
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

#Valor para o cliente    
E clico no modal Valor para o cliente  
    Click Element       locator=${Span-ValorPCliente}

Então entrar no indicador Número Total de Clientes de STI (Automático)  
    Wait Until Page Does Not Contain Element    timeout=0:00:30    locator=${Loading}
    Wait Until Element Is Visible           ${Span-NTCSTI}
    Click Element           locator=${Span-NTCSTI}
    Click Element           locator=${Presente}
    Click Element           locator=${Futuro22}
    Click Element           locator=${Futuro23}
    Click Element           locator=${Bom}
    Click Element           locator=${Regular}
    Click Element           locator=${Ruim}
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir}
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

Então entrar no indicador Número Total de Clientes de P&D+I (Automático)
    Wait Until Element Is Visible           ${Span-NTCP&D+I}
    Click Element           locator=${Span-NTCP&D+I}
    Click Element           locator=${Presente}
    Click Element           locator=${Futuro22}
    Click Element           locator=${Futuro23}
    Click Element           locator=${Bom}
    Click Element           locator=${Regular}
    Click Element           locator=${Ruim}
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir}
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

Então entrar no indicador Número de Clientes de P&D+I por Pesquisador Efetivo (Automático)
    Wait Until Element Is Visible           ${Span-NCP&D+IPE}
    Click Element           locator=${Span-NCP&D+IPE}
    Click Element           locator=${Presente}
    Click Element           locator=${Futuro22}
    Click Element           locator=${Futuro23}
    Click Element           locator=${Bom}
    Click Element           locator=${Regular}
    Click Element           locator=${Ruim}
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir}
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}    

Então entrar no indicador Número de Novos Clientes de P&D+I (Automático)
    Wait Until Element Is Visible           ${Span-NNCP&D+I}
    Click Element           locator=${Span-NNCP&D+I}
    Click Element           locator=${Presente}
    Click Element           locator=${Futuro22}
    Click Element           locator=${Futuro23}
    Click Element           locator=${Bom}
    Click Element           locator=${Regular}
    Click Element           locator=${Ruim}
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir}
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

Então entrar no indicador Taxa de retenção de clientes (Automático)
    Wait Until Element Is Visible           ${Span-TRC}
    Click Element           locator=${Span-TRC}
    Click Element           locator=${Presente}
    Click Element           locator=${Futuro22}
    Click Element           locator=${Futuro23}
    Click Element           locator=${Bom}
    Click Element           locator=${Regular}
    Click Element           locator=${Ruim}
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir}
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

Então entrar no indicador Taxa de Dependência do Principal Cliente de P&D+I (Automático)
    Wait Until Element Is Visible           ${Span-TDPCP&D+I}
    Click Element           locator=${Span-TDPCP&D+I}
    Click Element           locator=${Presente}
    Click Element           locator=${Futuro22}
    Click Element           locator=${Futuro23}
    Click Element           locator=${Bom}
    Click Element           locator=${Regular}
    Click Element           locator=${Ruim}
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir}
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

Então entrar no indicador Número de PMEs Atendidas (Automático)
    Wait Until Element Is Visible           ${Span-NPMEsA}
    Click Element           locator=${Span-NPMEsA}
    Click Element           locator=${Presente}
    Click Element           locator=${Futuro22}
    Click Element           locator=${Futuro23}
    Click Element           locator=${Bom}
    Click Element           locator=${Regular}
    Click Element           locator=${Ruim}
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir}
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

Então entrar no indicador Número de Grandes Empresas Atendidas (Automático)
    Wait Until Element Is Visible           ${SPan-NGEA}
    Click Element           locator=${SPan-NGEA}
    Click Element           locator=${Presente}
    Click Element           locator=${Futuro22}
    Click Element           locator=${Futuro23}
    Click Element           locator=${Bom}
    Click Element           locator=${Regular}
    Click Element           locator=${Ruim}
    Click Element           locator=${Aumentar}
    Click Element           locator=${Permanecer}
    Click Element           locator=${Diminuir}
    Click Element           locator=${Comentarios}
    Click Element           locator=${Fechar}

#Processo de negócio
E clico no modal Processo de negócio    
    Click Element           locator=${Span-ProcessoNegocio}

 

   




















