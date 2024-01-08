*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Benefício | Histórico

# SCREEN
Acessar Tela Baixa Coletiva de Históricos
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Baixa Coletiva de Históricos
  ${APPNAME}  Set Variable  ctrselecaocolbaixahistbeneficios
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}




#BUTTON
#resource_btn.

Inserir Empresa
  Select From List By Label  name=empresa  HOTEL PORTAL DO SOL LTDA

Inserir Benefício
  Select From List By Label  name=beneficio  Cesta de Natal

Inserir Data Exclusão
  Input Text  name=data  01/02/2021
