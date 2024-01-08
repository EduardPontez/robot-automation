*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Parceiro - Inclusão
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Parceiro
  Quando eu visualizar a tela: Cadastro de Parceiro
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Parceiro - Inclusão

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Parceiro
  resource_mnu.Clicar No Menu Identificação | Colaborador | Parceiro

Quando eu visualizar a tela: Cadastro de Parceiro
  resource_frmcolaborador.Acessar Tela Cadastro de Parceiro

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Parceiro - Inclusão
  resource_frmcolaborador.Acessar Tela Cadastro de Parceiro - Inclusão
