*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsDesbloquearCracha.robot
Resource        ../../../../resource/app/resource_frmDesbloquearCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Desbloquear Crachá (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio
  Ao visualizar a tela: Consulta Desbloquear Crachá
  E clicar no botão "Editar o Registro" ao lado do item desejado
  Então devo visualizar a tela: Desbloquear Crachá (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio

Ao visualizar a tela: Consulta Desbloquear Crachá
  resource_cnsDesbloquearCracha.Acessar Tela Consulta Desbloquear Crachá

E clicar no botão "Editar o Registro" ao lado do item desejado
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Desbloquear Crachá (Atualização)
  resource_frmDesbloquearCracha.Acessar Tela Desbloquear Crachá (Atualização)
