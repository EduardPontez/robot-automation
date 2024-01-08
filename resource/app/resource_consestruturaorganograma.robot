*** Settings ***
Library         SeleniumLibrary
Library         ../../superutil/recorder/audio_player.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Organograma

# SCREEN
Acessar Tela Consulta de Estrutura de Organograma

  ${OBJ}         Set Variable  Scn
  ${SCREENNAME}  Set Variable  Consulta de Estrutura de Organograma
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  ${APPNAME}     Set Variable  consestruturaorganograma

  Wait Until Element Is Visible  mnu_iframe
  Select Frame  mnu_iframe

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}
  


Acessar Tela Consulta de Estrutura de Organograma (Filtro)

  ${OBJ}         Set Variable  Scn
  ${SCREENNAME}  Set Variable  Consulta de Estrutura de Organograma (Filtro)
  ${ELEMENT}     Set Variable  xpath=//*[contains(text(),'${SCREENNAME}')]
  ${APPNAME}     Set Variable  consestruturaorganograma

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}
  


#BUTTON
resource_btn.Clicar No Botão Editar o Registro
resource_btn.Clicar No Botão Abrir Um Novo Registro
resource_btn.Clicar No Botão Pesquisar Registros
resource_btn.Clicar No Botão Pesquisar Registros (Inferior)
resource_btn.Clicar No Botão Retornar Ao Início
resource_btn.Clicar No Botão Retornar Um Registro
resource_btn.Clicar No Botão Avançar Para o Próximo Registro
resource_btn.Clicar No Botão Avançar Para o Final
resource_btn.Clicar No Botão Limpar Dados
