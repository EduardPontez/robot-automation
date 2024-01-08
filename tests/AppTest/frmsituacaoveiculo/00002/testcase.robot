*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmsituacaoveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Situações para Veículos (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Situações
  Quando eu visualizar a tela: Situações para Veículos (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Situações para Veículos (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Situações
  resource_mnu.Clicar No Menu Veículos | Cadastro | Situações

Quando eu visualizar a tela: Situações para Veículos (Atualização)
  resource_frmsituacaoveiculo.Acessar Tela Situações para Veículos (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Situações para Veículos (Inclusão)
  resource_frmsituacaoveiculo.Acessar Tela Situações para Veículos (Inclusão)
