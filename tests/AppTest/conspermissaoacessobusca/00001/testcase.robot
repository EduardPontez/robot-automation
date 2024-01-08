*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoAcesso.robot
Resource        ../../../../resource/app/resource_conspermissaoacessobusca.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Grupos
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Grupo de Acessos
  Quando eu visualizar a tela: Grupo de Acesso
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Grupos

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Grupo de Acessos
  resource_mnu.Clicar No Menu Dispositivo | Grupo de Acessos

Quando eu visualizar a tela: Grupo de Acesso
  resource_frmGrupoAcesso.Acessar Tela Grupo de Acesso

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Grupos
  resource_conspermissaoacessobusca.Acessar Tela Consulta de Grupos
