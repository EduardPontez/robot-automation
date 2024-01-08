*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmusuario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Cadastro de Usuários (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Usuário
  Quando eu visualizar a tela: Cadastro de Usuários (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Usuários (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Usuário
  resource_mnu.Clicar No Menu Configurações | Usuários | Usuário

Quando eu visualizar a tela: Cadastro de Usuários (Atualização)
  resource_frmusuario.Acessar Tela Cadastro de Usuários (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Usuários (Inclusão)
  resource_frmusuario.Acessar Tela Cadastro de Usuários (Inclusão)
