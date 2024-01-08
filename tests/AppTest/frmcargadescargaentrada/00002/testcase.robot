*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcargadescargaentrada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Movimentação de Veículos - Cadastro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Entrada
  Quando eu visualizar a tela: Movimentação de Veículos - Entrada
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Movimentação de Veículos - Cadastro

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Entrada
  resource_mnu.Clicar No Menu Entrada | Veículo | Entrada

Quando eu visualizar a tela: Movimentação de Veículos - Entrada
  resource_frmcargadescargaentrada.Acessar Tela Movimentação de Veículos - Entrada

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Movimentação de Veículos - Cadastro
  resource_frmcargadescargaentrada.Acessar Tela Movimentação de Veículos - Cadastro
