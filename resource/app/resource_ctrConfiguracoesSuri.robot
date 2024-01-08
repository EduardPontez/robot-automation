*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configurações Gerais Do Sistema

# SCREEN
Acessar Tela Configurações Gerais Do Sistema
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Configurações Gerais Do Sistema
  ${APPNAME}  Set Variable  ctrConfiguracoesSuri
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  Sleep  5s
  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}
  



#BUTTON
#resource_btn.
Preencher campo TCP "${TCP}"
  ${ELEMENT}  Set Variable  xpath=//*[@id="hidden_bloco_20"]/tbody/tr[7]/td[2]/input

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${TCP}