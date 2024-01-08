*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGruposColetores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Grupo de Codins (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de Codin
  Então devo visualizar a tela: Grupo de Codins (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de Codin
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de Codin

Então devo visualizar a tela: Grupo de Codins (Atualização)
  resource_frmGruposColetores.Acessar Tela Grupo de Codins (Atualização)
