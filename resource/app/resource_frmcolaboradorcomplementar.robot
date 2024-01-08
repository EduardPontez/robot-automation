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
Acessar Tela Cadastro de Empregado - Ficha Complementar
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Empregado - Ficha Complementar
  ${APPNAME}  Set Variable  frmcolaboradorcomplementar
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}
  

# TERCEIRO #
Acessar Tela Cadastro de Terceiro - Ficha Complementar
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Terceiro - Ficha Complementar
  ${APPNAME}  Set Variable  frmcolaboradorcomplementar
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}
  

# PARCEIRO #
Acessar Tela Cadastro de Parceiro - Ficha Complementar
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Parceiro - Ficha Complementar
  ${APPNAME}  Set Variable  frmcolaboradorcomplementar
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}
  

#BUTTON
#resource_btn.



# ============================================= FIELD ================================================
Setar Campo CEP ${VALOR}

  ${ELEMENT}  Set Variable  name=codicep

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  CEP
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}


Setar Campo Endereço ${VALOR}

  ${ELEMENT}  Set Variable  name=enderesi

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Endereço
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Campo Número do Endereço ${VALOR}

  ${ELEMENT}  Set Variable  name=numeende

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Número
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Campo Complemento ${VALOR}

  ${ELEMENT}  Set Variable  name=compende

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Complemento
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Campo Bairro ${VALOR}

  ${ELEMENT}  Set Variable  name=nomebair

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Bairro
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}


Setar Campo Cidade ${VALOR}

  ${ELEMENT}  Set Variable  name=nomecida

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Cidade
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Lista Estado ${VALOR}
  
  ${ELEMENT}  Set Variable  name=nomeesta

  IF  '${VALOR}' == 'API'
          ${VALOR}  Run Keyword  Estado   
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Select From List By Value      ${ELEMENT}  ${VALOR}



Setar Campo Celular ${VALOR}

  ${ELEMENT}  Set Variable  name=numetele

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Celular
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}


Setar Campo Email Particular ${VALOR}

  ${ELEMENT}  Set Variable  name=mailpart

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Email Particular
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Campo Email Comercial ${VALOR}

  ${ELEMENT}  Set Variable  name=mailcome

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Email Profissional
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Campo Número de Identidade ${VALOR}

  ${ELEMENT}  Set Variable  name=numecartiden

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  RG
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Campo Número da Carteira de Habilitação ${VALOR}

  ${ELEMENT}  Set Variable  name=numecarthabi

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  CNH
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Campo Nome do Pai ${VALOR}

  ${ELEMENT}  Set Variable  name=nomepai

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Nome do Pai
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}

Setar Campo Nome da Mãe ${VALOR}

  ${ELEMENT}  Set Variable  name=nomemae

  IF  '${VALOR}' == 'API'
    ${VALOR}  Run Keyword  Nome da Mãe
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VALOR}
