*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsveiculocolaborador.robot
Resource        ../../../../resource/app/resource_frmcolaborador.robot
Resource        ../../../../resource/app/resource_frmveiculocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Veículo de Colaborador - Cadastro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  Quando eu visualizar a tela: Cadastro de Empregado
  E clicar no botão: Veículos
  Então devo visualizar a tela: Consulta de Veiculos por Colaborador
  Ao clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Veículo de Colaborador - Cadastro

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

Quando eu visualizar a tela: Cadastro de Empregado
  resource_frmcolaborador.Acessar Tela Cadastro de Empregado

E clicar no botão: Veículos
  resource_btn.Clicar No Botão Veículos

Então devo visualizar a tela: Consulta de Veiculos por Colaborador
  resource_cnsveiculocolaborador.Acessar Tela Consulta de Veiculos por Colaborador

Ao clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Veículo de Colaborador - Cadastro
  resource_frmveiculocolaborador.Acessar Tela Veículo de Colaborador - Cadastro
