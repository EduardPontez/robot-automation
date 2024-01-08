*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoAfastamento.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta Histórico de Afastamento
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Afastamento
  Então devo visualizar a tela: Consulta Histórico de Afastamento

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Afastamento
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Afastamento

Então devo visualizar a tela: Consulta Histórico de Afastamento
  resource_cnsHistoricoAfastamento.Acessar Tela Consulta Histórico de Afastamento
