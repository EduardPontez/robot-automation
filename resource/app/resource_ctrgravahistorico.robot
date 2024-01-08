*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado


# SCREEN
Acessar Tela Empregado
  [Arguments]    ${STATUS}=ABRIR

  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Empregado
  ${APPNAME}     Set Variable  ctrgravahistorico
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  IF  '${STATUS}' == 'ABRIR'
  
    Mudar para Janela de Nível 1
    Wait Until Element is Visible  ${ELEMENT}
    Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  ELSE
      Fechar Janela Atual
  END
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela Parceiro
  [Arguments]    ${STATUS}=ABRIR

  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Parceiro
  ${APPNAME}     Set Variable  ctrgravahistorico
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  IF  '${STATUS}' == 'ABRIR'
  
    Mudar para Janela de Nível 1
    Wait Until Element is Visible  ${ELEMENT}
    Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  ELSE
      Fechar Janela Atual
  END
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela Terceiro
  [Arguments]    ${STATUS}=ABRIR

  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Terceiro
  ${APPNAME}     Set Variable  ctrgravahistorico
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  IF  '${STATUS}' == 'ABRIR'
  
    Mudar para Janela de Nível 1
    Wait Until Element is Visible  ${ELEMENT}
    Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  ELSE
      Fechar Janela Atual
  END
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}

#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Crachá
  ${ELEMENT}  Set Variable  id=cap_numtbhistocrach

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window
