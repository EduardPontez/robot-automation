*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTiposTerceiros.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Tipos de Terceiros
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Tipo de Terceiro
  Então devo visualizar a tela: Consulta de Tipos de Terceiros

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Tipo de Terceiro
  resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Tipo de Terceiro

Então devo visualizar a tela: Consulta de Tipos de Terceiros
  resource_cnsTiposTerceiros.Acessar Tela Consulta de Tipos de Terceiros
