*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***

${COL_CODIGO}     xpath=//*[@id='tit_consestruturaorganograma#?#1']/td[2]
${COL_DESCRICAO}  xpath=//*[@id='tit_consestruturaorganograma#?#1']/td[3]
${TXT_CODIGO}     name=codiorgaloca
${TXT_DESCRICAO}  name=nomeorga

*** Keywords ***

# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Organograma

# SCREEN

Acessar Tela Estrutura Organograma (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Estrutura Organograma (Inclusão)
  ${APPNAME}     Set Variable  frmestruturaorganograma
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}


Acessar Tela Estrutura Organograma (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Estrutura Organograma (Atualização)
  ${APPNAME}     Set Variable  frmestruturaorganograma
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}



#BUTTON

resource_btn.Clicar No Botão Abrir Um Novo Registro
resource_btn.Clicar No Botão Retornar Ao Início
resource_btn.Clicar No Botão Retornar Um Registro
resource_btn.Clicar No Botão Avançar Para o Próximo Registro
resource_btn.Clicar No Botão Avançar Para o Final
resource_btn.Clicar No Botão Alterar o Registro
resource_btn.Clicar No Botão Apagar
resource_btn.Clicar No Botão Ajuda
resource_btn.Clicar no botão Local
resource_btn.Clicar No Botão Voltar

#LABEL
Verificar Existência Da Coluna Código
  Wait Until Element is Visible  ${COL_CODIGO}
  Element Text Should Be  ${COL_CODIGO}  Código
Verificar Existência Da Coluna Descrição
  Wait Until Element is Visible  ${COL_DESCRICAO}
  Element Text Should Be  ${COL_DESCRICAO}  Descrição


#FIELD
Setar Campo Descrição "${DESCRIÇAO}"
  Input Text  name=nomeorga  ${DESCRIÇAO}



#ALERT
Verificar Alerta Descrição Faltando
  ${message} =	Handle Alert
