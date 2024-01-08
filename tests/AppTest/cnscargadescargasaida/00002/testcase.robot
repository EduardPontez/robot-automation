*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnscargadescargasaida.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Movimentação de Veículos Saída
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Saída
  Ao visualizar a tela: Movimentação de Veículos Saída - Filtro
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Movimentação de Veículos Saída

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Saída
  resource_mnu.Clicar No Menu Entrada | Veículo | Saída

Ao visualizar a tela: Movimentação de Veículos Saída - Filtro
  resource_cnscargadescargasaida.Acessar Tela Movimentação de Veículos Saída - Filtro

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Movimentação de Veículos Saída
  resource_cnscargadescargasaida.Acessar Tela Movimentação de Veículos Saída
