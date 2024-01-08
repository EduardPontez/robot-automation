*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Log Eventos Suriplayer

# SCREEN
Acessar Tela Log de Eventos do Suriplayer
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Log de Eventos do Suriplayer
  ${APPNAME}  Set Variable  cnsLogSuri
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}

Acessar Tela Log de Eventos do Suriplayer - Resultado
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Log de Eventos do Suriplayer
  ${APPNAME}  Set Variable  cnsLogSuri
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


#BUTTON

Selecionar Planta
  Select from List by Label  name=codiplan  AUG
