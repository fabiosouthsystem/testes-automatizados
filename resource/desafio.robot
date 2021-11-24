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
Clicar no botão
    Click element       xpath=//form[@id='gcrud-search-form']/div/div/a
Digitar name
    Input Text          xpath=//form[@id='crudForm']/div/div/input    Teste Sicredi
Digitar last name
    Input Text          xpath=//form[@id='crudForm']/div[2]/div/input    Teste
Digitar contact first name
    Input Text          xpath=//form[@id='crudForm']/div[3]/div/input    Fabio
Digitar phone
    Input Text          xpath=//form[@id='crudForm']/div[4]/div/input    51 9999-9999
Digitar address line 1
    Input Text          xpath=//form[@id='crudForm']/div[5]/div/input    Av Assis Brasil, 3970
Digitar address line 2
    Input Text          xpath=//form[@id='crudForm']/div[6]/div/input    Torre D
Digitar city
    Input Text          xpath=//form[@id='crudForm']/div[7]/div/input    Porto Alegre
Digitar state
    Input Text          xpath=//form[@id='crudForm']/div[8]/div/input    RS
Digitar postal code
    Input Text          xpath=//form[@id='crudForm']/div[9]/div/input    91000-000
Digitar country
    Input Text          xpath=//form[@id='crudForm']/div[10]/div/input    Brasil
Digitar employeer
    Input Text          xpath=//form[@id='crudForm']/div[11]/div/input    Fixter
Digitar Credit Limit
    Input Text          xpath=//form[@id='crudForm']/div[12]/div/input    200
Clicar no botão salvar
    Click element       id=form-button-save

Validar mensagem
  Set Test Message      xpath=//div[@id='report-success']/p/font/font
