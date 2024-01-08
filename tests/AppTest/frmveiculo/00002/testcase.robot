*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro Veículos - Inclusão
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Cadastro
  Quando eu visualizar a tela: Cadastro Veículos - Atualização
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro Veículos - Inclusão

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Cadastro
  resource_mnu.Clicar No Menu Entrada | Veículo | Cadastro

Quando eu visualizar a tela: Cadastro Veículos - Atualização
  resource_frmveiculo.Acessar Tela Cadastro Veículos - Atualização

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro Veículos - Inclusão
  resource_frmveiculo.Acessar Tela Cadastro Veículos - Inclusão
