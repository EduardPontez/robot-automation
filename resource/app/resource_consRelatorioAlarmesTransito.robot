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
resource_report.Navegar no Relatório: Tipo de Alarme

# SCREEN
Acessar Tela Relatório de Tipos de Alarme - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatório de Tipos de Alarme
  ${APPNAME}     Set Variable  consRelatorioAlarmesTransito
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}

Acessar Tela Relatório de Tipos de Alarme
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatório de Tipos de Alarme
  ${APPNAME}     Set Variable  consRelatorioAlarmesTransito
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


#BUTTON
Preencher campo Data
#Primero campo
  Input Text    name=dataalartran_dia    02
  Input Text    name=dataalartran_mes    02
  Input Text    name=dataalartran_ano    2022

#Segundo campo
  Input Text    name=dataalartran_input_2_dia    02
  Input Text    name=dataalartran_input_2_mes    02
  Input Text    name=dataalartran_input_2_ano    2022

Preencher campo Hora do Alarme
  Input Text    name=horaalartran_hor       12
  Input Text    horaalartran_input_2_hor    12

Preencher campo Grupo de Camêras ${OPCAO}
  Select from List by Label  name=codigrupcame   ${OPCAO}

Preencher campo Status Alarme ${OPCAO}
  Select from List by Label  name=statalar       ${OPCAO}
