*** Settings ***
library  SeleniumLibrary

*** variables ***
${BROWSER}   google chrome
${URL}   https://portal-aplicacoes.uat-sicredi.in/



*** Keywords ***
#### setup e teardown
Abrir navegador
    Open Browser    https://portal-aplicacoes.uat-sicredi.in/  google chrome

Fechar navegador
    Close Browser

#### passo-a-passo
Acessar a página home do site
    Go To    https://portal-aplicacoes.uat-sicredi.in/
    ###Title Should Be   Cervello
Wait Until Page Contains    usuario
Sleep    60
Digitar o nome do Login
    Input Text    id=input-3l4dxGfh8HEoelLs1b8MP        muriel_mazuchetti
Digitar a senha
    Input Text    xpath=//input[@id='input-TxzNtlkX4TRrhzq-gnfuw']        teste123
Clicar no botão entrar
    Click Element     id=button -block -primary sc-sicredi-button sc-sicredi-button-s
###Clicar no botão "continuar"
  ###  Click Element   id=frmLogin
