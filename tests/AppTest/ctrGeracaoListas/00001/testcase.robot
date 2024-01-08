*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrGeracaoListas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Geração de Listas
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Geração de Lista
  Então devo visualizar a tela: Geração de Listas

*** Keywords ***
Dado que eu acesse o menu: Processo | Geração de Lista
  resource_mnu.Clicar No Menu Processo | Geração de Lista

Então devo visualizar a tela: Geração de Listas
  resource_ctrGeracaoListas.Acessar Tela Geração de Listas
