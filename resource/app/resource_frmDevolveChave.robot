*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
asdasdresource_mnu.Clicar No Menu Registro | Chave | Movimentação de Chave


# SCREEN
Acessar Tela Devolução de Chave
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Devolução de Chave
  ${APPNAME}     Set Variable  frmDevolveChave
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Sleep   5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}




#BUTTON
#resource_btn.
