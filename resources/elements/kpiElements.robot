*** Variables ***
${Titulo-KPI-List}              KPI List
${Modal-Ano}                    //div[contains(@aria-labelledby,'ano')]
${Ano-2019}                     //li[@class='MuiButtonBase-root MuiListItem-root MuiMenuItem-root MuiMenuItem-gutters MuiListItem-gutters MuiListItem-button'][contains(.,'2019')]   
${Btn-Aplicar}                  //button[@class='darkBlue basic-button'][contains(.,'Aplicar')]
${Span-RTdeSTI}                 //td[@class='MuiTableCell-root MuiTableCell-body'][contains(.,'Imagem & Reputação / Sustentabilidade Financeira')]    
${Presente}                     
${Futuro22}                     (//input[contains(@type,'text')])[1]                       
${Futuro23}                     (//input[contains(@type,'text')])[2]
${Bom}                          (//span[contains(@class,'checkmark')])[1] 
${Regular}                      (//span[contains(@class,'checkmark')])[2]
${Ruim}                         (//span[contains(@class,'checkmark')])[3]                        
${Aumentar}                     (//span[contains(@class,'checkmark')])[4] 
${Permanecer}                   (//span[contains(@class,'checkmark')])[5] 
${Diminuir}                     (//span[contains(@class,'checkmark')])[6] 
${Comentarios}                  //textarea[contains(@class,' ')]
