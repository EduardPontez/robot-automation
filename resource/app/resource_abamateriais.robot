*** Settings ***
Library         SeleniumLibrary
Library         ../../superutil/Custom.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.resource_mnu.Clicar No Menu Entrada | Material | Autorização
# TAB

Clicar Na Aba Autorização
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abamateriais
  ${ELEMENT}  Set Variable  id=cel1_txt
  ${TABNAME}  Set Variable  Autorização

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${TABNAME}

  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Materiais
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abamateriais
  ${ELEMENT}  Set Variable  id=cel2_txt
  ${TABNAME}  Set Variable  Materiais

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${TABNAME}

  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
