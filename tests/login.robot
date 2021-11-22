*** settings ***
library  SeleniumLibrary

Resource          ../resource/login.robot
Test SETUP        Abrir navegador
Test TEARDOWN     Fechar navegador

### SETUP ele roda keyword antes da suite ou antes de um TESTE
### TEARDOWN ele roda keyword depois de uma suite ou um TESTE

*** variables ***
${URL}   http://www.cervelloesmhomolog.com.br/Quality_NAD
${BROWSER}   firefox

*** Test case ***
Login na ferramenta
    Acessar a página home do site
    Digitar o nome do Login "cervello" no campo de Login
    Digitar a senha "cervello01" no campo de senha
    Clicar no botão "entrar"
    Clicar no botão "continuar"

### CASO DE TESTE 02: PESQUISAR PRODUTO NÃO EXISTENTE
###    Acessar a página home do site
###    Conferir se a página home foi exibida
###    Digitar o nome do produto "ItemNãoExistente" no campo de PESQUISA
###    Clicar no botão PESQUISAR
###    Conferir mensagem de erro "No results were found for your search "Item não existente""

*** Keywords ***
