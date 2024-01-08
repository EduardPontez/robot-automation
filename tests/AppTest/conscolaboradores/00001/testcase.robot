*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conscolaboradores.robot
Resource        ../../../../resource/app/resource_frmcolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Colaboradores/Terceiros/Parceiros
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  Quando eu visualizar a tela: Cadastro de Empregado
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Colaboradores/Terceiros/Parceiros

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

Quando eu visualizar a tela: Cadastro de Empregado
  resource_frmcolaborador.Acessar Tela Cadastro de Empregado

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Colaboradores/Terceiros/Parceiros
  resource_conscolaboradores.Acessar Tela Consulta de Colaboradores/Terceiros/Parceiros
