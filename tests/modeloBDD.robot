*** settings ***
Resource   ../resource/login.robot


*** variables ***
${URL}   https://www.cervelloesm.com.br
${BROWSER}   firefox

*** Test case ***
Login na ferramenta

    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultado da busca

cenário 02: PESQUISAR PRODUTO NÃO EXISTENTE

    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "produtoNãoExistente"
    Então a página deve exibir a mensagem "No results were found for your search "ProdutoNãoExistente""

*** Keywords ***
Dado que estou na página home do site
    Acessar a página home do site
Quando eu pesquisar pelo produto "Blouse"
