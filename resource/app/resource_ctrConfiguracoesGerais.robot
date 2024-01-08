*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Matrícula Automática

# SCREEN
Acessar Tela Matrícula Automática
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Matrícula Automática
  ${APPNAME}  Set Variable  ctrConfiguracoesGerais
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}

Acessar Tela Matrícula Automática - Auto-Incrementos Habilitados
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Matrícula Automática
  ${APPNAME}  Set Variable  ctrConfiguracoesGerais
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


#BUTTON
Ativar Auto-Incrementos
#Auto-Incremento Parceiro (Sim)
  Select from List by Label  pjocultaparceiro  Sim

#Auto-Incremento Terceiro (Sim)
  Select from List by Label  tcocultaparceiro  Sim

#Auto-Incremento Funcionário (Sim)
  Select from List by Label  fnocultaparceiro  Sim
