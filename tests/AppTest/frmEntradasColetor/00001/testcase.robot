*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmColetores.robot
Resource        ../../../../resource/app/resource_cnsColetorescad.robot
Resource        ../../../../resource/app/resource_frmEntradasColetor.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Listas (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Dispositivo | Codin | Cadastro de Codin
  Quando eu visualizar a tela: Consulta de Codins
  E clicar no botão: Editar o registro
  Então devo visualizar a tela: Cadastro de Codins (Atualização)
  Ao clicar no botão: Entradas - Faixas Horárias
  Então devo visualizar a tela: Listas (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Cadastro de Codin
  resource_mnu.Clicar No Menu Dispositivo | Codin | Cadastro de Codin

Quando eu visualizar a tela: Consulta de Codins
  resource_cnsColetorescad.Acessar Tela Consulta de Codins

E clicar no botão: Editar o registro
  resource_btn.Clicar No Botão Editar o registro

Então devo visualizar a tela: Cadastro de Codins (Atualização)
  resource_frmColetores.Acessar Tela Cadastro de Codins (Atualização)

Ao clicar no botão: Entradas - Faixas Horárias
  resource_btn.Clicar No Botão Entradas - Faixas Horárias

Então devo visualizar a tela: Listas (Atualização)
  resource_frmEntradasColetor.Acessar Tela Listas (Atualização)
