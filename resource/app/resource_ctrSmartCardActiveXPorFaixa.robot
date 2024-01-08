*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Crachá | Gravação por Faixa

# SCREEN
Acessar Tela Gravação de Crachá Por Faixa
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Gravação de Crachá Por Faixa
  ${APPNAME}     Set Variable  ctrSmartCardActiveXPorFaixa
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  6s
  ${HANDLES}     Get Window Handles
  Switch Window  ${HANDLES}[1]
  Maximize Browser Window

  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}




#BUTTON
#resource_btn.
