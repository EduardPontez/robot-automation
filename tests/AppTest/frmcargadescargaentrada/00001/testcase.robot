*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcargadescargaentrada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Movimentação de Veículos - Entrada
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Entrada
  Então devo visualizar a tela: Movimentação de Veículos - Entrada

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Entrada
  resource_mnu.Clicar No Menu Entrada | Veículo | Entrada

Então devo visualizar a tela: Movimentação de Veículos - Entrada
  resource_frmcargadescargaentrada.Acessar Tela Movimentação de Veículos - Entrada
