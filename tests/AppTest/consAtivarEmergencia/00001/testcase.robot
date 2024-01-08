*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consAtivarEmergencia.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Ativar Emergência
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Ativar Emergência
  Então devo visualizar a tela: Ativar Emergência

*** Keywords ***
Dado que eu acesse o menu: Controle | Ativar Emergência
  resource_mnu.Clicar No Menu Controle | Ativar Emergência

Então devo visualizar a tela: Ativar Emergência
  resource_consAtivarEmergencia.Acessar Tela Ativar Emergência
