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
resource_report.Navegar no Relatório: Consulta Saldo de Benefícios nos Coletores

# SCREEN
Acessar Tela Consulta Saldo de Benefícios nos Coletores
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta Saldo de Benefícios nos Coletores
  ${APPNAME}     Set Variable  ctrselecaosaldobeneficios
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}

#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Benefícios
  ${ELEMENT}  Set Variable  id=cap_beneficio

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Codin
  ${ELEMENT}  Set Variable  id=cap_coletores

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window


Inserir Data Inicial
  Input Text    name=dataini    01/02/2020

Inserir Data Final
  Input Text    name=datafim    05/02/2020
