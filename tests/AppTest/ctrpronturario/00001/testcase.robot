*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrpronturario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar a tela: Prontuário do Veículo.

*** Test Cases ***

Testcase: Acessar Tela Prontuário do Veículo
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Veículos | Prontuário de Veículos
  Então devo visualizar a tela: Prontuário do Veículo

*** Keywords ***
Dado que eu acesse o menu: Veículos | Prontuário de Veículos
  resource_mnu.Clicar No Menu Veículos | Prontuário de Veículos

Então devo visualizar a tela: Prontuário do Veículo
  resource_ctrpronturario.Acessar Tela Prontuário do Veículo
