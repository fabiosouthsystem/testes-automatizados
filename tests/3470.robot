*** settings ***
Resource   ../resource/3470.robot
Test SETUP        Abrir navegador
Test TEARDOWN     Fechar navegador


*** variables ***
${URL}   https://portal-aplicacoes.dev-sicredi.in/
${BROWSER}   firefox

*** Test case ***
Consulta de Cartas Senhas entregues na agência

    Dado que estou logado com a visão de Gerente de negócios ou assistente administrativo da cooperativa
    Quando acessar a consulta no Portal de Aplicações na opção de Entregas cartões e cartas senhas na cooperativa
    E puder selecionar a cooperativa
    Então deverá ser possível consultar as cartas senhas e seus status que estão na agência para retirada dos associados

###cenário 02: PESQUISAR PRODUTO NÃO EXISTENTE

  ##  Dado que estou na página home do site
    ##Quando eu pesquisar pelo produto "produtoNãoExistente"
    ##Então a página deve exibir a mensagem "No results were found for your search "ProdutoNãoExistente""

*** Keywords ***
##Dado que estou na página home do site
    Acessar a página home do site
##Quando eu pesquisar pelo produto "Blouse"
