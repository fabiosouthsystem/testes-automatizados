*** settings ***
library  SeleniumLibrary

Resource          ../resource/hyper1.robot
Test SETUP        Abrir navegador
Test TEARDOWN     Fechar navegador

### SETUP ele roda keyword antes da suite ou antes de um TESTE
### TEARDOWN ele roda keyword depois de uma suite ou um TESTE

*** variables ***
${URL}   https://www.grocerycrud.com/v1.x/demo/my_boss_is_in_a_hurry/bootstrap
${BROWSER}   google chrome

*** Test case ***
Desafio
    Acessar a página do blog
    Selecionar campo pesquisa
    Inserir texto de pesquisa
    Clicar no botão pesquisar






*** Keywords ***
