*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consmonitoraralarme.robot
Resource        ../../../../resource/app/resource_frmTratamentoAlarme.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Tratamento do Alarme (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Alarme - Grid
  Ao visualizar a tela: Monitorar Alarmes
  E clicar no botão "Tra."
  Então devo visualizar a tela: Tratamento do Alarme (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Alarme - Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Alarme - Grid

Ao visualizar a tela: Monitorar Alarmes
  resource_consmonitoraralarme.Acessar Tela Monitorar Alarmes

E clicar no botão "Tra."
  resource_btn.Clicar No Botão Tra

Então devo visualizar a tela: Tratamento do Alarme (Inclusão)
  resource_frmTratamentoAlarme.Acessar Tela Tratamento do Alarme (Inclusão)
