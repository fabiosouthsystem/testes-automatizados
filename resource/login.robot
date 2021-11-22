*** Settings ***
library  SeleniumLibrary

*** variables ***
${BROWSER}   firefox
${URL}   http://www.cervelloesmhomolog.com.br/Quality_NAD



*** Keywords ***
#### setup e teardown
Abrir navegador
    Open Browser    http://www.cervelloesmhomolog.com.br/Quality_NAD  firefox

Fechar navegador
    Close Browser

#### passo-a-passo
Acessar a página home do site
    Go To    http://www.cervelloesmhomolog.com.br/Quality_NAD
    Title Should Be   Cervello
Digitar o nome do Login "${LOGIN}" no campo de Login
    Input Text    id=login    ${LOGIN}
Digitar a senha "${SENHA}" no campo de senha
    Input Text    id=senha    ${SENHA}
Clicar no botão "entrar"
    Click Element     id=frmLogin
Clicar no botão "continuar"
    Click Element   id=frmLogin
