*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsColetorescad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar a tela: Consulta de Codins.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Codins
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Dispositivo | Codin | Cadastro de Codin
  Então devo ver a tela: Consulta de Codins
  
*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Cadastro de Codin
  resource_mnu.Clicar No Menu Dispositivo | Codin | Cadastro de Codin

Então devo ver a tela: Consulta de Codins
  resource_cnsColetorescad.Acessar Tela Consulta de Codins
