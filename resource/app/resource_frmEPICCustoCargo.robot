*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo

# SCREEN
Acessar Tela Cadastro de EPI por Centro de Custo e Cargo (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de EPI por Centro de Custo e Cargo
  ${APPNAME}  Set Variable  frmEPICCustoCargo
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}
  
Acessar Tela Cadastro de EPI por Centro de Custo e Cargo (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de EPI por Centro de Custo e Cargo
  ${APPNAME}  Set Variable  frmEPICCustoCargo
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}



#BUTTON
#resource_btn.
