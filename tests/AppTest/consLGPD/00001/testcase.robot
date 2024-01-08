*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consLGPD.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela LGPD
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | LGPD
  Então devo visualizar a tela: LGPD

*** Keywords ***
Dado que eu acesse o menu: Configurações | LGPD
  resource_mnu.Clicar No Menu Configurações | LGPD

Então devo visualizar a tela: LGPD
  resource_consLGPD.Acessar Tela LGPD
