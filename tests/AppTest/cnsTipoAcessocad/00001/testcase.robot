*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmTipoAcesso.robot
Resource        ../../../../resource/app/resource_cnsTipoAcessocad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Tipo de Acesso
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Tipo de Acesso
  Quando eu visualizar a tela: Tipo de Acesso (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Tipo de Acesso

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Tipo de Acesso
  resource_mnu.Clicar No Menu Dispositivo | Tipo de Acesso

Quando eu visualizar a tela: Tipo de Acesso (Atualização)
  resource_frmTipoAcesso.Acessar Tela Tipo de Acesso (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Tipo de Acesso
  resource_cnsTipoAcessocad.Acessar Tela Consulta de Tipo de Acesso
