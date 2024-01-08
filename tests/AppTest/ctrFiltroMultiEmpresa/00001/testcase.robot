*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrFiltroMultiEmpresa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Filtro de Abrangência
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Filtro de Abrangência
  Então devo visualizar a tela: Filtro de Abrangência

*** Keywords ***
Dado que eu acesse o menu: Configurações | Filtro de Abrangência
  resource_mnu.Clicar No Menu Configurações | Filtro de Abrangência

Então devo visualizar a tela: Filtro de Abrangência
  resource_ctrFiltroMultiEmpresa.Acessar Tela Filtro de Abrangência
