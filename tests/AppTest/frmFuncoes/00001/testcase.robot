*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmFuncoes.robot
Resource        ../../../../resource/app/resource_cnsFuncoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Funções (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Função
  Quando eu visualizar a tela: Consulta de Funções
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Funções (Inclusão)


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Função
  resource_mnu.Clicar No Menu Dispositivo | Codin | Função

Quando eu visualizar a tela: Consulta de Funções
  resource_cnsFuncoes.Acessar Tela Consulta de Funções

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Funções (Inclusão)
  resource_frmFuncoes.Acessar Tela Cadastro de Funções (Inclusão)
