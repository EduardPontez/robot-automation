*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrprogramacoes.robot
Resource        ../../../../resource/app/resource_cnsprogramacoes.robot
Resource        ../../../../resource/app/resource_cnsprogramacaoponte.robot
Resource        ../../../../resource/app/resource_abaprogramacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Pontes
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Programações", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Programações - Filtro
  Ao inserir uma data no campo "Data Inicial*"
  E clicar no botão OK
  Então devo visualizar a tela: Consulta de Programações
  E clicar na aba "Ponte"
  Então visualizarei a tela: Consulta de Pontes

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Consulta de Programações", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Programações

Então devo visualizar a tela: Consulta de Programações - Filtro
  resource_ctrprogramacoes.Acessar Tela Consulta de Programações - Filtro

Ao inserir uma data no campo "Data Inicial*"
  resource_ctrprogramacoes.Inserir Data

E clicar no botão OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Consulta de Programações
  resource_cnsprogramacoes.Acessar Tela Consulta de Programações

E clicar na aba "Ponte"
  resource_abaprogramacoes.Clicar Na Aba Ponte

Então visualizarei a tela: Consulta de Pontes
  resource_cnsprogramacaoponte.Acessar Tela Consulta de Pontes
