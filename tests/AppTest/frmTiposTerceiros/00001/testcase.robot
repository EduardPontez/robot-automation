*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmTiposTerceiros.robot
Resource        ../../../../resource/app/resource_cnsTiposTerceiros.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Tipos de Terceiros
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Tipo de Terceiro
  Quando eu visualizar a tela: Consulta de Tipos de Terceiros
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Tipos de Terceiros (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Tipo de Terceiro
  resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Tipo de Terceiro

Quando eu visualizar a tela: Consulta de Tipos de Terceiros
  resource_cnsTiposTerceiros.Acessar Tela Consulta de Tipos de Terceiros

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Tipos de Terceiros (Inclusão)
  resource_frmTiposTerceiros.Acessar Tela Tipos de Terceiros (Inclusão)
