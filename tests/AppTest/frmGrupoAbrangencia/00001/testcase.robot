*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoAbrangencia.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Grupos de Abrangência
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Cadastro de Grupos de Abrangência
  Então devo visualizar a tela: Cadastro de Grupos de Abrangência

*** Keywords ***
Dado que eu acesse o menu: Configurações | Cadastro de Grupos de Abrangência
  resource_mnu.Clicar No Menu Configurações | Cadastro de Grupos de Abrangência

Então devo visualizar a tela: Cadastro de Grupos de Abrangência
  resource_frmGrupoAbrangencia.Acessar Tela Cadastro de Grupos de Abrangência
