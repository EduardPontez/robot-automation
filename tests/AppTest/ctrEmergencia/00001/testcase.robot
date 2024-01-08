*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEmergencia.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Comandos de Emergências
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Emergência
  Então devo visualizar a tela: Comandos de Emergências

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Emergência
  resource_mnu.Clicar No Menu Controle | Comando | Emergência

Então devo visualizar a tela: Comandos de Emergências
  resource_ctrEmergencia.Acessar Tela Comandos de Emergências
