*** settings ***
library  SeleniumLibrary

Resource           ../resource/tms.robot
Test SETUP         Abrir navegador
Test TEARDOWN     Fechar navegador

### SETUP ele roda keyword antes da suite ou antes de um TESTE
### TEARDOWN ele roda keyword depois de uma suite ou um TESTE

*** variables ***
${URL}   http://www.cervelloesmhomolog.com.br/Quality_NAD/?page=aHR0cDovL3d3dy5jZXJ2ZWxsb2VzbWhvbW9sb2cuY29tLmJyL1F1YWxpdHlfTkFEL1BvcnRhbC9Ib21l
${BROWSER}   google chrome

*** Test case ***
Novo chamado TMS
    Acessar a página
    Digitar o nome do Login "cervello" no campo de Login
    Digitar a senha "cervello02" no campo de senha
    Clicar no botão "entrar"
    Clicar no botão "continuar"
    Abra a pagina de TMS
    Digitar o nome do solicitante 
    Digitar o nome do favorecido "CERVELLO - Administrador"
    Clicar no botão avançar
    Clicar no botão avançar
    Digitar o título "QA"
    Digitar a descricão "QA"
    Clicar no botão avançar
    Digitar a categoria "ACESSOS"
    Clicar no botão avançar
    Digitar o tipo "Biometria"
    Clicar no botão avançar
    Digitar o item "Bloqueio de Colaborador"
    Clicar no botão avançar
    Digitar o cliente "AENA BRASIL"
    Clicar no botão avançar
    Digitar a urgência "Normal"
    Clicar no botão avançar
    Digitar a prioridade "Normal"
    Clicar no botão avançar
    Digitar o tipo de chamado "Problema"
    Clicar no botão avançar
    Clicar no botão "concluir"
*** Keywords ***
