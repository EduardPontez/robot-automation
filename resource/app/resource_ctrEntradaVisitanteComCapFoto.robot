*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitantes com Captura de Fotos

# SCREEN
Acessar Tela Entrada de Visitante
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Entrada de Visitante
  ${APPNAME}  Set Variable  ctrEntradaVisitanteComCapFoto
  ${ELEMENT}  Set Variable    xpath=/html/body/form[6]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "ifEntradaVisitantes"


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}




#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Crachá
  ${ELEMENT}  Set Variable  id=cap_icard

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window
