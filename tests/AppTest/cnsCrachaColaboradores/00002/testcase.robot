*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_ctrHistoricoCracha.robot
Resource        ../../../../resource/app/resource_cnsConsultasHistoricosCracha.robot
Resource        ../../../../resource/app/resource_cnsCrachaColaboradores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Crachás de Colaboradores
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Consulta de Histórico de Crachá", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Histórico de Crachá - Filtro
  E então clicar no botão "OK"
  Então devo visualizar a tela: Consulta em Histórico de Crachá
  Ao clicar no botão: Crachás
  Então devo visualizar a tela: Consulta de Crachás de Colaboradores (Filtro)
  Ao clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Crachás Colaboradores

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Consulta de Histórico de Crachá", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Histórico de Crachá

Então devo visualizar a tela: Consulta de Histórico de Crachá - Filtro
  resource_ctrHistoricoCracha.Acessar Tela Consulta de Histórico de Crachá - Filtro

E então clicar no botão "OK"
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Consulta em Histórico de Crachá
  resource_cnsConsultasHistoricosCracha.Acessar Tela Consulta em Histórico de Crachá

Ao clicar no botão: Crachás
  resource_cnsConsultasHistoricosCracha.Clicar no botão: Crachás

Então devo visualizar a tela: Consulta de Crachás de Colaboradores (Filtro)
  resource_cnsCrachaColaboradores.Acessar Tela Consulta de Crachás de Colaboradores (Filtro)

Ao clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Crachás Colaboradores
  resource_cnsCrachaColaboradores.Acessar Tela Consulta de Crachás Colaboradores
