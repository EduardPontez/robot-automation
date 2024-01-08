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
resource_report.Navegar no Relatório: Consulta de Histórico de Crachá

# SCREEN
Acessar Tela Consulta em Histórico de Crachá
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta em Histórico de Crachá
  ${APPNAME}     Set Variable  cnsConsultasHistoricosCracha
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}




#BUTTON
#resource_btn.
Clicar no botão: Crachás
  Click Element    xpath=//*[@id="apl_cnsConsultasHistoricosCracha#?#1"]/tbody/tr[2]/td[6]/font/a/font/img
