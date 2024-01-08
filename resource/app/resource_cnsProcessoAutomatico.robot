*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Processo | Importação
resource_mnu.Clicar No Menu Processo | Exportação
resource_mnu.Clicar No Menu Processo | Email
resource_mnu.Clicar No Menu Processo | OnLine

# SCREEN

# IMPORTAÇÃO #
Acessar Tela Processo de Importação
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo de Importação
  ${APPNAME}  Set Variable  cnsProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}
  

# EXPORTAÇÃO #
Acessar Tela Processo de Exportação
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo de Exportação
  ${APPNAME}  Set Variable  cnsProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}
  

# EMAIl #
Acessar Tela Processo de Email
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo de Email
  ${APPNAME}  Set Variable  cnsProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}
  

# ON-LINE #
Acessar Tela Processo On-Line
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo On-Line
  ${APPNAME}  Set Variable  cnsProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}
  
#BUTTON
#resource_btn.
