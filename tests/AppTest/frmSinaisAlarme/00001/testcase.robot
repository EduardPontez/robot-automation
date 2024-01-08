*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmSinaisAlarme.robot
Resource        ../../../../resource/app/resource_cnsSinaisAlarme.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Sinais de Alarme (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Sinal de Alarme
  Quando eu visualizar a tela: Consulta de Sinais de Alarme
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Sinais de Alarme (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Sinal de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Sinal de Alarme

Quando eu visualizar a tela: Consulta de Sinais de Alarme
  resource_cnsSinaisAlarme.Acessar Tela Consulta de Sinais de Alarme

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Sinais de Alarme (Inclusão)
  resource_frmSinaisAlarme.Acessar Tela Sinais de Alarme (Inclusão)
