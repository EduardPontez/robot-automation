*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsReacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Atualizar Consulta de Reações
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Alarme
  Então devo ver a tela: Atualizar Consulta de Reações

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Reação de Alarme

Então devo ver a tela: Atualizar Consulta de Reações
  resource_cnsReacoes.Acessar Tela Consulta de Reações
