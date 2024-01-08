*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrselecaosaldobeneficios.robot
Resource        ../../../../resource/app/resource_cnssaldobeneficioscoletores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Saldos de Benefícios dos Coletores
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta Saldo de Benefícios nos Coletores", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta Saldo de Benefícios nos Coletores
  Então devo inserir uma data no campo "Data Inicial"
  E inserir uma data no campo "Data Final"
  E então clicar no botão: OK
  Então devo visualizar a tela: Consulta de Saldos de Benefícios dos Coletores

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Consulta Saldo de Benefícios nos Coletores", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta Saldo de Benefícios nos Coletores

Então devo visualizar a tela: Consulta Saldo de Benefícios nos Coletores
  resource_ctrselecaosaldobeneficios.Acessar Tela Consulta Saldo de Benefícios nos Coletores

Então devo inserir uma data no campo "Data Inicial"
  resource_ctrselecaosaldobeneficios.Inserir Data Inicial

E inserir uma data no campo "Data Final"
  resource_ctrselecaosaldobeneficios.Inserir Data Final

E então clicar no botão: OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Consulta de Saldos de Benefícios dos Coletores
  resource_cnssaldobeneficioscoletores.Acessar Tela Consulta de Saldos de Benefícios dos Coletores
