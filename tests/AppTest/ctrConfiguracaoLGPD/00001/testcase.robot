*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracaoLGPD.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela LGPD - Configurações de Dados Sensíveis
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | LGPD - Configurações de Dados Sensíveis
  Então devo visualizar a tela: LGPD - Configurações de Dados Sensíveis

*** Keywords ***
Dado que eu acesse o menu: Configurações | LGPD - Configurações de Dados Sensíveis
  resource_mnu.Clicar No Menu Configurações | LGPD - Configurações de Dados Sensíveis

Então devo visualizar a tela: LGPD - Configurações de Dados Sensíveis
  resource_ctrConfiguracaoLGPD.Acessar Tela LGPD - Configurações de Dados Sensíveis
