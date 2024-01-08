*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnscargadescargasaida.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Movimentação de Veículos Saída - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Saída
  Então devo visualizar a tela: Movimentação de Veículos Saída - Filtro

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Saída
  resource_mnu.Clicar No Menu Entrada | Veículo | Saída

Então devo visualizar a tela: Movimentação de Veículos Saída - Filtro
  resource_cnscargadescargasaida.Acessar Tela Movimentação de Veículos Saída - Filtro
