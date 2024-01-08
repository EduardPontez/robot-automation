*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmgrupovisitantecorp.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Grupo de Visitantes (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Grupo de Visitante
  Quando eu visualizar a tela: Cadastro de Grupo de Visitantes (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Grupo de Visitantes (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Grupo de Visitante
  resource_mnu.Clicar No Menu Identificação | Visitante | Grupo de Visitante

Quando eu visualizar a tela: Cadastro de Grupo de Visitantes (Atualização)
  resource_frmgrupovisitantecorp.Acessar Tela Cadastro de Grupo de Visitantes (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Grupo de Visitantes (Inclusão)
  resource_frmgrupovisitantecorp.Acessar Tela Cadastro de Grupo de Visitantes (Inclusão)