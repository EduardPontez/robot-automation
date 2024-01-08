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
resource_mnu.Clicar No Menu Processo | On-line

# SCREEN

# IMPORTAÇÃO #
Acessar Tela Processo Automático - Importação
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo Automático - Importação
  ${APPNAME}  Set Variable  frmProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela Processo Automático - Cadastro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo Automático - Importação
  ${APPNAME}  Set Variable  frmProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


# EXPORTAÇÃO #
Acessar Tela Processo Automático - Exportação
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo Automático - Exportação
  ${APPNAME}  Set Variable  frmProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela Processo Automático - Cadastro Exportação
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo Automático - Exportação
  ${APPNAME}  Set Variable  frmProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


# E-MAIL #
Acessar Tela Processo Automático - Email
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo Automático - Email
  ${APPNAME}  Set Variable  frmProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela Processo Automático - Cadastro Email
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo Automático - Email
  ${APPNAME}  Set Variable  frmProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


# ON-LINE #
Acessar Tela Processo Automático - On-Line
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo Automático - On-Line
  ${APPNAME}  Set Variable  frmProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element Is Visible    mnu_iframe
  Select Frame  mnu_iframe

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela Processo Automático - Cadastro On-Line
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Processo Automático - On-Line
  ${APPNAME}  Set Variable  frmProcessoAutomatico
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}

#BUTTON

Selecionar Tipo de Processo "${PROCESSO}"
  IF  "${PROCESSO}" == "Comando: Bloqueio e Desbloqueio"
    Select From List by Label    name=tipoprocon   Comando: Bloqueio e Desbloqueio
    ${SCREENNAME}  Set Variable  Processo Automático On-Line Bloqueio e Desbloqueio

  ELSE IF  "${PROCESSO}" == "Comando: Data e Hora"
    Select From List by Label    name=tipoprocon    Comando: Data e Hora
    ${SCREENNAME}  Set Variable  Processo Automático On-Line Data e Hora

  ELSE IF  "${PROCESSO}" == "Excluir Log de comandos da Tabela TbComanAcess"
    Select From List by Label    name=tipoprocon    Excluir Log de Comandos da Tabela TbComanAcess
    ${SCREENNAME}  Set Variable  Processo Automático On-Line Excluir Log Tabela TbComanAcess

  ELSE IF  "${PROCESSO}" == "Excluir Log de Pendência na Tabela LOGPEND"
    Select From List by Label    name=tipoprocon    Excluir Log de Pendência na Tabela LOGPEND
    ${SCREENNAME}  Set Variable  Processo Automático On-Line Excluir Log Tabela LOGPEND

  ELSE IF  "${PROCESSO}" == "Executar a Geração de Lista"
    Select From List by Label    name=tipoprocon    Executar a Geração de Lista
    ${SCREENNAME}  Set Variable  Processo Automático On-Line Executar a Geração de Lista

  ELSE IF  "${PROCESSO}" == "Executar Procedure/Function SGBD"
    Select From List by Label    name=tipoprocon    Executar Procedure/Function SGBD
    ${SCREENNAME}  Set Variable  Processo Automático On-Line Executar Procedure Function SGBD

  END

  ${APPNAME}  Set Variable  frmProcessoAutomatico
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
