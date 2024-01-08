*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrAcessos.robot
Resource        ../../../../resource/app/resource_ctrComandos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Caso de Teste: Acessar Tela Comandos de Acesso On-Line - Aplicativo
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Controle | Comando | Acesso
  Ao visualizar a tela: Comandos do Acesso On-Line
  E clicar no botão OK
  Então devo visualizar a tela: Comandos de Acesso On-Line
  Ao selecionar a checkbox "Aplicativo", então devo visualizar as opções de tipos de comando

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Acesso
  resource_mnu.Clicar No Menu Controle | Comando | Acesso

Ao visualizar a tela: Comandos do Acesso On-Line
  resource_ctrAcessos.Acessar Tela Comandos do Acesso On-Line

E clicar no botão OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Comandos de Acesso On-Line
  resource_ctrComandos.Acessar Tela Comandos de Acesso On-Line

Ao selecionar a checkbox "${APP}", então devo visualizar as opções de tipos de comando
  resource_ctrComandos.Clicar na Checkbox "${APP}"
