*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmTipoAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Tipo de Acesso (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Tipo de Acesso
  Quando eu visualizar a tela: Tipo de Acesso (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Tipo de Acesso (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Tipo de Acesso
  resource_mnu.Clicar No Menu Dispositivo | Tipo de Acesso

Então devo visualizar a tela: Tipo de Acesso (Inclusão)
  resource_frmTipoAcesso.Acessar Tela Tipo de Acesso (Inclusão)

Quando eu visualizar a tela: Tipo de Acesso (Atualização)
  resource_frmTipoAcesso.Acessar Tela Tipo de Acesso (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro
