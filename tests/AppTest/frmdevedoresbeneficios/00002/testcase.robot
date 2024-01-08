*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmdevedoresbeneficios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Devedores de Benefícios (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Autorização de Devedores
  Quando eu visualizar a tela: Devedores de Benefícios (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Devedores de Benefícios (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Autorização de Devedores
  resource_mnu.Clicar No Menu Registro | Benefício | Autorização de Devedores

Quando eu visualizar a tela: Devedores de Benefícios (Atualização)
  resource_frmdevedoresbeneficios.Acessar Tela Devedores de Benefícios (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Devedores de Benefícios (Inclusão)
  resource_frmdevedoresbeneficios.Acessar Tela Devedores de Benefícios (Inclusão)
