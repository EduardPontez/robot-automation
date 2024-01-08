*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmTipodeContrato.robot
Resource        ../../../../resource/app/resource_consTipodeContrato.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Cadastro de Tipo de Contrato
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Cadastro de Tipo de Contrato
  Quando eu visualizar a tela: Consulta de Tipo de Contrato
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Tipo de Contrato

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Cadastro de Tipo de Contrato
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Tipo de Contrato

Quando eu visualizar a tela: Consulta de Tipo de Contrato
  resource_consTipodeContrato.Acessar Tela Consulta de Tipo de Contrato

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Tipo de Contrato
  resource_frmTipodeContrato.Acessar Tela Cadastro de Tipo de Contrato
