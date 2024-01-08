*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcolaboradorcomplementar.robot
Resource        ../../../../resource/app/resource_frmcolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Empregado - Ficha Complementar
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  Quando eu visualizar a tela: Cadastro de Empregado
  E clicar no botão: Ficha Complementar
  Então devo visualizar a tela: Cadastro de Empregado - Ficha Complementar

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

Quando eu visualizar a tela: Cadastro de Empregado
  resource_frmcolaborador.Acessar Tela Cadastro de Empregado

E clicar no botão: Ficha Complementar
  resource_btn.Clicar No Botão Ficha Complementar

Então devo visualizar a tela: Cadastro de Empregado - Ficha Complementar
  resource_frmcolaboradorcomplementar.Acessar Tela Cadastro de Empregado - Ficha Complementar
