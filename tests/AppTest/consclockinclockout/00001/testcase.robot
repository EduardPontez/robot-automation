*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_consrelclockinclockout.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_consclockinclockout.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Detalhe ClockIn ClockOut
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "ClockIn ClockOut", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: ClockIn ClockOut
  Ao clicar no botão: Detalhe
  Então devo visualizar a tela: Detalhe ClockIn ClockOut

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "ClockIn ClockOut", e clicar em Pesquisar
  resource_report.Navegar no Relatório: ClockIn ClockOut

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: ClockIn ClockOut
  resource_consrelclockinclockout.Acessar Tela ClockIn ClockOut

Ao clicar no botão: Detalhe
  resource_btn.Clicar No Botão Detalhe

Então devo visualizar a tela: Detalhe ClockIn ClockOut
  resource_consclockinclockout.Acessar Tela Detalhe ClockIn ClockOut
