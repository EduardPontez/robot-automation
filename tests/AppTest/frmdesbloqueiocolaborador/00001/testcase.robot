*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consdesbloqueiocolaborador.robot
Resource        ../../../../resource/app/resource_frmdesbloqueiocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Desbloqueio do Colaborador (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Desbloqueio
  Ao visualizar a tela: Consulta de Bloqueio de Colaborador
  E clicar no botão "Editar o Registro" ao lado do item desejado
  Então devo visualizar a tela: Desbloqueio do Colaborador (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Desbloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Desbloqueio

Ao visualizar a tela: Consulta de Bloqueio de Colaborador
  resource_consdesbloqueiocolaborador.Acessar Tela Consulta de Bloqueio de Colaborador

E clicar no botão "Editar o Registro" ao lado do item desejado
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Desbloqueio do Colaborador (Atualização)
  resource_frmdesbloqueiocolaborador.Acessar Tela Desbloqueio do Colaborador (Atualização)
