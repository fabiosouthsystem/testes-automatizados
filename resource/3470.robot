*** Settings ***
library  SeleniumLibrary

*** variables ***
${BROWSER}   google chrome
${URL}   https://portal-aplicacoes.dev-sicredi.in/


*** Keywords ***
#### setup e teardown
Abrir navegador
    Open Browser    https://portal-aplicacoes.dev-sicredi.in/   google chrome

Fechar navegador
    Close Browser

#### passo-a-passo
Dado que estou logado com a visão de Gerente de negócios ou assistente administrativo da cooperativa
    ###Title Should Be   Sicredi
    ###Wait Until Page Contains    Home - Sicredi     30
    Go To    https://api.dev-sicredi.in/auth/realms/employee/protocol/openid-connect/auth?scope=openid&nonce=N0.35556489013954251638387638520&client_id=sicredi-public&redirect_uri=https%3A%2F%2Fportal-aplicacoes.dev-sicredi.in%2F&response_type=code&code_challenge=m1Rc_6K8KlJT8kqSXoMSWud_jpYQHbIbTlBQ_i4L-SM&code_challenge_method=S256&state=16383876385200.41585082515382930.21943724591697378&client_secret=
    Input Text    xpath=//input[@id='input-54KY4Z_vsSt5IsCf4UaeC']    rsilva_fabio
    ###Input Text  xpath=//input[@id='input-54KY4Z_vsSt5IsCf4UaeC']    rsilva_fabio

    ###Input Text  id=input-LNq2YLe-ptzWyBiLIQNme    teste123
    Click Element  xpath=//input[@id='input-54KY4Z_vsSt5IsCf4UaeC']    teste123
Quando acessar a consulta no Portal de Aplicações na opção de Entregas cartões e cartas senhas na cooperativa
    Go To    https://portal-aplicacoes.dev-sicredi.in/
    click element   xpath=//div[@id='root']/main/div[3]/div/section[2]/div/a[5]/h3
E puder selecionar a cooperativa
    Input Text    xpath=//div[@id='root']/main/div/div/div[5]/div/input
Então deverá ser possível consultar as cartas senhas e seus status que estão na agência para retirada dos associados
    Input Text   xpath=//div[@id='root']/main/div/div/div[7]/button
