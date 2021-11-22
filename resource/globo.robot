*** Settings ***
library  SeleniumLibrary

*** variables ***
${BROWSER}   google chrome
${URL}   https://www.grocerycrud.com/v1.x/demo/my_boss_is_in_a_hurry/bootstrap



*** Keywords ***
#### setup e teardown
Abrir navegador
    Open Browser    https://www.grocerycrud.com/v1.x/demo/my_boss_is_in_a_hurry/bootstrap  google chrome

Fechar navegador
    Close Browser

#### passo-a-passo
Acessar a página home do site
    Go To    https://www.grocerycrud.com/v1.x/demo/my_boss_is_in_a_hurry/bootstrap
Selecionar no campo
    Click Element       xpath=//*[@id="switch-version-select"]/option[4]
##Selecionar valor do combo
  ##  Select From List By Value        xpath=//*[@id="switch-version-select"]/option[4]
    ###Digitar a senha "${SENHA}" no campo de senha
      ###  Input Text    id=senha    ${SENHA}
    ###Clicar no botão "entrar"
      ###  Click Element    id=frmLogin
    ###Clicar no botão "continuar"
      ###  Click Element   id=frmLogin

###Clicar no botão "novo chamado"
  ###      Click Button    name=btnNovoChamado
##Clicar no botão "novo chamado"
    ###Clicar no botão continuar
    ###    Click Button   name=continuar
