*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmCentralGerenciamento.robot
Resource        ../../../../resource/app/resource_cnsCentralGerenciamento.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Gateway (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Gateway
  Quando eu visualizar a tela: Consulta do Gateway
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Gateway (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Gateway
  resource_mnu.Clicar No Menu Dispositivo | Gateway

Quando eu visualizar a tela: Consulta do Gateway
  resource_cnsCentralGerenciamento.Acessar Tela Consulta do Gateway

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Gateway (Inclusão)
  resource_frmCentralGerenciamento.Acessar Tela Gateway (Inclusão)
