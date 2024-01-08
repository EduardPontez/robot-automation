*** Settings ***
Library         SeleniumLibrary
Library         ../../superutil/Custom.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

# TAB

Clicar Na Aba Cadastro e Histórico Veículos
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaVeiculos
  ${ELEMENT}  Set Variable  id=cel1_txt
  ${TABNAME}  Set Variable  Cadastro e Histórico Veiculos

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${TABNAME}

  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Responsáveis
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaVeiculos
  ${ELEMENT}  Set Variable  id=cel2_txt
  ${TABNAME}  Set Variable  Responsáveis

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${TABNAME}

  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}


Clicar Na Aba Histórico de Responsáveis
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaVeiculos
  ${ELEMENT}  Set Variable  id=cel3_txt
  ${TABNAME}  Set Variable  Histórico de Responsáveis

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}

  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
