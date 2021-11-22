*** Settings ***
library  SeleniumLibrary

*** variables ***
${BROWSER}   google chrome
${URL}   https://hypeflame.blog



*** Keywords ***
Abrir navegador
    Open Browser    https://hypeflame.blog   google chrome

Fechar navegador
    Close Browser

Acessar a página do blog
    Go To    https://hypeflame.blog
Selecionar campo pesquisa
    click element       css=#header-search circle
Inserir texto de pesquisa
    input text  xpath=//div[@id='search-container']/form/label/input  possíveis para facilidade de utilização
Clicar no botão pesquisar
    click element  css=.submit circle
