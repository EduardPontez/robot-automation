*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmProcessoAutomatico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Processo Automático - On-Line
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | On-Line
  Então devo visualizar a tela: Processo Automático - On-Line

*** Keywords ***
Dado que eu acesse o menu: Processo | On-Line
  resource_mnu.Clicar No Menu Processo | OnLine

Então devo visualizar a tela: Processo Automático - On-Line
  resource_frmProcessoAutomatico.Acessar Tela Processo Automático - On-Line
