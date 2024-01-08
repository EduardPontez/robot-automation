*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmEstacionamento.robot
Resource        ../../../../resource/app/resource_cnsEstacionamento.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Estacionamento
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Estacionamento | Cadastro de Estacionamentos
  Quando eu visualizar a tela: Consulta de Estacionamento
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Estacionamento

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Estacionamento | Cadastro de Estacionamentos
  resource_mnu.Clicar No Menu Estrutura | Empresa | Estacionamento | Cadastro de Estacionamentos

Quando eu visualizar a tela: Consulta de Estacionamento
  resource_cnsEstacionamento.Acessar Tela Consulta de Estacionamento

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Estacionamento
  resource_frmEstacionamento.Acessar Tela Cadastro de Estacionamento
