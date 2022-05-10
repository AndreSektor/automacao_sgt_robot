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