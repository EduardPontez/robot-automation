*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Chave | Cadastro de Chave

# SCREEN
Acessar Tela Cadastro de Chave
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Chave
  ${APPNAME}  Set Variable  cnsCadastroChave
  ${ELEMENT}  Set Variable    xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]/font

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe
  Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}
  



#BUTTON
#resource_btn.
