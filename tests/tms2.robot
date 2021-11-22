*** settings ***
library  SeleniumLibrary

Resource          ../resource/tms.robot
Test SETUP        Abrir navegador
Test TEARDOWN     Fechar navegador

### SETUP ele roda keyword antes da suite ou antes de um TESTE
### TEARDOWN ele roda keyword depois de uma suite ou um TESTE

*** variables ***
${URL}   http://www.cervelloesmhomolog.com.br/Quality_NAD/Atendimento/Home
${BROWSER}   google chrome

*** Test case ***
Novo chamado TMS
    Acessar a página home do site
    Acessar a página home do site
    Digitar o nome do Login "cervello" no campo de Login
    Digitar a senha "cervello01" no campo de senha
    Clicar no botão "entrar"
    Clicar no botão "continuar"
    Clicar no botão "novo chamado"



*** Keywords ***
