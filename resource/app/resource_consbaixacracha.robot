*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Baixa de Crachá

# SCREEN
Acessar Tela Consulta para Realização das Baixas de Crachá Titular/Provisório
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta para Realização das Baixas de Crachá Titular e Provisório
  ${APPNAME}  Set Variable  consbaixacracha
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe
  Sleep  5s
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}




#BUTTON
#resource_btn.

Selecionar Crachá
  Click Element    xpath=//*[@id="apl_consbaixacracha#?#1"]/tbody/tr[2]/td[1]/font/a
