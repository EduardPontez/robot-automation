*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consIntegracaoTotvs.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Filtro Integração TOTVS
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Integração TOTVS
  Então devo visualizar a tela: Filtro Integração TOTVS

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Integração TOTVS
  resource_mnu.Clicar No Menu Estrutura | Integração TOTVS

Então devo visualizar a tela: Filtro Integração TOTVS
  resource_consIntegracaoTotvs.Acessar Tela Filtro Integração TOTVS
