*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMovimentacaoChaves.robot
Resource        ../../../../resource/app/resource_frmRetiraChave.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Retirada de Chave
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Chave | Movimentação de Chave
  Quando eu visualizar a tela: Movimentação de Chave
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Retirada de Chave

*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Movimentação de Chave
  resource_mnu.Clicar No Menu Registro | Chave | Movimentação de Chave

Quando eu visualizar a tela: Movimentação de Chave
  resource_cnsMovimentacaoChaves.Acessar Tela Movimentação de Chave

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Retirada de Chave
  resource_frmRetiraChave.Acessar Tela Retirada de Chave
