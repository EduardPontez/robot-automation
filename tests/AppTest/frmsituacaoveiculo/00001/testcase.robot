*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmsituacaoveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Situações para Veículos (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Situações
  Então devo visualizar a tela: Situações para Veículos (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Situações
  resource_mnu.Clicar No Menu Veículos | Cadastro | Situações

Então devo visualizar a tela: Situações para Veículos (Atualização)
  resource_frmsituacaoveiculo.Acessar Tela Situações para Veículos (Atualização)
