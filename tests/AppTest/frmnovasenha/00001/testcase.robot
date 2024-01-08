*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmnovasenha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Alteração de Senha
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Alterar senha
  Então devo visualizar a tela: Alteração de Senha

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Alterar senha
  resource_mnu.Clicar No Menu Configurações | Usuários | Alterar senha

Então devo visualizar a tela: Alteração de Senha
  resource_frmnovasenha.Acessar Tela Alteração de Senha
