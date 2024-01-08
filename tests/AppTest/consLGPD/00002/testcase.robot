*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consLGPD.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela LGPD - Consulta
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | LGPD
  Quando eu visualizar a tela: LGPD
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: LGPD - Consulta

*** Keywords ***
Dado que eu acesse o menu: Configurações | LGPD
  resource_mnu.Clicar No Menu Configurações | LGPD

Quando eu visualizar a tela: LGPD
  resource_consLGPD.Acessar Tela LGPD

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: LGPD - Consulta
  resource_consLGPD.Acessar Tela LGPD - Consulta
