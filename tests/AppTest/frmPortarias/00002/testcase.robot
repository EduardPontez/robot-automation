*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmPortarias.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Portarias (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Portaria e Recepção
  Quando eu visualizar a tela: Portarias (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Portarias (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Portaria e Recepção
  resource_mnu.Clicar No Menu Estrutura | Portaria e Recepção

Quando eu visualizar a tela: Portarias (Atualização)
  resource_frmPortarias.Acessar Tela Portarias (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Portarias (Inclusão)
  resource_frmPortarias.Acessar Tela Portarias (Inclusão)
