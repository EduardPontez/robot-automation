*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmferiado.robot
Resource        ../../../../resource/app/resource_consferiado.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Situações (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Feriado
  Quando eu visualizar a tela: Consulta de Feriados
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Grupos de Feriados (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Feriado
  resource_mnu.Clicar No Menu Estrutura | Feriado

Quando eu visualizar a tela: Consulta de Feriados
  resource_consferiado.Acessar Tela Consulta de Feriados

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Grupos de Feriados (Inclusão)
  resource_frmferiado.Acessar Tela Cadastro de Grupos de Feriados (Inclusão)
