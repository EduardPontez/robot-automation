*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

# SCREEN
Acessar Tela Impressão de Relatório
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Impressão de Relatório
  ${APPNAME}     Set Variable  cnsRelatorio
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela Impressão de Relatório (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Impressão de Relatório
  ${APPNAME}     Set Variable  cnsRelatorio
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


#BUTTON
resource_btn.Clicar no botão Pesquisar Registros
resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Clicar No Campo Ver
  ${BTN_VER}  Set Variable  xpath=//*[@id="apl_cnsRelatorio#?#1"]/tbody/tr[2]/td[4]/font/a/img
  Wait Until Element is Visible   ${BTN_VER}
  Click Element    ${BTN_VER}

Setar Campo Descrição "${RELATORIO}"
  Wait Until Element is Visible   name=descrela
  Input Text  name=descrela   ${RELATORIO}

# USADO SOMENTE NO APP consrelescalaporrevesa
Clicar No Campo Ver - Segunda Opção
  ${BTN_VER}  Set Variable  xpath=//*[@id="apl_cnsRelatorio#?#1"]/tbody/tr[3]/td[4]/font/a/img
  Wait Until Element is Visible   ${BTN_VER}
  Click Element    ${BTN_VER}
