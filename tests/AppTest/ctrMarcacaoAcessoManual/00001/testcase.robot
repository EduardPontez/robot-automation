*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrMarcacaoAcessoManual.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Caso de Teste: Acessar Tela Marcação de Acesso Manual
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Marcação de Acesso Manual
  Então devo visualizar a tela: Marcação de Acesso Manual

*** Keywords ***
Dado que eu acesse o menu: Entrada | Marcação de Acesso Manual
  resource_mnu.Clicar No Menu Entrada | Marcação de Acesso Manual

Então devo visualizar a tela: Marcação de Acesso Manual
  resource_ctrMarcacaoAcessoManual.Acessar Tela Marcação de Acesso Manual
