*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmCamerasGrupos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Cameras por Grupo - Consulta
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Grupo de Cameras | Cadastro de Cameras por Grupo
  Então devo visualizar a tela: Cadastro de Cameras por Grupo - Consulta

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Grupo de Cameras | Cadastro de Cameras por Grupo
  resource_mnu.Clicar No Menu Dispositivo | Grupo de Cameras | Cadastro de Cameras por Grupo

Então devo visualizar a tela: Cadastro de Cameras por Grupo - Consulta
  resource_frmCamerasGrupos.Acessar Tela Cadastro de Cameras por Grupo - Consulta
