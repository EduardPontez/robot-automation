*** Settings ***
Library         SeleniumLibrary
Library         ../../api/data/client/person.py

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

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela Cadastro de Empregado - Inclusão
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Empregado
  ${APPNAME}  Set Variable  frmcolaborador
  ${ELEMENT}  Set Variable    xpath=/html/body/form[4]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"
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

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela Cadastro de Terceiro - Inclusão
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Terceiro
  ${APPNAME}  Set Variable  frmcolaborador
  ${ELEMENT}  Set Variable    xpath=/html/body/form[4]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"
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

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela Cadastro de Parceiro - Inclusão
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Parceiro
  ${APPNAME}  Set Variable  frmcolaborador
  ${ELEMENT}  Set Variable    xpath=/html/body/form[4]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


#BUTTON
#resource_btn.

#FIELD

Setar Campo Matrícula ${MATRICULA}

  ${ELEMENT}  Set Variable  name=codimatr

  IF  '${MATRICULA}' == 'API'
    ${MATRICULA}  Run Keyword   Matrícula
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${MATRICULA}

Setar Campo Nome ${NOME}

  ${ELEMENT}  Set Variable  name=padnome
  
  IF  '${NOME}' == 'API'
    ${NOME}  Run Keyword  Nome Completo  unidecode=True
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${NOME}

Setar Campo Apelido ${APELIDO}
  
  ${ELEMENT}  Set Variable  name=apelcola

  IF  '${APELIDO}' == 'API'
    ${APELIDO}  Run Keyword  Último Nome
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${APELIDO}


Setar Campo Data de Admissão ${DATA}

  ${ELEMENT}  Set Variable  name=dataadmi
  
  IF  '${DATA}' == 'API'
    ${DATA}  Run Keyword  Data de Contrato
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${DATA}


Setar Campo Data de Nascimento ${DATA}
  
  ${ELEMENT}  Set Variable  name=datanasc
  
  IF  '${DATA}' == 'API'
    ${DATA}  Run Keyword  Data de Nascimento
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${DATA}


Setar Campo Número do CPF ${CPF}

  ${ELEMENT}  Set Variable  name=numecpf
  
  IF  '${CPF}' == 'API'
    ${CPF}  Run Keyword  CPF
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${CPF}

Setar Campo Número do PIS ${PIS}

  ${ELEMENT}  Set Variable  name=numepis
  
  IF  '${PIS}' == 'API'
    ${PIS}  Run Keyword  PIS  mask=True
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${PIS}


Setar Lista Sexo ${SEXO}
  
  ${ELEMENT}  Set Variable  name=sexocola

  IF  '${SEXO}' == 'API'
          ${SEXO}  Run Keyword  Gênero   
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Select From List By Value      ${ELEMENT}  ${SEXO}
