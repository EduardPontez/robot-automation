*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmReacoes.robot
Resource        ../../../../resource/app/resource_cnsReacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Reações (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Alarme
  Quando eu visualizar a tela: Consulta de Reações
  E clicar no botão: Abrir um novo registro
  Então devo ver a tela: Reações (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Reação de Alarme

Quando eu visualizar a tela: Consulta de Reações
  resource_cnsReacoes.Acessar Tela Consulta de Reações

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo ver a tela: Reações (Inclusão)
  resource_frmReacoes.Acessar Tela Reações (Inclusão)
