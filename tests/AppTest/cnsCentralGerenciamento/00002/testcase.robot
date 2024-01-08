*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCentralGerenciamento.robot
Resource        ../../../../resource/app/resource_frmColetores.robot
Resource        ../../../../resource/app/resource_cnsColetorescad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta do Gateway (Busca Externa) através da tela de Cadastro de Codin
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Cadastro de Codin
  Quando eu ver a tela: Consulta de Codins
  E clicar no botão: Abrir Um Novo Registro
  E eu ver a tela: Cadastro de Codins (Inclusão)
  E clicar no botão: Buscar Dados Externos para Gateway
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta do Gateway

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Cadastro de Codin
  resource_mnu.Clicar no menu Dispositivo | Codin | Cadastro de Codin

Quando eu ver a tela: Consulta de Codins
  resource_cnsColetorescad.Acessar Tela Consulta de Codins

E clicar no botão: Abrir Um Novo Registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E eu ver a tela: Cadastro de Codins (Inclusão)
  resource_frmColetores.Acessar Tela Cadastro de Codins (Inclusão)

E clicar no botão: Buscar Dados Externos para Gateway
  resource_frmColetores.Clicar No Botão Buscar Dados Externos Para Gateway

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta do Gateway
  resource_cnsCentralGerenciamento.Acessar Tela Consulta do Gateway (Busca Externa)
