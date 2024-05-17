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
${MensagemEmailInvalido}      //span[@class='RHiWt'][contains(.,'Precisa ser um e-mail válido.')]  

*** Test Cases ***
Abrir o Browser
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window

Validar o acesso à página
    Wait Until Element Is Visible    locator=${AcessoPagina}

Inserir um nome válido do convidado
    Input Text    locator=${SeuNome}     text=Douglas Tavares  

Inserir a resposta "Lactose" no campo "Você tem alguma alergia ou restrição alimentar?"
    Input Text    locator=${alergiaRestricao}    text=Lactose

Inserir um e-mail inválido    
    Input Text    locator=${email}    text=erro@

Validar a mengagem "Precisa ser um e-mail válido." está visível na tela
    Wait Until Element Is Visible    locator=${MensagemEmailInvalido}  

Fechar o Browser
    Capture Page Screenshot
    Close Browser

