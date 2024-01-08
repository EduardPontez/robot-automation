*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cns_log_aplicacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Log de Aplicação
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Log de Aplicação | Cadastro
  Então devo visualizar a tela: Log de Aplicação

*** Keywords ***
Dado que eu acesse o menu: Configurações | Log de Aplicação | Cadastro
  resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Cadastro

Então devo visualizar a tela: Log de Aplicação
  resource_cns_log_aplicacao.Acessar Tela Log de Aplicação
