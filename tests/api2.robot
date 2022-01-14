*** Settings ***
Library             RequestsLibrary
Library             Collections
##Resource            ../resource/usuarioesenhaapi.robot

*** Variables ***
${BROWSER}   google chrome
${URL}   https://cards-issuance-password-letter.uat-sicredi.in/api/v1/password-letter/30331

*** Test Cases ***
Retornar dados



*** Keywords ***
Retornar dados
