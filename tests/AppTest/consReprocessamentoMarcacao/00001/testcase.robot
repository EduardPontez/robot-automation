*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consReprocessamentoMarcacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Reprocessamento de Marcação
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcação
  Então devo visualizar a tela: Reprocessamento de Marcação

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcação
  resource_mnu.Clicar No Menu Controle | Comando | Reprocessamento de Marcação

Então devo visualizar a tela: Reprocessamento de Marcação
  resource_consReprocessamentoMarcacao.Acessar Tela Reprocessamento de Marcação
