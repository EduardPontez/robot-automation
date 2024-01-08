*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmProcessoAutomatico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Processo Automático - Exportação
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Exportação
  Então devo visualizar a tela: Processo Automático - Exportação

*** Keywords ***
Dado que eu acesse o menu: Processo | Exportação
  resource_mnu.Clicar No Menu Processo | Exportação

Então devo visualizar a tela: Processo Automático - Exportação
  resource_frmProcessoAutomatico.Acessar Tela Processo Automático - Exportação
