*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Grupo de Cameras | Cadastros de Grupos

# SCREEN
Acessar Tela Cadastro de Grupos - Consulta
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastros de Grupos
  ${APPNAME}  Set Variable  frmGrupoCamera
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela Cadastro de Grupos
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastros de Grupos
  ${APPNAME}  Set Variable  frmGrupoCamera
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


#BUTTON
#resource_btn.
