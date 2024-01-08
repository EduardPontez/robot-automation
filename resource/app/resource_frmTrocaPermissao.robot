*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Grupo de Acesso

# SCREEN
Acessar Tela Troca de Grupo de Acesso (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Troca de Grupo de Acesso (Atualização)
  ${APPNAME}  Set Variable  frmTrocaPermissao
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela Troca de Grupo de Acesso (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Troca de Grupo de Acesso (Inclusão)
  ${APPNAME}  Set Variable  frmTrocaPermissao
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}




#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Grupo de Acesso para Dias Normais
  ${ELEMENT}  Set Variable  id=cap_codiperm

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window