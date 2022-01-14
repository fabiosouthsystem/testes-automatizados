*** settings ***
library  SeleniumLibrary

Resource          ../resource/loginsicredi.robot
Test SETUP        Abrir navegador
Test TEARDOWN     Fechar navegador

### SETUP ele roda keyword antes da suite ou antes de um TESTE
### TEARDOWN ele roda keyword depois de uma suite ou um TESTE

*** variables ***
${URL}   https://portal-aplicacoes.uat-sicredi.in/
${BROWSER}   google chrome

*** Test case ***
Login na ferramenta
    Acessar a página home do site
    Digitar o nome do Login 
    Digitar a senha
    Clicar no botão entrar
  ###  Clicar no botão "continuar"

### CASO DE TESTE 02: PESQUISAR PRODUTO NÃO EXISTENTE
###    Acessar a página home do site
###    Conferir se a página home foi exibida
###    Digitar o nome do produto "ItemNãoExistente" no campo de PESQUISA
###    Clicar no botão PESQUISAR
###    Conferir mensagem de erro "No results were found for your search "Item não existente""

*** Keywords ***
