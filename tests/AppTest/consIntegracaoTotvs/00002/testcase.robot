*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consIntegracaoTotvs.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta Integração TOTVS
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Integração TOTVS
  Quando eu visualizar a tela: Filtro Integração TOTVS
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Consulta Integração TOTVS

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Integração TOTVS
  resource_mnu.Clicar No Menu Estrutura | Integração TOTVS

Quando eu visualizar a tela: Filtro Integração TOTVS
  resource_consIntegracaoTotvs.Acessar Tela Filtro Integração TOTVS

E clicar no botão: Pesquisar registro
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta Integração TOTVS
  resource_consIntegracaoTotvs.Acessar Tela Consulta Integração TOTVS
