*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoNotifica.robot
Resource        ../../../../resource/app/resource_cnsGrupoNotifica.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro Notificações Alarme REP
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Notificações
  Quando eu visualizar a tela: Consulta Notificações Alarme REP
  E clicar no botão: Abrir um novo registro
  Então devo ver a tela: Cadastro Notificações Alarme REP

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Notificações
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Notificações

Quando eu visualizar a tela: Consulta Notificações Alarme REP
  resource_cnsGrupoNotifica.Acessar Tela Consulta Notificações Alarme REP

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo ver a tela: Cadastro Notificações Alarme REP
  resource_frmGrupoNotifica.Acessar Tela Cadastro Notificações Alarme REP
