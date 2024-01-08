*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrFiltroMultiEmpresa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Filtro de Abrangência - Empresa
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Configurações | Filtro de Abrangência
  Ao visualizar a tela: Filtro de Abrangência
  Então devo selecionar um grupo no campo "Grupo"
  E selecionar "Empresa" no campo "Filtro"
  Então devo visualizar a tela Filtro de Abrangência - Empresa

*** Keywords ***
Dado que eu acesse o menu: Configurações | Filtro de Abrangência
  resource_mnu.Clicar No Menu Configurações | Filtro de Abrangência

Ao visualizar a tela: Filtro de Abrangência
  resource_ctrFiltroMultiEmpresa.Acessar Tela Filtro de Abrangência

Então devo selecionar um grupo no campo "Grupo"
  resource_ctrFiltroMultiEmpresa.Selecionar Grupo

E selecionar "${FILTRO}" no campo "Filtro"
  resource_ctrFiltroMultiEmpresa.Selecionar Filtro "${FILTRO}"

Então devo visualizar a tela Filtro de Abrangência - Empresa
  resource_ctrFiltroMultiEmpresa.Acessar Tela Filtro de Abrangência - Empresa
