*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcargadescargaentrada.robot
Resource        ../../../../resource/app/resource_cnscargadescargaentrada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Movimentação de Veículos Entrada (Busca)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Entrada
  Quando eu visualizar a tela: Movimentação de Veículos - Entrada
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Movimentação de Veículos Entrada (Busca)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Entrada
  resource_mnu.Clicar No Menu Entrada | Veículo | Entrada

Quando eu visualizar a tela: Movimentação de Veículos - Entrada
  resource_frmcargadescargaentrada.Acessar Tela Movimentação de Veículos - Entrada

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Movimentação de Veículos Entrada (Busca)
  resource_cnscargadescargaentrada.Acessar Tela Movimentação de Veículos Entrada (Busca)
