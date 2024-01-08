*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrMateriaisPessoa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Materiais por Pessoa
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Material por Pessoa
  Então devo visualizar a tela: Cadastro de Materiais por Pessoa

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Material por Pessoa
  resource_mnu.Clicar No Menu Entrada | Material | Material por Pessoa

Então devo visualizar a tela: Cadastro de Materiais por Pessoa
  resource_ctrMateriaisPessoa.Acessar Tela Cadastro de Materiais por Pessoa
