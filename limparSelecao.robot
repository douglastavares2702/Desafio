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
${SelecionarSim}              (//div[contains(@class,'AB7Lab Id5V1')])[1]
${limparselecao}              //span[@class='NPEfkd RveJvd snByac'][contains(.,'Limpar seleção')]  

*** Test Cases ***

Envio de Formulário Válido
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window

Validar o acesso à página
    Wait Until Element Is Visible    locator=${AcessoPagina}

Inserir nome válido do convidado     
    Input Text    locator=${SeuNome}     text=Douglas Tavares 

Selecionar "Sim, participarei" no card "Você pode participar?"
    Click Element    locator=${SelecionarSim}

Clicar no botão "Limpar seleção"
    Click Element    locator=${limparselecao}

Inserir a resposta "Lactose" no campo "Você tem alguma alergia ou restrição alimentar?"
    Input Text    locator=${alergiaRestricao}     text=Lactose

Inserir um e-mail valido
    Input Text    locator=${email}    text=datg2702@hotmail.com

Clicar em Enviar
    Click Element    locator=${enviar}

Validar formulário enviado com sucesso
    Wait Until Element Is Visible    locator=${MensagemEnviadoSucesso}   

Fechar o Browser
    Capture Page Screenshot
    Close Browser
