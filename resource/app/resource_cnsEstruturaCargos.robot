*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Cargo

# SCREEN
Acessar Tela Consulta de Grupo de Cargos
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Grupo de Cargos
  ${APPNAME}  Set Variable  cnsEstruturaCargos
  ${ELEMENT}     Set Variable  xpath=//*[@align]//*[contains(text(),'${SCREENNAME}')]

  Switch Window  locator=NEW
  Maximize Browser Window

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}
  

Acessar Tela Consulta de Grupo de Cargos - Botão


#BUTTON
resource_btn.Clicar No Botão Avançar para o Final
resource_btn.Clicar No Botão Avançar Para o Próximo Registro
resource_btn.Clicar No Botão Retornar Um Registro
resource_btn.Clicar No Botão Retornar Ao Início
resource_btn.Clicar No Botão Editar o Registro
resource_btn.Clicar No Botão Pesquisar Registros
resource_btn.Clicar No Botão Abrir Um Novo Registro
resource_btn.Clicar No Botão Retornar a Página Anterior
