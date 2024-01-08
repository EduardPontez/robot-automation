*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrpronturario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar a tela: Prontuário do Veículo.

*** Test Cases ***

Testcase: Acessar Tela Prontuário do Veículo - Resultado
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Veículos | Prontuário de Veículos
  Ao visualizar a tela: Prontuário do Veículo
  Então devo preencher o campo "Veículo"
  E clicar no botão: Mostrar
  Então devo visualizar o resultado da pesquisa

*** Keywords ***
Dado que eu acesse o menu: Veículos | Prontuário de Veículos
  resource_mnu.Clicar No Menu Veículos | Prontuário de Veículos

Ao visualizar a tela: Prontuário do Veículo
  resource_ctrpronturario.Acessar Tela Prontuário do Veículo

Então devo preencher o campo "Veículo"
  resource_ctrpronturario.Preencher campo Veículo

E clicar no botão: Mostrar
  resource_btn.Clicar No Botão Mostrar

Então devo visualizar o resultado da pesquisa
  resource_ctrpronturario.Acessar Tela Prontuário do Veículo - Resultado
