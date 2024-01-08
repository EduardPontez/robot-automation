*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsLocalPrestServi.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Local de Prestação de Serviços
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Cadastro De Locais De Prestação De Serviços
  Então devo ver a tela: Consulta de Local de Prestação de Serviços


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Cadastro De Locais De Prestação De Serviços
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | Cadastro De Locais De Prestação De Serviços

Então devo ver a tela: Consulta de Local de Prestação de Serviços
  resource_cnsLocalPrestServi.Acessar Tela Consulta de Local de Prestação de Serviços
