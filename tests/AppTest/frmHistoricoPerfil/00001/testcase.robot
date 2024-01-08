*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoPerfil.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Histórico de Perfil (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Histórico de Perfil
  Então devo visualizar a tela: Histórico de Perfil (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Histórico de Perfil
  resource_mnu.Clicar No Menu Configurações | Usuários | Histórico de Perfil

Então devo visualizar a tela: Histórico de Perfil (Atualização)
  resource_frmHistoricoPerfil.Acessar Tela Histórico de Perfil (Atualização)
