*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmLoteComandos.robot
Resource        ../../../../resource/app/resource_cnsLotesComandos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Lotes de Comandos
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Lote de Comando
  Quando eu visualizar a tela: Cadastro de Lotes de Comandos (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Lotes de Comandos

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Lote de Comando
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Lote de Comando

Quando eu visualizar a tela: Cadastro de Lotes de Comandos (Atualização)
  resource_frmLoteComandos.Acessar Tela Cadastro de Lotes de Comandos (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Lotes de Comandos
  resource_cnsLotesComandos.Acessar Tela Consulta de Lotes de Comandos
