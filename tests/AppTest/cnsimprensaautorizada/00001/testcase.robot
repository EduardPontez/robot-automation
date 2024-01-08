*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsimprensaautorizada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Candidato Autorizado
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Candidato | Entrada
  Então devo visualizar a tela: Consulta de Candidato Autorizado

*** Keywords ***
Dado que eu acesse o menu: Entrada | Candidato | Entrada
  resource_mnu.Clicar No Menu Entrada | Candidato | Entrada

Então devo visualizar a tela: Consulta de Candidato Autorizado
  resource_cnsimprensaautorizada.Acessar Tela Consulta de Candidato Autorizado
