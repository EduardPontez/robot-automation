*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Cadastro

# SCREEN
Acessar Tela Consulta de Multas (Busca Externa)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Multas
  ${APPNAME}     Set Variable  cnsmultascap
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}




#BUTTON
#resource_btn.
