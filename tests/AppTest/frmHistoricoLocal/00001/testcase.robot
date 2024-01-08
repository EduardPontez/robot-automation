*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoLocal.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Acessar a tela: Consulta de Histórico de Local (Atualização).

*** Test Cases ***

Testcase: Acessar Tela Consulta de Histórico de Local (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Local
  Então devo visualizar a tela: Histórico de Local (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Local
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Local

Então devo visualizar a tela: Histórico de Local (Atualização)
  resource_frmHistoricoLocal.Acessar Tela Histórico de Local (Atualização)
