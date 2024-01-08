*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoAcesso.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Grupo de Acesso
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Grupo de Acessos
  Então devo visualizar a tela: Grupo de Acesso 

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Grupo de Acessos
  resource_mnu.Clicar No Menu Dispositivo | Grupo de Acessos

Então devo visualizar a tela: Grupo de Acesso
  resource_frmGrupoAcesso.Acessar Tela Grupo de Acesso
