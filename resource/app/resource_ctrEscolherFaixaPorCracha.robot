*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Crachá | Gravação por Faixa

# SCREEN
Acessar Tela Gravação de Crachá Por Faixa
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Gravação de Crachá Por Faixa
  ${APPNAME}  Set Variable  ctrEscolherFaixaPorCracha
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}




#BUTTON
#resource_btn.

Inserir Faixa Inicial
  Input Text  name=faixa_de  1

Inserir Faixa Final
  Input Text  name=faixa_ate  10

Selecionar Tipo de Crachá
  Select From List By Label  name=cadastro_cracha  Empregado
