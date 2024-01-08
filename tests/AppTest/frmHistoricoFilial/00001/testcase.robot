*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoFilial.robot
Resource        ../../../../resource/app/resource_cnsHistoricoFilial.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Histórico de Filial (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Filial
  Quando eu visualizar a tela: Consulta de Histórico de Filial
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Histórico de Filial (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Filial
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Filial

Quando eu visualizar a tela: Consulta de Histórico de Filial
  resource_cnsHistoricoFilial.Acessar Tela Consulta de Histórico de Filial

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Histórico de Filial (Inclusão)
  resource_frmHistoricoFilial.Acessar Tela Histórico de Filial (Inclusão)
