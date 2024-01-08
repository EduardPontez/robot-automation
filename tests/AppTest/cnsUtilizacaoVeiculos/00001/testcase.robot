*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsUtilizacaoVeiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Utilização de Veículos
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Consultas | Utilização
  Então devo visualizar a tela: Utilização de Veículos

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Consultas | Utilização
  resource_mnu.Clicar No Menu Veículos | Frota | Consultas | Utilização

Então devo visualizar a tela: Utilização de Veículos
  resource_cnsUtilizacaoVeiculos.Acessar Tela Utilização de Veículos
