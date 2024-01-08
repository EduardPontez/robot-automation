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
  Quando eu visualizar a tela: Histórico de Perfil (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Histórico de Perfil (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Histórico de Perfil
  resource_mnu.Clicar No Menu Configurações | Usuários | Histórico de Perfil

Quando eu visualizar a tela: Histórico de Perfil (Atualização)
  resource_frmHistoricoPerfil.Acessar Tela Histórico de Perfil (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Histórico de Perfil (Inclusão)
  resource_frmHistoricoPerfil.Acessar Tela Histórico de Perfil (Inclusão)
