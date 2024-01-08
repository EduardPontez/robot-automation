*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsusuarioVisita.robot
Resource        ../../../../resource/app/resource_frmGrupoAprovacaoUsuariosVisita.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Atualização de Aprovador de Solitação de Visita
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Usuário Aprovador de Solitação de Visita
  Ao visualizar a tela: Cadastro de Aprovador de Solitação de Visita
  E clicar no botão: Editar o Registro
  Então devo visualizar a tela: Atualização de Aprovador de Solitação de Visita

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Usuário Aprovador de Solitação de Visita
  resource_mnu.Clicar No Menu Configurações | Usuários | Usuário Aprovador de Solitação de Visita

Ao visualizar a tela: Cadastro de Aprovador de Solitação de Visita
  resource_cnsusuarioVisita.Acessar Tela Cadastro de Aprovador de Solitação de Visita

E clicar no botão: Editar o Registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Atualização de Aprovador de Solitação de Visita
  resource_frmGrupoAprovacaoUsuariosVisita.Acessar Tela Atualização de Aprovador de Solitação de Visita
