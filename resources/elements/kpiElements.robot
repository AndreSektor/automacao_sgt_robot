*** Variables ***
${Titulo-KPI-List}              KPI List
${Modal-Ano}                    //div[contains(@aria-labelledby,'ano')]
${Ano-2019}                     //li[@class='MuiButtonBase-root MuiListItem-root MuiMenuItem-root MuiMenuItem-gutters MuiListItem-gutters MuiListItem-button'][contains(.,'2019')]   
${Btn-Aplicar}                  //button[@class='darkBlue basic-button'][contains(.,'Aplicar')]
${Span-RTdeSTI}                 //td[@class='MuiTableCell-root MuiTableCell-body'][contains(.,'Imagem & Reputação / Sustentabilidade Financeira')]    
${Futuro22}                     (//input[contains(@type,'text')])[1]                       
${Futuro23}                     (//input[contains(@type,'text')])[2]
${Futuro24}                     (//input[contains(@type,'text')])[3]
${Bom}                          (//span[contains(@class,'checkmark')])[1] 
${Regular}                      (//span[contains(@class,'checkmark')])[2]
${Ruim}                         (//span[contains(@class,'checkmark')])[3]                        
${Aumentar}                     (//span[contains(@class,'checkmark')])[4] 
${Permanecer}                   (//span[contains(@class,'checkmark')])[5] 
${Diminuir}                     (//span[contains(@class,'checkmark')])[6] 
${Comentarios}                  //textarea[contains(@class,' ')]
${Fechar}                       //span[@class='material-icons MuiIcon-root'][contains(.,'clear')]    
#
${Span-CTdeSTI}                 //td[@class='MuiTableCell-root MuiTableCell-body cell-definition'][contains(.,'Custo total de STI')]
${Presente}                     (//div[contains(@class,'formField')])[1]
#
${Span-SusdeSTI}                //td[@class='MuiTableCell-root MuiTableCell-body cell-definition'][contains(.,'Sustentabilidade de STI')]

${Span-%RIM}                    //td[@class='MuiTableCell-root MuiTableCell-body cell-definition'][contains(.,'% de Receita da Indústria (Mercado)')]
                                    
${Span-%RPFE}                   //td[contains(.,'% de Receita de Programas de Fomento Externos')]
                                 
${Span-%RSI}                    //td[contains(.,'% de Receita do Sistema Indústria')]
                                  
${Span-RTPDI}                   //td[contains(.,'Receita Total de P&D+I')]

${Span-%RPDI}                   //td[contains(.,'% de Receita de P&D+I')]

${Span-RTCT}                    //td[contains(.,'Receita Total de Consultoria em Tecnologia')]

${Span-%RCT}                    //td[contains(.,'% de Receita de Consultoria em Tecnologia')]

${Span-RTSM}                    //td[contains(.,'Receita Total de Serviços Metrológicos')]

${Span-%RSM}                    //td[contains(.,'% de Receita de Serviços Metrológicos')]

${Span-NP}                      //td[contains(.,'Número de Publicações')]

${Span-NARPI}                   //td[contains(.,'Número de Aplicações para Registro de PI')]