*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsFuncoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Funções
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Função
  Então devo ver a tela: Consulta de Funções


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Função
  resource_mnu.Clicar No Menu Dispositivo | Codin | Função

Então devo ver a tela: Consulta de Funções
  resource_cnsFuncoes.Acessar Tela Consulta de Funções
