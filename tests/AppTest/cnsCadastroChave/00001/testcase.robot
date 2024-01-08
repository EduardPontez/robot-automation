*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCadastroChave.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Cadastro de Chave
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Chave | Cadastro de Chave
  Então devo visualizar a tela: Cadastro de Chave

*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Cadastro de Chave
  resource_mnu.Clicar No Menu Registro | Chave | Cadastro de Chave

Então devo visualizar a tela: Cadastro de Chave
    resource_cnsCadastroChave.Acessar Tela Cadastro de Chave
