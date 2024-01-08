*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | AFD

# SCREEN
Acessar Tela AFD
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  AFD
  ${APPNAME}  Set Variable  ctr_rep_coleta_afd
  ${ELEMENT}  Set Variable    xpath=/html/body/form[5]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela AFD - Empresa
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  AFD
  ${APPNAME}  Set Variable  ctr_rep_coleta_afd

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela AFD - Grupo de Rep
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  AFD
  ${APPNAME}  Set Variable  ctr_rep_coleta_afd

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V3.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


# BOX
Selecionar box Empresa
  ${SCREENNAME}  Set Variable  AFD
  ${APPNAME}  Set Variable  ctr_rep_coleta_afd
  ${ELEMENT}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/input

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element    ${ELEMENT}

Selecionar box Grupo de Rep
  ${SCREENNAME}  Set Variable  AFD
  ${APPNAME}  Set Variable  ctr_rep_coleta_afd
  ${ELEMENT}  Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/input

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element    ${ELEMENT}



#BUTTON
#resource_btn.
