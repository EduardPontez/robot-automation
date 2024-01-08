*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricosituacaveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Histórico de Situações de Veículos (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Situação Veículo
  Quando eu visualizar a tela: Histórico de Situações de Veículos (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Histórico de Situações de Veículos (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Situação Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Situação Veículo

Quando eu visualizar a tela: Histórico de Situações de Veículos (Atualização)
  resource_frmhistoricosituacaveiculo.Acessar Tela Histórico de Situações de Veículos (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Histórico de Situações de Veículos (Inclusão)
  resource_frmhistoricosituacaveiculo.Acessar Tela Histórico de Situações de Veículos (Inclusão)
