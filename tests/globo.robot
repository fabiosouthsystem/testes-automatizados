*** settings ***
library  SeleniumLibrary

Resource          ../resource/globo.robot
Test SETUP        Abrir navegador
###Test TEARDOWN     Fechar navegador

### SETUP ele roda keyword antes da suite ou antes de um TESTE
### TEARDOWN ele roda keyword depois de uma suite ou um TESTE

*** variables ***
${URL}   https://www.grocerycrud.com/v1.x/demo/my_boss_is_in_a_hurry/bootstrap
${BROWSER}   google chrome

*** Test case ***
Desafio
    Acessar a página home do site
    Selecionar no campo 
    ###Selecionar valor do combo

    ###Digitar a senha "cervello01" no campo de senha
    ###Clicar no botão "entrar"
    ###Clicar no botão "continuar"
    ###Clicar no botão "novo chamado"



*** Keywords ***
