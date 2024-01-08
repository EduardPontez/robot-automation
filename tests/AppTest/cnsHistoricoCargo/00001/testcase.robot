*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoCargo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Histórico de Cargos
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Cargo
  Então devo visualizar a tela: Consulta de Histórico de Cargos

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Cargo
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Cargo

Então devo visualizar a tela: Consulta de Histórico de Cargos
  resource_cnsHistoricoCargo.Acessar Tela Consulta de Histórico de Cargos
