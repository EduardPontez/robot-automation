*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Material | Solicitação de Saída

# SCREEN
Acessar Tela Solicitação de Saída (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Solicitação de Saída (Atualização)
  ${APPNAME}  Set Variable  frmSolicitacaoSaida
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmSolicitacaoSaida_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela Solicitação de Saída (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Solicitação de Saída (Inclusão)
  ${APPNAME}  Set Variable  frmSolicitacaoSaida
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}



#BUTTON
#resource_btn.
