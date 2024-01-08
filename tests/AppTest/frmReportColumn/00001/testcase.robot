*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsReport.robot
Resource        ../../../../resource/app/resource_frmReport.robot
Resource        ../../../../resource/app/resource_frmReportColumn.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Modelo de Relatório para Processo Automático - Colunas
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Processo | Layout de Relatório
  Quando eu visualizar a tela: Modelo de Relatório para Processo Automático
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Modelo de Relatório para Processo Automático - Consulta
  E clicar no botão: Editar o registro
  Então devo visualizar a tela: Modelo de Relatório para Processo Automático - Alteração
  Ao clicar no botão: Colunas
  Então devo visualizar a tela: Modelo de Relatório para Processo Automático - Colunas

*** Keywords ***
Dado que eu acesse o menu: Processo | Layout de Relatório
  resource_mnu.Clicar No Menu Processo | Layout de Relatório

Quando eu visualizar a tela: Modelo de Relatório para Processo Automático
  resource_cnsReport.Acessar Tela Modelo de Relatório para Processo Automático

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Modelo de Relatório para Processo Automático - Consulta
  resource_cnsReport.Acessar Tela Modelo de Relatório para Processo Automático - Consulta

E clicar no botão: Editar o registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Modelo de Relatório para Processo Automático - Alteração
  resource_frmReport.Acessar Tela Modelo de Relatório para Processo Automático - Alteração

Ao clicar no botão: Colunas
  resource_btn.Clicar No Botão Colunas

Então devo visualizar a tela: Modelo de Relatório para Processo Automático - Colunas
  resource_frmReportColumn.Acessar Tela Modelo de Relatório para Processo Automático - Colunas
