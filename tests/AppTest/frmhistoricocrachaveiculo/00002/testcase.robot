*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricocrachaveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Histórico de Crachás para Veículos (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Crachá Veículo
  Quando eu visualizar a tela: Histórico de Crachás para Veículos (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Histórico de Crachás para Veículos (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Crachá Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Crachá Veículo

Quando eu visualizar a tela: Histórico de Crachás para Veículos (Atualização)
  resource_frmhistoricocrachaveiculo.Acessar Tela Histórico de Crachás para Veículos (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Histórico de Crachás para Veículos (Inclusão)
  resource_frmhistoricocrachaveiculo.Acessar Tela Histórico de Crachás para Veículos (Inclusão)
