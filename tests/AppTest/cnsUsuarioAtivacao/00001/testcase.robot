*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsUsuarioAtivacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Ativar Relatório
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Ativar
  Então devo visualizar a tela: Ativar Relatório

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Ativar
  resource_mnu.Clicar No Menu Relatórios | Ativar

Então devo visualizar a tela: Ativar Relatório
  resource_cnsUsuarioAtivacao.Acessar Tela Ativar Relatório
