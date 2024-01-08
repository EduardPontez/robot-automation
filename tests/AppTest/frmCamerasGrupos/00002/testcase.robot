*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmCamerasGrupos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Cameras por Grupo
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Grupo de Cameras | Cadastro de Cameras por Grupo
  Quando eu visualizar a tela: Cadastro de Cameras por Grupo - Consulta
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Cameras por Grupo

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Grupo de Cameras | Cadastro de Cameras por Grupo
  resource_mnu.Clicar No Menu Dispositivo | Grupo de Cameras | Cadastro de Cameras por Grupo

Quando eu visualizar a tela: Cadastro de Cameras por Grupo - Consulta
  resource_frmCamerasGrupos.Acessar Tela Cadastro de Cameras por Grupo - Consulta

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Cameras por Grupo
  resource_frmCamerasGrupos.Acessar Tela Cadastro de Cameras por Grupo
