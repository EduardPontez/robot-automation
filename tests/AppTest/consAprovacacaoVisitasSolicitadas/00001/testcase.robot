*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consAprovacacaoVisitasSolicitadas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Aprovar Solicitação de Visita
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Aprovar Solicitação de Visita
  Então devo ver a tela: Aprovar Solicitação de Visita


*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Aprovar Solicitação de Visita
  resource_mnu.Clicar No Menu Identificação | Visitante | Aprovar Solicitação de Visita

Então devo ver a tela: Aprovar Solicitação de Visita
  resource_consAprovacacaoVisitasSolicitadas.Acessar Tela Aprovar Solicitação de Visita
