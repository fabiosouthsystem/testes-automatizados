*** Settings ***
library  SeleniumLibrary

*** variables ***
${BROWSER}   google chrome
${URL}   https://www.cervelloesmhomolog.com.br/Sebrae


*** Keywords ***
#### setup e teardown
Abrir navegador
         Open Browser       https://www.cervelloesmhomolog.com.br/Sebrae        google chrome
Fechar navegador
        Close Browser

Acessar a página
    Go To    https://www.cervelloesmhomolog.com.br/Sebrae
    Title Should Be   Cervello  - TMS

Digitar o nome do Login
        Input Text    xpath=//form[@id='frmLogin']/fieldset/input    cervello
Digitar a senha
        Input Text    xpath=//form[@id='frmLogin']/fieldset[2]/input    cervello02
Clicar no botão entrar
        Click Element        xpath=//form[@id='frmLogin']/button
Clicar no botão continuar
        Click element    xpath=//form[@id='frmLogin']/button

Abra a tela de novo chamado no TMS
      Go To    https://www.cervelloesmhomolog.com.br/Sebrae/Atendimento/TMS/Wizard
Digitar o nome do solicitante
        Input Text      xpath=//div[@id='dvCamposAbaUsuario']/div/div/input      Solicitante_QA
Digitar o nome do favorecido
        Input Text      xpath=//div[@id='dvCamposAbaUsuario']/div[2]/div/input   Favorecido_QA
Clicar no botão avançar 1
        Click element   xpath=//div[@id='AbaUsuario']/div/div[2]/div[2]/button
Clicar no botão avançar 2
        Click element   xpath=//div[@id='AbaUsuarioInfo']/div/div[2]/button[2]
Digitar o título
        Input Text      xpath=//div[@id='dvCamposAbaDescricao']/input       Resumo_QA
Digitar a descricão
        Input Text      xpath=//div[@id='dvCamposAbaDescricao']/textarea     Descricao_QA
Clicar no botão avançar 3
        Click Element   xpath=//div[@id='AbaDescricao']/div/div[2]/button[2]

Digitar a categoria
        Wait Until Page Contains    Categoria_QA     30
        Input Text      xpath=//div[@id='AbaProjeto']/div/div/div/div/input       Categoria_QA
Clicar no botão avançar 4
        Click Element   xpath=//div[@id='AbaProjeto']/div/div[2]/button[2]
Digitar o tipo
        Wait Until Page Contains    Tipo_QA     30
        Input Text      xpath=//div[@id='AbaTipo']/div/div/div/div/input        Tipo_QA
Clicar no botão avançar 5
        Click Element   xpath=//div[@id='AbaTipo']/div/div[2]/button[2]
Digitar o item
        Wait Until Page Contains    Item_QA     30
        Input Text      xpath=//div[@id='AbaAssunto']/div/div/div/div/input    Item_QA
        Click button    xpath=//div[@id='AbaAssunto']/div/div[2]/button[2]
###Espere a confirmacao
        ###Alert Should Be Present
Clicar no botão avançar 6
        Click button     xpath=//div[@id='AbaPrioridade']/div/div[2]/button[2]
Clicar no botão avançar 7
        Click Element    xpath=//div[@id='AbaTipoChamado']/div/div[2]/button[2]
Clicar no botão concluir
        Click Element    xpath=//div[@id='AbaConfirmacao']/div/div[2]/button[2]
