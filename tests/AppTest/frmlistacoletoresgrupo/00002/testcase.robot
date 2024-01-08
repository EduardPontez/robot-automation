*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_abagrupocoletor.robot
Resource        ../../../../resource/app/resource_frmlistacoletoresgrupo.robot
Resource        ../../../../resource/app/resource_frmGruposColetores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Caso de Teste: Acessar Tela Cadastro de Listas (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu Dispositivo | Codin | Grupo de Codin
  Quando eu visualizar a tela: Grupo de Codins (Atualização)
  E clicar na aba Listas
  E eu visualizar a tela: Cadastro de Listas (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Listas (Inclusão)


*** Keywords ***
Dado que eu acesse o menu Dispositivo | Codin | Grupo de Codin
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de Codin

Quando eu visualizar a tela: Grupo de Codins (Atualização)
  resource_frmGruposColetores.Acessar Tela Grupo de Codins (Atualização)

E clicar na aba Listas
  resource_abagrupocoletor.Clicar Na Aba Listas

E eu visualizar a tela: Cadastro de Listas (Atualização)
  resource_frmlistacoletoresgrupo.Acessar Tela Cadastro de Listas (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Listas (Inclusão)
  resource_frmlistacoletoresgrupo.Acessar Tela Cadastro de Listas (Inclusão)
