*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricolocalveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Histórico de Locais para Veículos (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Local Veículo
  Então devo visualizar a tela: Histórico de Locais para Veículos (Atualização)
  Ao clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Histórico de Locais para Veículos (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Local Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Local Veículo

Então devo visualizar a tela: Histórico de Locais para Veículos (Atualização)
  resource_frmhistoricolocalveiculo.Acessar Tela Histórico de Locais para Veículos (Atualização)

Ao clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Histórico de Locais para Veículos (Inclusão)
  resource_frmhistoricolocalveiculo.Acessar Tela Histórico de Locais para Veículos (Inclusão)
