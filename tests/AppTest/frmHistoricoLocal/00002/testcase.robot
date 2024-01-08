*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoLocal.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar a tela: Consulta de Histórico de Local (Inclusão).

*** Test Cases ***

Testcase: Acessar Tela Consulta de Histórico de Local (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Local
  Quando eu visualizar a tela: Histórico de Local (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Histórico de Local (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Local
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Local

Quando eu visualizar a tela: Histórico de Local (Atualização)
  resource_frmHistoricoLocal.Acessar Tela Histórico de Local (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Histórico de Local (Inclusão)
  resource_frmHistoricoLocal.Acessar Tela Histórico de Local (Inclusão)
