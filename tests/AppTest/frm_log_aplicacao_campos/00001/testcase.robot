*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cns_log_aplicacao.robot
Resource        ../../../../resource/app/resource_frm_log_aplicacao_campos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Log de Aplicação - Campo
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Log de Aplicação | Cadastro
  Ao visualizar a tela: Log de Aplicação
  E clicar no botão: Editar o Registro
  Então devo visualizar a tela: Log de Aplicação - Campo

*** Keywords ***
Dado que eu acesse o menu: Configurações | Log de Aplicação | Cadastro
  resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Cadastro

Ao visualizar a tela: Log de Aplicação
  resource_cns_log_aplicacao.Acessar Tela Log de Aplicação

E clicar no botão: Editar o Registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Log de Aplicação - Campo
  resource_frm_log_aplicacao_campos.Acessar Tela Log de Aplicação - Campo
