*** Variables ***
${Title}                                SGT - Sistema de Gestão de Tecnologia
${Msg-Email}                            Campo obrigatório
${Msg-Email-Invalid}                    Usuário e/ou senha inválido(s).
${Modal-Login}                          //input[@id='login']
${Modal-Senha}                          //input[@id='senha']
${Btn-Entrar}                           //button[contains(.,'Entrar')]
${Tela-Dashboard}                       (//div[contains(.,'Dashboard de Atendimentos')])[7]
${Span-Email}                           //span[@class='isInvalid'][contains(.,'Campo obrigatório')]
${Span-Senha}                           (//span[@class='isInvalid'])[2]