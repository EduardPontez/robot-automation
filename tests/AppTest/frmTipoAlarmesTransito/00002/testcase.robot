*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmTipoAlarmesTransito.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Cadastro de Tipos de Alarmes de Trânsito
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Grupo de Cameras | Cadastro de Tipos de Alarmes de Trânsito
  Quando eu visualizar a tela: Cadastro de Tipos de Alarmes de Trânsito - Consulta
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Tipos de Alarmes de Trânsito

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Grupo de Cameras | Cadastro de Tipos de Alarmes de Trânsito
  resource_mnu.Clicar No Menu Dispositivo | Grupo de Cameras | Cadastro de Tipos de Alarmes de Trânsito

Quando eu visualizar a tela: Cadastro de Tipos de Alarmes de Trânsito - Consulta
  resource_frmTipoAlarmesTransito.Acessar Tela Cadastro de Tipos de Alarmes de Trânsito - Consulta

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Tipos de Alarmes de Trânsito
  resource_frmTipoAlarmesTransito.Acessar Tela Cadastro de Tipos de Alarmes de Trânsito
