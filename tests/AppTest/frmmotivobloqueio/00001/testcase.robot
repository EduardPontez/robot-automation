*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmotivobloqueio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Cadastro de Motivos de Bloqueios (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio
  Então devo visualizar a tela: Cadastro de Motivos de Bloqueios (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio

Então devo visualizar a tela: Cadastro de Motivos de Bloqueios (Atualização)
  resource_frmmotivobloqueio.Acessar Tela Cadastro de Motivos de Bloqueios (Atualização)
