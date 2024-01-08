*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmPortarias.robot
Resource        ../../../../resource/app/resource_cnsPortariascad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Portarias
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Portaria e Recepção
  Quando eu visualizar a tela: Portarias (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Portarias

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Portaria e Recepção
  resource_mnu.Clicar No Menu Estrutura | Portaria e Recepção

Quando eu visualizar a tela: Portarias (Atualização)
  resource_frmPortarias.Acessar Tela Portarias (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Portarias
  resource_cnsPortariascad.Acessar Tela Consulta de Portarias
