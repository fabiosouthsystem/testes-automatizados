*** Settings ***
library  SeleniumLibrary

*** variables ***
${BROWSER}   google chrome
${URL}   http://www.cervelloesmhomolog.com.br/Quality_NAD/Atendimento/Home



*** Keywords ***
#### setup e teardown
Abrir navegador
    Open Browser    http://www.cervelloesmhomolog.com.br/Quality_NAD/Atendimento/Home  google chrome

Fechar navegador
    ##Close Browser

#### passo-a-passo
Acessar a página home do site
    Go To    http://www.cervelloesmhomolog.com.br/Quality_NAD/Atendimento/Home
    Digitar o nome do Login "${LOGIN}" no campo de Login
        Input Text    id=login    ${LOGIN}
    Digitar a senha "${SENHA}" no campo de senha
        Input Text    id=senha    ${SENHA}
    Clicar no botão "entrar"
        Click Element    id=frmLogin
    Clicar no botão "continuar"
        Click Element   id=frmLogin

Clicar no botão "novo chamado"
        Click Button    name=btnNovoChamado
##Clicar no botão "novo chamado"
    ###Clicar no botão continuar
    ###    Click Button   name=continuar
