*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmgrupousuario.robot
Resource        ../../../../resource/app/resource_frmFaixaAcessUsuario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Faixa de Acesso de Usuário
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Grupo de Usuário
  Quando eu visualizar a tela: Cadastro de Grupo de Usuários (Atualização)
  E clicar no botão: Faixa de Acesso
  Então devo visualizar a tela: Faixa de Acesso de Usuário

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Grupo de Usuário
  resource_mnu.Clicar No Menu Configurações | Usuários | Grupo de Usuário

Quando eu visualizar a tela: Cadastro de Grupo de Usuários (Atualização)
  resource_frmgrupousuario.Acessar Tela Cadastro de Grupo de Usuários (Atualização)

E clicar no botão: Faixa de Acesso
  resource_btn.Clicar No Botão Faixa de Acesso

Então devo visualizar a tela: Faixa de Acesso de Usuário
  resource_frmFaixaAcessUsuario.Acessar Tela Faixa de Acesso de Usuário
