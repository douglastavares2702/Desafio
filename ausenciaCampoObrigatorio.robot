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
${campoObrigatorio}           //span[@class='RHiWt'][contains(.,'Esta pergunta é obrigatória')] 

*** Test Cases ***
Abrir o Browser
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window

Validar o acesso à página
    Wait Until Element Is Visible    locator=${AcessoPagina}

Inserir um nome válido do convidado
    Input Text    locator=${SeuNome}     text=Douglas Tavares  

Inserir um e-mail válido    
    Input Text    locator=${email}    text=datg2702@hotmail.com

Clicar em Enviar
    Click Element    locator=${enviar}

Validar que mengagem "Está pergunta é obrigatória" está visível no campo "Você tem alguma alergia ou restrição alimentar?"
    Wait Until Element Is Visible    locator=${campoObrigatorio}      

Fechar o Browser
    Capture Page Screenshot
    Close Browser