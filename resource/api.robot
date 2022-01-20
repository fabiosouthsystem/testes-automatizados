*** Settings ***
Library             RequestsLibrary
Library             Collections
###Resource            ../resource/usuarioesenhaapi.robot

*** Variables ***
${HOST}      https://card-extension-emission-issuance.uat-sicredi.in/api/v1/emission/
###${APP_KEY}
###${APP_SECRET}       /repos/fabiosouthsystem/testes-API/issues


*** Keywords ***
CONECTA AO WEBSERVICE
      Create Session      codigoPlastico   ${HOST}

Realiza requisição do codigoPlastico
    [Arguments]         ${codigoPlastico}
    ${RESPOSTA}=        Get Request  codigoPlastico  /${codigoPlastico}/?
    Log                 Resposta: ${RESPOSTA.text}
    Set Test Variable   ${RESPOSTA}
Confere o status code
        [Arguments]     ${STATUS_ESPERADO}
        Should Be Equal As Strings   ${RESPOSTA.status_code}  ${STATUS_ESPERADO}
        Log             Status Code Retornado: ${RESPOSTA.status_code} -- Status Code Esperado: ${STATUS_ESPERADO}

Confere endereço do cooperativa
        [Arguments]         ${cooperativa}
        Dictionary Should Contain Item  ${RESPOSTA.json()}  cooperativa   ${cooperativa}

Confere bairro do agencia
        [Arguments]         ${agencia}
        Dictionary Should Contain Item  ${RESPOSTA.json()}  bairro   ${agencia}

Confere cidade do cpf
        [Arguments]         ${cpf}
        Dictionary Should Contain Item  ${RESPOSTA.json()}  cidade   ${cpf}

Confere UF do contaCorrente
        [Arguments]         ${contaCorrente}
        Dictionary Should Contain Item  ${RESPOSTA.json()}  uf   ${contaCorrente}

Confere nomeEmbossing
        [Arguments]         ${nomeEmbossing}
        Dictionary Should Contain Item  ${RESPOSTA.json()}  cep   ${nomeEmbossing}
