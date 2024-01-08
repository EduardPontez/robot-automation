*** Settings ***
Library   SeleniumLibrary

Library   ../superutil/settings.py
Resource  resource_utils.robot

*** Variables ***
${SERVER}     172.16.14.249
${BROWSER}    CHROME
${USERNAME}   ADMIN
${PASSWORD}   ADMIN
${LANGUAGE}   PT-BR
${MODE}       TST
${REQ}        FALSE
${TYPE}       exe
${URL}        https://${SERVER}/telematica/suricato.${TYPE}

*** Keywords ***
### Setup
Abrir navegador

  configurar ambiente  ${OUTPUT_DIR}
  ${SETTINGS}  configurar navegador  ${BROWSER}  ${MODE}

  Open Browser  ${URL}  ${BROWSER}  options=${SETTINGS}  service_log_path=_tmp\\tmp
  Run Keyword If  '${MODE}' != 'VID'  Maximize Browser Window

Acessar Suricato

  Abrir navegador

  ${TXT_USERNAME}  Set Variable  name=logiusua
  ${TXT_PASSWORD}  Set Variable  name=senhusua
  ${BTN_OK}        Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr/td[5]/input[1]

  Wait Until Element is Visible  ${TXT_USERNAME}
  Click Element  ${TXT_USERNAME}
  Input Text  ${TXT_USERNAME}  ${USERNAME}

  Wait Until Element is Visible  ${TXT_PASSWORD}
  Click Element  ${TXT_PASSWORD}
  Input Password  ${TXT_PASSWORD}  ${PASSWORD}

  Wait Until Element is Visible  ${BTN_OK}
  Click Element  ${BTN_OK}

  Sleep  2s
  Run Keyword If  '${MODE}' == 'VID'  Iniciar Captura De Gravação de Vídeo

### Teardown
Fechar navegador
  Run Keyword If  '${MODE}' == 'VID'  Encerrar Captura De Gravação de Vídeo
  Close Browser
