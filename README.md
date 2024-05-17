Projeto Desafio Teste Júnior 
Browser: Chrome Versão: Versão 124.0.6367.208 (Versão oficial) 64 bits
Ferramenta: RobotFramework Versão: 7.0 
Linguagem de Programação: Python Versão:  3.12.3

Test Cases

> Envio com Sucesso - Dado que preenchendo o formulário com os campos: Nome; Você pode Paritipar?; Você tem alguma alergia ou restrição alimentar? e E-mail; Deverá ser enviado com sucesso    

1. Abrir o browser
2. Acessar a url https://tinyurl.com/desafioTesterSGE 
3. Validar o acesso à página "Convite para festa"
    >Melhoria: Validar o acesso à página
4. Inserir um nome válido no campo "Seu nome"
5. Selecionar o check "Sim, participarei" no card "Você pode participar?"
6. Inserior o texto "Lactose" no campo "Você tem alguma alergia ou restrição alimentar?"
7. Inserir um e-mail válido no campo "Qual é seu endereço de e-mail?"
8. Clicar em "Enviar"
9. Deverá retornar a mensagem "Thanks for responding!  Can't wait to see you there.", validando o envio com sucesso do formulário
10.Screenshot da tela
11.O browser é fechado

> Nome Inválido - Dado que preenchendo o formulário apenas com os campos obrigatórios, inserindo um nome com caractéres especiais, não deveria ser possível o envio

1. Abrir o browser
2. Acessar a url https://tinyurl.com/desafioTesterSGE 
3. Validar o acesso à página "Convite para festa"
4. Inserir um nome inválido no campo "Seu nome"
    > Melhoria: A mensagem "Dados Inválidos" poderia ficar visível na tela
5. Inserir o texto "Lactose" no campo "Você tem alguma alergia ou restrição alimentar?"
6. Inserir um e-mail válido no campo "Qual é seu endereço de e-mail?"
7. Clicar em "Enviar"
8. Deverá retornar a mensagem "Thanks for responding!  Can't wait to see you there."
9. Screenshot da tela
10.O browser é fechado

> E-mail inválido - Dado que preenchendo o formulário com e-mail inválido, deverá retornar a mensagem "Precisa ser um e-mail válido."

1. Abrir o browser
2. Acessar a url https://tinyurl.com/desafioTesterSGE 
3. Validar o acesso à página "Convite para festa"
4. Inserior o texto "Lactose" no campo "Você tem alguma alergia ou restrição alimentar?"
5. Inserir um e-mail inválido no campo "Qual é seu endereço de e-mail?"
6. Validar que a mensagem "Precisa ser um e-mail válido." está visível na tela após inseir o e-mail inválido
7. Screenshot da tela
8. O browser é fechado

> Ausência de Campo Obrigatório - Dado que não preenchendo o campo obrigatório "Você tem alguma alergia ou restrição alimentar?*", o formulário não poderá ser enviado. Deverá retornar a mensagem "Esta pergunta é obrigatória"

1. Abrir o browser
2. Acessar a url https://tinyurl.com/desafioTesterSGE 
3. Validar o acesso à página "Convite para festa"
4. Inserir um nome válido no campo "Seu nome"
5. Inserir um e-mail válido no campo "Qual é seu endereço de e-mail?"
6. Clicar em "Enviar"
7. Validar que a mensagem "Esta pergunta é obrigatória" está visível no campo "Você tem alguma alergia ou restrição alimentar?"
8. Screenshot da tela
9. O browser é fechado  

> Preenchendo todos os campos - Dado que preenchendo todos os campos
    > Ao selecinar todos os itens no card "O que você vai trazer?", aparecerá a mensagem "Selecione até 3 opções"; Sendo assim, deverá desabilitar os itens "Bebida, Salada e Sobremesa".

1. Abrir o browser
2. Acessar a url https://tinyurl.com/desafioTesterSGE 
3. Validar o acesso à página "Convite para festa"
4. Inserir um nome válido no campo "Seu nome"
5. Clicar no campo "Escolha uma sobremesa" e selecione o elemento "Mousse de maracujá"
6. Selecionar o check "Sim, participarei" no card "Você pode participar?" 
7. Inserir o texto "4" no campo "Quantas pessoas comparecerão?"
8. No card "O que você vai trazer?", Selecionar os itens: "Prato Principal, Salada, Sobremesa, Bebidas, Acompanhamentos/aperitivos"; Inserir o texto "Salaminho" no campo "Outro:"
9. Deverá aparece a mensagem "Selecione até 3 opções"
10.Desabilitar os itens "Bebida, Salada e Sobremesa"
11.Inserir o texto "Lactose" no campo "Você tem alguma alergia ou restrição alimentar?"
12.Inserir um e-mail válido no campo "Qual é seu endereço de e-mail?"
13.Clicar em "Enviar"
14.Deverá retornar a mensagem "Thanks for responding!  Can't wait to see you there."
15.Screenshot da tela
16.O browser é fechado







