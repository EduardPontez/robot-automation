*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmgrupovisitantecorp.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Grupo de Visitantes (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Grupo de Visitante
  Então devo visualizar a tela: Cadastro de Grupo de Visitantes (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Grupo de Visitante
  resource_mnu.Clicar No Menu Identificação | Visitante | Grupo de Visitante

Então devo visualizar a tela: Cadastro de Grupo de Visitantes (Atualização)
  resource_frmgrupovisitantecorp.Acessar Tela Cadastro de Grupo de Visitantes (Atualização)
