*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmtrocaescala.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Troca de Escala (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Escala
  Quando eu visualizar a tela: Troca de Escala (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Troca de Escala (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Escala
  Clicar No Menu Identificação | Colaborador | Programação | Troca de Escala

Quando eu visualizar a tela: Troca de Escala (Atualização)
  resource_frmtrocaescala.Acessar Tela Troca de Escala (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Troca de Escala (Inclusão)
  resource_frmtrocaescala.Acessar Tela Troca de Escala (Inclusão)
