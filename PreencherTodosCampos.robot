*** Settings ***
Documentation    Desafio Grupo MGO
Library          SeleniumLibrary    timeout=1000

*** Variables ***

${url}                        https://tinyurl.com/desafioTesterSGE 
${navegador}                  chrome    
${SeuNome}                    //input[@aria-labelledby='i1']   
${enviar}                     //span[@class='NPEfkd RveJvd snByac'][contains(.,'Enviar')]  
${AcessoPagina}               //div[@class='F9yp7e ikZYwf LgNcQe'][contains(.,'Convite para festa')]
${email}                      //input[contains(@type,'email')]
${alergiaRestricao}           //input[contains(@aria-labelledby,'i46')]
${MensagemEnviadoSucesso}     //div[contains(@class,'vHW8K')]
${SelecionarSim}              (//div[contains(@class,'AB7Lab Id5V1')])[1]
${maracuja}                   (//div[@data-value='Mousse de maracujá'])[1]
${escolher}                   //div[@class='MocG8c HZ3kWc mhLiyf LMgvRb KKjvXb DEh1R'][contains(.,'Escolher')]  
${NumParticipantes}           //input[contains(@aria-labelledby,'i19')] 
${pratoprincipal}             //div[contains(@aria-label,'Prato principal')] 
${salada}                     //div[contains(@aria-label,'Salada')]   
${sobremesa}                  //div[contains(@aria-label,'Sobremesa')]
${bebidas}                    //div[contains(@aria-label,'Bebidas')]    
${AcompAperitivos}            //div[contains(@aria-label,'Acompanhamentos/aperitivos')]
${outro}                      //input[@class='Hvn9fb zHQkBf']  
${AteTresOpcoes}              //span[contains(.,'Selecione até 3 opções')]

*** Test Cases ***
Abrir o Browser
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window

Validar o acesso à página
    Wait Until Element Is Visible    locator=${AcessoPagina}

Inserir nome válido do convidado     
    Input Text    locator=${SeuNome}     text=Douglas Tavares  

Clicar no campo "Escolher"
    Click Element    locator=${escolher}  

Clicar no elemento "Mousse de maracujá"    
    Double Click Element   locator=${maracuja}

Selecionar "Sim, participarei" no card "Você pode participar?"
    Click Element    locator=${SelecionarSim}

Inserir o número de participantes     
    Input Text    locator=${NumParticipantes}     text=4 

Selecionar o item "Prato principal"
    Click Element    locator=${pratoprincipal}

Selecionar o item "Salada"
    Click Element    locator=${salada}

Selecionar o item "Sobremesa"
    Click Element    locator=${sobremesa}

Selecionar o item "Bebidas"
    Click Element    locator=${bebidas}

Selecionar o item "Acompanhamentos/aperitivos"
    Click Element    locator=${AcompAperitivos}

Inserir um item no campo "Outro"
    Input Text    locator=${outro}    text=Salaminho 

Validar a frase "Selecione até 3 opções"
    Wait Until Element Is Visible    locator=${AteTresOpcoes}

Desabilitar o item "bebidas"
    Click Element    locator=${bebidas}

Desabilitar o item "Salada"
    Click Element    locator=${salada}

Desabilitar o item "Sobremesa"
    Click Element    locator=${sobremesa}

Inserir a resposta "Lactose" no campo "Você tem alguma alergia ou restrição alimentar?"
    Input Text    locator=${alergiaRestricao}    text=Lactose

Inserir um e-mail valido
    Input Text    locator=${email}    text=datg2702@hotmail.com

Clicar em Enviar
    Click Element    locator=${enviar}

Validar formulário enviado com sucesso
    Wait Until Element Is Visible    locator=${MensagemEnviadoSucesso}   

Fechar o Browser
    Capture Page Screenshot
    Close Browser




