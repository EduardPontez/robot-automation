*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado
resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Cadastro de Terceiro
resource_mnu.Clicar No Menu Identificação | Colaborador | Parceiro

# SCREEN

# EMPREGADO #
Acessar Tela Cadastro de Empregado
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Empregado
  ${APPNAME}  Set Variable  frmcolaborador
  ${ELEMENT}  Set Variable    xpath=/html/body/form[4]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

Acessar Tela Cadastro de Empregado - Perfil de Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Empregado - Perfil de Acesso
  ${APPNAME}  Set Variable  frmcolaboradoresacesso
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


# TERCEIRO #

Acessar Tela Cadastro de Terceiro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Terceiro
  ${APPNAME}  Set Variable  frmcolaborador
  ${ELEMENT}  Set Variable    xpath=/html/body/form[4]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

Acessar Tela Cadastro de Terceiro - Perfil de Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Terceiro - Perfil de Acesso
  ${APPNAME}  Set Variable  frmcolaboradorcomplementar
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


# PARCEIRO #

Acessar Tela Cadastro de Parceiro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Parceiro
  ${APPNAME}  Set Variable  frmcolaborador
  ${ELEMENT}  Set Variable    xpath=/html/body/form[4]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

Acessar Tela Cadastro de Parceiro - Perfil de Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Parceiro - Perfil de Acesso
  ${APPNAME}  Set Variable  frmcolaboradorcomplementar
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


#BUTTON
#resource_btn.

# EMPREGADO #
Clicar No Botão Buscar Dados Externos Para Número da Linha
  ${ELEMENT}  Set Variable  id=cap_linhonibusuar

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window
