*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Filial

# SCREEN
Acessar Tela Histórico de Filial (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Histórico de Filial (Inclusão)
  ${APPNAME}  Set Variable  frmHistoricoFilial
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}



#BUTTON
#resource_btn.

Inserir Empresa
  # Inserindo Empresa 3 no campo de Nova Empresa*
  Input Text    xpath=//input[@name='codinovaempr']    3
  # Clicando fora do campo para atualizar e efetivar a seleção da empresa
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[6]/td[2]

Clicar No Botão Buscar Dados Externos Para Grupo de Cargos
  ${ELEMENT}  Set Variable  id=cap_codiestrcarg

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Novo Local
  ${ELEMENT}  Set Variable  id=cap_locaorga

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window
