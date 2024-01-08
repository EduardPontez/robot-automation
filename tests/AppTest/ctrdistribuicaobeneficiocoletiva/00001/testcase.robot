*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrdistribuicaobeneficiocoletiva.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Atribuição de Benefícios
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Atribuição
  Então devo visualizar a tela: Atribuição de Benefícios

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Atribuição
  resource_mnu.Clicar No Menu Registro | Benefício | Atribuição

Então devo visualizar a tela: Atribuição de Benefícios
  resource_ctrdistribuicaobeneficiocoletiva.Acessar Tela Atribuição de Benefícios
