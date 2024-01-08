*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consmonitoraralarme.robot
Resource        ../../../../resource/app/resource_frmReconhecimentoAlarme.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Reconhecimento do Alarme (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Alarme - Grid
  Ao visualizar a tela: Monitorar Alarmes
  E clicar no botão "Rec."
  Então devo visualizar a tela: Reconhecimento do Alarme (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Alarme - Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Alarme - Grid

Ao visualizar a tela: Monitorar Alarmes
  resource_consmonitoraralarme.Acessar Tela Monitorar Alarmes

E clicar no botão "Rec."
  resource_btn.Clicar No Botão Rec

Então devo visualizar a tela: Reconhecimento do Alarme (Atualização)
  resource_frmReconhecimentoAlarme.Acessar Tela Reconhecimento do Alarme (Atualização)
