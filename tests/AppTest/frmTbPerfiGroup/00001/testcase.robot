*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consPerfilGrupos.robot
Resource        ../../../../resource/app/resource_frmTbPerfiGroup.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Tipo de Biometria por Grupo de Usuário
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Tipo de Biometria por Grupo de Usuário
  Quando eu visualizar a tela: Tipo de Biometria por Grupo de Usuário
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Tipo de Biometria por Grupo de Usuário - Cadastro

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Tipo de Biometria por Grupo de Usuário
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Tipo de Biometria por Grupo de Usuário

Quando eu visualizar a tela: Tipo de Biometria por Grupo de Usuário
  resource_consPerfilGrupos.Acessar Tela Tipo de Biometria por Grupo de Usuário

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Tipo de Biometria por Grupo de Usuário - Cadastro
  resource_frmTbPerfiGroup.Acessar Tela Tipo de Biometria por Grupo de Usuário - Cadastro
