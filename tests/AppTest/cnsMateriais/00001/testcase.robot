*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMateriais.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Materiais
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Cadastro
  Então devo visualizar a tela: Consulta de Materiais

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Cadastro
  resource_mnu.Clicar No Menu Entrada | Material | Cadastro

Então devo visualizar a tela: Consulta de Materiais
  resource_cnsMateriais.Acessar Tela Consulta de Materiais
