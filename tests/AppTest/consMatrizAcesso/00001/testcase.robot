*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consMatrizAcesso.robot
Resource        ../../../../resource/app/resource_frmMatrizAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Matriz de Acesso
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Matriz de Acesso
  Quando eu visualizar a tela: Matriz de Acesso
  E clicar no botão: Consulta
  Então devo visualizar a tela: Consulta de Matriz de Acesso

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Matriz de Acesso
  resource_mnu.Clicar No Menu Identificação | Colaborador | Matriz de Acesso

Quando eu visualizar a tela: Matriz de Acesso
  resource_frmMatrizAcesso.Acessar Tela Matriz de Acesso

E clicar no botão: Consulta
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Matriz de Acesso
  resource_consMatrizAcesso.Acessar Tela Consulta de Matriz de Acesso
