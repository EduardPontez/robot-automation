*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEstruturaCargos.robot
Resource        ../../../../resource/app/resource_frmcargos.robot
Resource        ../../../../resource/app/resource_cnscargos.robot
Resource        ../../../../resource/app/resource_frmEstruturaCargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Grupo de Cargos (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Cargo
  Quando eu visualizar a tela Cadastro de Cargos (Atualização)
  E clicar no botão Abrir Um Novo Registro
  E Visualizar a tela Cadastro de Cargos (Inclusão)
  E clicar no botão Buscar Dados Externos do campo Grupo de Cargos*
  Então devo visualizar a tela Consulta de Grupo de Cargos
  Ao clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Grupo de Cargos (Inclusão)

*** Keywords ***

Dado que eu acesse o menu: Estrutura | Empresa | Cargo
  Clicar No Menu Estrutura | Empresa | Cargo

Quando eu visualizar a tela Cadastro de Cargos (Atualização)
  resource_frmcargos.Acessar Tela Cadastro de Cargos (Atualização)

E clicar no botão Abrir Um Novo Registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E Visualizar a tela Cadastro de Cargos (Inclusão)
  resource_frmcargos.Acessar Tela Cadastro de Cargos (Inclusão)

E clicar no botão Buscar Dados Externos do campo Grupo de Cargos*
  resource_frmcargos.Clicar No Botão Buscar Dados Externos Do Campo Grupo de Cargos

Então devo visualizar a tela Consulta de Grupo de Cargos
  resource_cnsEstruturaCargos.Acessar Tela Consulta de Grupo de Cargos

Ao clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Grupo de Cargos (Inclusão)
  resource_frmEstruturaCargos.Acessar Tela Grupo de Cargos (Inclusão)
