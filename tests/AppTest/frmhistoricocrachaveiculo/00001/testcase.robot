*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricocrachaveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Histórico de Crachás para Veículos (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Crachá Veículo
  Então devo visualizar a tela: Histórico de Crachás para Veículos (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Crachá Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Crachá Veículo

Então devo visualizar a tela: Histórico de Crachás para Veículos (Atualização)
  resource_frmhistoricocrachaveiculo.Acessar Tela Histórico de Crachás para Veículos (Atualização)
