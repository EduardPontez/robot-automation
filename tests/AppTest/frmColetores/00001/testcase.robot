*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmColetores.robot
Resource        ../../../../resource/app/resource_cnsColetorescad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Codins (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Cadastro de Codin
  Quando eu visualizar a tela: Consulta de Codins
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Codins (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Cadastro de Codin
  resource_mnu.Clicar No Menu Dispositivo | Codin | Cadastro de Codin

Quando eu visualizar a tela: Consulta de Codins
  resource_cnsColetorescad.Acessar Tela Consulta de Codins

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Codins (Inclusão)
  resource_frmColetores.Acessar Tela Cadastro de Codins (Inclusão)
