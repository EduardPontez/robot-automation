*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Autorização | Entrada
# REPORT
resource_report.

# SCREEN
Acessar Tela Consulta de Agendamento Autorizado Para Entrada do Colaborador
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Agendamento Autorizado Para Entrada do Colaborador
  ${APPNAME}     Set Variable  cnsagendamentoautentradaservidor
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Switch Window  locator=NEW
  Maximize Browser Window
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}




#BUTTON
#resource_btn.
