*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsveiculocolaborador.robot
Resource        ../../../../resource/app/resource_frmcolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Veiculos por Colaborador
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Cadastro de Terceiro
  Quando eu visualizar a tela: Cadastro de Terceiro
  E clicar no botão: Veículos
  Então devo visualizar a tela: Consulta de Veiculos por Colaborador

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Cadastro de Terceiro
  resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Cadastro de Terceiro

Quando eu visualizar a tela: Cadastro de Terceiro
  resource_frmcolaborador.Acessar Tela Cadastro de Terceiro

E clicar no botão: Veículos
  resource_btn.Clicar No Botão Veículos

Então devo visualizar a tela: Consulta de Veiculos por Colaborador
  resource_cnsveiculocolaborador.Acessar Tela Consulta de Veiculos por Colaborador
