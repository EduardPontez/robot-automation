*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprocessorelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Processo de Relatório (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Relatório
  Quando eu visualizar a tela: Processo de Relatório (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Processo de Relatório (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Processo | Relatório
  resource_mnu.Clicar No Menu Processo | Relatório

Quando eu visualizar a tela: Processo de Relatório (Atualização)
  resource_frmprocessorelatorio.Acessar Tela Processo de Relatório (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Processo de Relatório (Inclusão)
  resource_frmprocessorelatorio.Acessar Tela Processo de Relatório (Inclusão)
