*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMovimentacaoChaves.robot
Resource        ../../../../resource/app/resource_frmDevolveChave.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Devolução de Chave
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Registro | Chave | Movimentação de Chave
  Ao visualizar a tela: Movimentação de Chave
  E clicar no botão: Engrenagem
  Então devo visualizar a tela: Devolução de Chave

*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Movimentação de Chave
  resource_mnu.Clicar No Menu Registro | Chave | Movimentação de Chave

Ao visualizar a tela: Movimentação de Chave
  resource_cnsMovimentacaoChaves.Acessar Tela Movimentação de Chave

E clicar no botão: Engrenagem
  resource_btn.Clicar No Botão Engrenagem

Então devo visualizar a tela: Devolução de Chave
  resource_frmDevolveChave.Acessar Tela Devolução de Chave
