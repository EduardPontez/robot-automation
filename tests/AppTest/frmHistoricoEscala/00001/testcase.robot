*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoEscala.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Histórico de Escalas (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Escala
  Então devo visualizar a tela: Histórico de Escalas (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Escala
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Escala

Então devo visualizar a tela: Histórico de Escalas (Atualização)
  resource_frmHistoricoEscala.Acessar Tela Histórico de Escalas (Atualização)
