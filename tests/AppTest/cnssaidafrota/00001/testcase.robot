*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnssaidafrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Entrega de Veículo
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Entrega
  Então devo visualizar a tela: Entrega de Veículo

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Entrega
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Entrega

Então devo visualizar a tela: Entrega de Veículo
  resource_cnssaidafrota.Acessar Tela Entrega de Veículo
