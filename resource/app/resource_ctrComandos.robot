*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Comando | Acesso

# SCREEN
Acessar Tela Comandos de Acesso On-Line
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line
  ${APPNAME}     Set Variable  ctrComandos
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}



#BUTTON

Clicar na Checkbox "${APP}"
  IF  "${APP}" == "Aplicativo"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[1]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Aplicativo

  ELSE IF  "${APP}" == "Coleta"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[2]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Coleta

  ELSE IF  "${APP}" == "Comandos"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[3]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Comandos

  ELSE IF  "${APP}" == "Horário de Verão"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[4]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Horário de Verão

  ELSE IF  "${APP}" == "Listas"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[5]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Listas

  ELSE IF  "${APP}" == "Modo de Acesso"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[6]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Modo de Acesso

  ELSE IF  "${APP}" == "Pendência"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[7]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Pendência

  ELSE IF  "${APP}" == "Players"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[8]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Players

  ELSE IF  "${APP}" == "REP"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[9]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line REP

  ELSE IF  "${APP}" == "Smartcard"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[10]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Smartcard

  ELSE IF  "${APP}" == "Status"
    Click Element    xpath=//*[@id="idAjaxRadio_slctipo"]/table/tbody/tr[11]/td/input
    ${SCREENNAME}  Set Variable  Comandos de Acesso On-Line Status

  END

  ${APPNAME}     Set Variable  ctrComandos
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
