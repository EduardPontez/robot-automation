*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_disp_camera.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Monitoramento Câmeras
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Status de Cameras
  Então devo visualizar a tela: Monitoramento Câmeras

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Status de Cameras
  resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento de Status de Cameras

Então devo visualizar a tela: Monitoramento Câmeras
  resource_ctr_monitoramento_disp_camera.Acessar Tela Monitoramento Câmeras
