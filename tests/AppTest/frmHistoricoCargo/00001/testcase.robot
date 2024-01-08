*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoCargo.robot
Resource        ../../../../resource/app/resource_cnsHistoricoCargo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Histórico de Cargos (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Cargo
  Quando eu visualizar a tela: Consulta de Histórico de Cargos
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Histórico de Cargos (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Cargo
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Cargo

Quando eu visualizar a tela: Consulta de Histórico de Cargos
  resource_cnsHistoricoCargo.Acessar Tela Consulta de Histórico de Cargos

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Histórico de Cargos (Inclusão)
  resource_frmHistoricoCargo.Acessar Tela Histórico de Cargos (Inclusão)
