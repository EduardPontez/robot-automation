*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmtrocahorario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Troca de Horário (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Horário
  Então devo visualizar a tela: Troca de Horário (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Horário
  resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Horário

Então devo visualizar a tela: Troca de Horário (Atualização)
  resource_frmtrocahorario.Acessar Tela Troca de Horário (Atualização)
