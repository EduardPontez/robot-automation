*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTipoRefei.robot
Resource        ../../../../resource/app/resource_frmTipoRefeicao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Tipo de Refeição
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Cadastro de Tipo de Refeição
  Quando eu visualizar a tela: Consulta de Tipo de Refeição
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Tipo de Refeição

*** Keywords ***
Dado que eu acesse o menu: Configurações | Cadastro de Tipo de Refeição
  resource_mnu.Clicar No Menu Configurações | Cadastro de Tipo de Refeição

Quando eu visualizar a tela: Consulta de Tipo de Refeição
  resource_cnsTipoRefei.Acessar Tela Consulta de Tipo de Refeição

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Tipo de Refeição
  resource_frmTipoRefeicao.Acessar Tela Cadastro de Tipo de Refeição
