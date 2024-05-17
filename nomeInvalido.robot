*** Settings ***
Documentation    Desafio Grupo MGO
Library          SeleniumLibrary    timeout=1000

*** Variables ***

${url}                        https://tinyurl.com/desafioTesterSGE 
${navegador}                  chrome    
${AcessoPagina}               //div[@class='F9yp7e ikZYwf LgNcQe'][contains(.,'Convite para festa')]
${SeuNome}                    //input[@aria-labelledby='i1']  
${alergiaRestricao}           //input[contains(@aria-labelledby,'i46')]
${email}                      //input[contains(@type,'email')]
${enviar}                     //span[@class='NPEfkd RveJvd snByac'][contains(.,'Enviar')]  
${MensagemEnviadoSucesso}     //div[contains(@class,'vHW8K')]

*** Test Cases ***

Abruir o Browser
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window

Validar o acesso à página
    Wait Until Element Is Visible    locator=${AcessoPagina}

Inserir nome inválido do convidado     
    Input Text    locator=${SeuNome}     text=Douglas@$  

Inserir a resposta "Lactose" no campo "Você tem alguma alergia ou restrição alimentar?"
    Input Text    locator=${alergiaRestricao}     text=Lactose

Inserir um e-mail válido
    Input Text    locator=${email}    text=datg2702@hotmail.com

Clicar em Enviar
    Click Element    locator=${enviar}

Validar formulário enviado com sucesso
    Wait Until Element Is Visible    locator=${MensagemEnviadoSucesso} 

Fechar o Browser
    Capture Page Screenshot
    Close Browser

