*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmtrocaescala.robot
Resource        ../../../../resource/app/resource_cnstrocaescala.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Troca de Escala
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Escala
  Quando eu visualizar a tela: Troca de Escala (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Troca de Escala

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Escala
  Clicar No Menu Identificação | Colaborador | Programação | Troca de Escala

Quando eu visualizar a tela: Troca de Escala (Atualização)
  resource_frmtrocaescala.Acessar Tela Troca de Escala (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Troca de Escala
  resource_cnstrocaescala.Acessar Tela Consulta de Troca de Escala
