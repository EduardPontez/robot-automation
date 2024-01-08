*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoCentroCusto.robot
Resource        ../../../../resource/app/resource_cnsHistoricoCentroCusto.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Histórico de Centro de Custo (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Centro de Custo
  Quando eu visualizar a tela: Consulta de Histórico de Centro de Custo
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Histórico de Centro de Custo (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Centro de Custo
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Centro de Custo

Quando eu visualizar a tela: Consulta de Histórico de Centro de Custo
  resource_cnsHistoricoCentroCusto.Acessar Tela Consulta de Histórico de Centro de Custo

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Histórico de Centro de Custo (Inclusão)
  resource_frmHistoricoCentroCusto.Acessar Tela Histórico de Centro de Custo (Inclusão)
