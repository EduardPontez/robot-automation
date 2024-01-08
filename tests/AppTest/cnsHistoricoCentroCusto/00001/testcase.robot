*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoCentroCusto.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Histórico de Centro de Custo
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Centro de Custo
  Então devo visualizar a tela: Consulta de Histórico de Centro de Custo

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Centro de Custo
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Centro de Custo

Então devo visualizar a tela: Consulta de Histórico de Centro de Custo
  resource_cnsHistoricoCentroCusto.Acessar Tela Consulta de Histórico de Centro de Custo
