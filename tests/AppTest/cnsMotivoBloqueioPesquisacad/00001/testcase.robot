*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmotivobloqueio.robot
Resource        ../../../../resource/app/resource_cnsMotivoBloqueioPesquisacad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Motivo de Bloqueio
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio
  Quando eu visualizar a tela: Cadastro de Motivos de Bloqueios (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Motivo de Bloqueio

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio

Quando eu visualizar a tela: Cadastro de Motivos de Bloqueios (Atualização)
  resource_frmmotivobloqueio.Acessar Tela Cadastro de Motivos de Bloqueios (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Motivo de Bloqueio
  resource_cnsMotivoBloqueioPesquisacad.Acessar Tela Consulta de Motivo de Bloqueio
