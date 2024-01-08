*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmLoteComandos.robot
Resource        ../../../../resource/app/resource_frmLoteComandos_Comandos.robot
Resource        ../../../../resource/app/resource_abaLoteComando.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Comandos (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Lote de Comando
  Ao visualizar a tela: Cadastro de Lotes de Comandos (Atualização)
  E clicar na aba: Comandos
  Então devo visualizar a tela: Cadastro de Comandos (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Lote de Comando
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Lote de Comando

Ao visualizar a tela: Cadastro de Lotes de Comandos (Atualização)
  resource_frmLoteComandos.Acessar Tela Cadastro de Lotes de Comandos (Atualização)

E clicar na aba: Comandos
  resource_abaLoteComando.Clicar Na Aba Comandos

Então devo visualizar a tela: Cadastro de Comandos (Inclusão)
  resource_frmLoteComandos_Comandos.Acessar Tela Cadastro de Comandos (Inclusão)
