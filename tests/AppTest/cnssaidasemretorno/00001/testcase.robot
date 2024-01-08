*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnssaidasemretorno.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Devolução de Veículo
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Devolução
  Então devo visualizar a tela: Devolução de Veículo

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Devolução
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Devolução

Então devo visualizar a tela: Devolução de Veículo
  resource_cnssaidasemretorno.Acessar Tela Devolução de Veículo
