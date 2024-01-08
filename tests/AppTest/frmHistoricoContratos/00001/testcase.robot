*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoContratos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Histórico de Contratos (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Contrato
  Então devo visualizar a tela: Histórico de Contratos (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Contrato
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Contrato

Então devo visualizar a tela: Histórico de Contratos (Atualização)
  resource_frmHistoricoContratos.Acessar Tela Histórico de Contratos (Atualização)
