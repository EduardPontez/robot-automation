*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrMateriaisPessoa.robot
Resource        ../../../../resource/app/resource_frmMateriaisColaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Materiais por Pessoa (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Material por Pessoa
  Ao visualizar a tela: Cadastro de Materiais por Pessoa
  Então devo inserir o código do colaborador desejado
  E clicar no botão: OK
  Então devo visualizar a tela: Cadastro de Materiais por Pessoa (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Material por Pessoa
  resource_mnu.Clicar No Menu Entrada | Material | Material por Pessoa

Ao visualizar a tela: Cadastro de Materiais por Pessoa
  resource_ctrMateriaisPessoa.Acessar Tela Cadastro de Materiais por Pessoa

Então devo inserir o código do colaborador desejado
  resource_ctrMateriaisPessoa.Inserir Código do Colaborador

E clicar no botão: OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Cadastro de Materiais por Pessoa (Inclusão)
  resource_frmMateriaisColaborador.Acessar Tela Cadastro de Materiais por Pessoa (Inclusão)
