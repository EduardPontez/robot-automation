*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_gerserv_monitor.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Monitoramento LOG Gerenciador
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento LOG Gerenciador
  Então devo visualizar a tela: Monitoramento LOG Gerenciador

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento LOG Gerenciador
  resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento LOG Gerenciador

Então devo visualizar a tela: Monitoramento LOG Gerenciador
  resource_ctr_gerserv_monitor.Acessar Tela Monitoramento LOG Gerenciador
