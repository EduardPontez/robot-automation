*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrImportadorRelatorios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Importação de Relatórios
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Importar
  Então devo visualizar a tela: Importação de Relatórios

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Importar
  resource_mnu.Clicar No Menu Relatórios | Importar

Então devo visualizar a tela: Importação de Relatórios
  resource_ctrImportadorRelatorios.Acessar Tela Importação de Relatórios
