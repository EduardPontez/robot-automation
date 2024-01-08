*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Idioma

# SCREEN
Acessar Tela Opções Aplicação
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Opções Aplicação
  ${APPNAME}     Set Variable  ctr_escolhaopcao
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Sleep  5s
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}




#BUTTON
#resource_btn.
