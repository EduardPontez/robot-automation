*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoFilial.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Histórico de Filial
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Filial
  Então devo visualizar a tela: Consulta de Histórico de Filial

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Filial
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Filial

Então devo visualizar a tela: Consulta de Histórico de Filial
  resource_cnsHistoricoFilial.Acessar Tela Consulta de Histórico de Filial
