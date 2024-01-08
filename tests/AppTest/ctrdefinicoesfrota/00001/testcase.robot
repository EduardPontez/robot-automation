*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrdefinicoesfrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Definições de Frota
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Definições
  Então devo visualizar a tela: Definições de Frota

*** Keywords ***
Dado que eu acesse o menu: Veículos | Definições
  resource_mnu.Clicar No Menu Veículos | Definições

Então devo visualizar a tela: Definições de Frota
  resource_ctrdefinicoesfrota.Acessar Tela Definições de Frota
