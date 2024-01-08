*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrtrocacracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Troca de Crachá
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Troca de Crachá
  Então devo visualizar a tela: Troca de Crachá

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Troca de Crachá
  resource_mnu.Clicar No Menu Registro | Crachá | Troca de Crachá

Então devo visualizar a tela: Troca de Crachá
  resource_ctrtrocacracha.Acessar Tela Troca de Crachá
