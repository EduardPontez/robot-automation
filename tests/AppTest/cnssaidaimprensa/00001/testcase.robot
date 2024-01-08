*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnssaidaimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Saída de Candidato
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Candidato | Saída
  Então devo visualizar a tela: Consulta de Saída de Candidato

*** Keywords ***
Dado que eu acesse o menu: Entrada | Candidato | Saída
  resource_mnu.Clicar No Menu Entrada | Candidato | Saída

Então devo visualizar a tela: Consulta de Saída de Candidato
  resource_cnssaidaimprensa.Acessar Tela Consulta de Saída de Candidato
