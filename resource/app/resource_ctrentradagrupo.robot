*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Grupo

# SCREEN
Acessar Tela Entrada de Grupo de Visitante
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Entrada de Grupo de Visitante
  ${APPNAME}  Set Variable  ctrentradagrupo
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Sleep  5s
  ${HANDLES}     Get Window Handles
  Switch Window  ${HANDLES}[0]
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}

#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Crachá do Responsável
  ${ELEMENT}  Set Variable  id=cap_padicard

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Grupo de Visitante
  ${ELEMENT}  Set Variable  id=cap_grupvisi

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Editar o Registro (Grupo de Visitante)
  ${ELEMENT}  Set Variable  xpath=//*[@id="hidden_bloco_2"]/tbody/tr[2]/td/img

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window
