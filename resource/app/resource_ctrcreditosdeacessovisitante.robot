*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Visitante

# SCREEN
Acessar Tela Créditos de Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Créditos de Acesso
  ${APPNAME}  Set Variable  ctrcreditosdeacessovisitante
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_ctrcreditosdeacessovisitante_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}




#BUTTON
#resource_btn.

Inserir Código do Colaborador
  Input Text  name=idvisi  5001

Inserir Data Inicial
  Click Element  name=paddatini
  Input Text  name=paddatini  15/03/2021
