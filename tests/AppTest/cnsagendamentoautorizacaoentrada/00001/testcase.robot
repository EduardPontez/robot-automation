*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsagendamentoautorizacaoentrada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Agendamento da Autorização de Entrada do Colaborador
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Agendamento
  Então devo visualizar a tela: Consulta de Agendamento da Autorização de Entrada do Colaborador

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Agendamento 
  resource_mnu.Clicar No Menu Entrada | Autorização | Agendamento

Então devo visualizar a tela: Consulta de Agendamento da Autorização de Entrada do Colaborador
  resource_cnsagendamentoautorizacaoentrada.Acessar Tela Consulta de Agendamento da Autorização de Entrada do Colaborador
