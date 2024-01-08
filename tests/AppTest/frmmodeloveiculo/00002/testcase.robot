*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmodeloveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Modelos de Veículos (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Modelos
  Quando eu visualizar a tela: Modelos de Veículos (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Modelos de Veículos (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Modelos
  resource_mnu.Clicar No Menu Veículos | Cadastro | Modelos

Quando eu visualizar a tela: Modelos de Veículos (Atualização)
  resource_frmmodeloveiculo.Acessar Tela Modelos de Veículos (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Modelos de Veículos (Inclusão)
  resource_frmmodeloveiculo.Acessar Tela Modelos de Veículos (Inclusão)
