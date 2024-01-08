*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmComandosEquipamentos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Comandos para Equipamentos - Editar Linha
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Comandos para Equipamentos
  Ao ver a tela: Comandos para Equipamentos
  E clicar no botão: Editar esta linha
  Então devo realizar a atualização do cadastro


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Comandos para Equipamentos
  resource_mnu.Clicar No Menu Dispositivo | Codin | Comandos para Equipamentos

Ao ver a tela: Comandos para Equipamentos
  resource_frmComandosEquipamentos.Acessar Tela Comandos para Equipamentos

E clicar no botão: Editar esta linha
    resource_btn.Clicar No Botão Editar Esta Linha

Então devo realizar a atualização do cadastro
    resource_frmComandosEquipamentos.Printar Tela Com Alteração de Linha
    