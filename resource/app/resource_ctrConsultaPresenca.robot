*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.resource_mnu.Clicar No Menu Relatórios | Consulta Impressa
# REPORT
resource_report.Navegar no Relatório: Consulta de Presenças

# SCREEN
Acessar Tela Consulta de Presenças
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Presenças
  ${APPNAME}     Set Variable  ctrConsultaPresenca
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela Status de Presença - Colaborador
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Status de Presença - Colaborador
  ${APPNAME}     Set Variable  ctrConsultaPresenca
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela Status de Presença - Visitante
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Status de Presença - Visitante
  ${APPNAME}     Set Variable  ctrConsultaPresenca
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}



#BUTTON

Clicar na box "Colaborador"
  Click Element    xpath=//*[@id="idAjaxRadio_tipo"]/table/tbody/tr/td[1]/input
  resource_btn.Clicar No Botão OK

Clicar na box "Visitante"
  Click Element    xpath=//*[@id="idAjaxRadio_tipo"]/table/tbody/tr/td[2]/input
  resource_btn.Clicar No Botão OK
