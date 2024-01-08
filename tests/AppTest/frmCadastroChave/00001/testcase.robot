*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCadastroChave.robot
Resource        ../../../../resource/app/resource_frmCadastroChave.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Chave
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Chave | Cadastro de Chave
  Quando eu visualizar a tela: Cadastro de Chave
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Chave

*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Cadastro de Chave
  resource_mnu.Clicar No Menu Registro | Chave | Cadastro de Chave

Quando eu visualizar a tela: Cadastro de Chave
  resource_cnsCadastroChave.Acessar Tela Cadastro de Chave

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Chave
  resource_frmCadastroChave.Acessar Tela Cadastro de Chave
