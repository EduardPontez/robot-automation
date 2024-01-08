*** Settings ***
Library         SeleniumLibrary
Library         ../../superutil/Custom.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Empresa

# TAB

Clicar Na Aba Cadastro
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaempresa
  ${ELEMENT}  Set Variable  id=cel1_txt
  ${TABNAME}  Set Variable  Cadastro

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${TABNAME}

  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Organograma
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaempresa
  ${ELEMENT}  Set Variable  id=cel2_txt
  ${TABNAME}  Set Variable  Organograma

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${TABNAME}

  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}


Clicar Na Aba Cargos
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaempresa
  ${ELEMENT}  Set Variable  id=cel3_txt
  ${TABNAME}  Set Variable  Cargos

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${TABNAME}

  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
