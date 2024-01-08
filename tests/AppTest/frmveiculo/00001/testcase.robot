*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro Veículos - Atualização
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Cadastro
  Então devo visualizar a tela: Cadastro Veículos - Atualização

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Cadastro
  resource_mnu.Clicar No Menu Entrada | Veículo | Cadastro

Então devo visualizar a tela: Cadastro Veículos - Atualização
  resource_frmveiculo.Acessar Tela Cadastro Veículos - Atualização
