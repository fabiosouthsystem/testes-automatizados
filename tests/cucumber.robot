*** settings ***
library  SeleniumLibrary

Resource           ../resource/tmssebrae.robot
Test SETUP         Abrir navegador
Test TEARDOWN      Fechar navegador

### SETUP ele roda keyword antes da suite ou antes de um TESTE
### TEARDOWN ele roda keyword depois de uma suite ou um TESTE

*** variables ***
${URL}   https://www.cervelloesmhomolog.com.br/Sebrae
${BROWSER}   google chrome

*** Test case ***
Novo chamado TMS
    Acessar a página
    Digitar o nome do Login
    Digitar a senha
    Clicar no botão entrar
    Clicar no botão continuar
    Abra a tela de novo chamado no TMS
    Digitar o nome do solicitante
    Digitar o nome do favorecido
    Clicar no botão avançar 1
    Clicar no botão avançar 2
    Digitar o título
    Digitar a descricão
    Clicar no botão avançar 3
    Digitar a categoria
    Clicar no botão avançar 4
    Digitar o tipo
    Clicar no botão avançar 5
    Digitar o item
    Espere a confirmacao
    Clicar no botão avançar 6
    Clicar no botão avançar 7
    Clicar no botão concluir
*** Keywords ***
