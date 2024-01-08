*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrselecaoservidoresxbeneficios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta Benefícios por Colaboradores (Resultado)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta Benefícios por Colaboradores", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta Benefícios por Colaboradores
  Então devo preencher o campo "Benefício"
  E clicar no botão: Ok
  Então verei o resultado da pesquisa

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Consulta Benefícios por Colaboradores", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta Benefícios por Colaboradores

Então devo visualizar a tela: Consulta Benefícios por Colaboradores
  resource_ctrselecaoservidoresxbeneficios.Acessar Tela Consulta Benefícios por Colaboradores

Então devo preencher o campo "Benefício"
  resource_ctrselecaoservidoresxbeneficios.Preencher campo Benefícios

E clicar no botão: Ok
  resource_btn.Clicar No Botão OK

Então verei o resultado da pesquisa
  resource_ctrselecaoservidoresxbeneficios.Acessar Tela Consulta Benefícios por Colaboradores (Resultado)
