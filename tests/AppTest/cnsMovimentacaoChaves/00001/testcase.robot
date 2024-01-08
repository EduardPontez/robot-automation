*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMovimentacaoChaves.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Movimentação de Chave
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Chave | Movimentação de Chave
  Então devo visualizar a tela: Movimentação de Chave

*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Movimentação de Chave
  resource_mnu.Clicar No Menu Registro | Chave | Movimentação de Chave

Então devo visualizar a tela: Movimentação de Chave
  resource_cnsMovimentacaoChaves.Acessar Tela Movimentação de Chave
