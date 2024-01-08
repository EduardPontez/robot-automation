*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmPontes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Pontes (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Ponte
  Então devo visualizar a tela: Pontes (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Programação | Troca de Ponte
  resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Ponte

Então devo visualizar a tela: Pontes (Atualização)
  resource_frmPontes.Acessar Tela Pontes (Atualização)
