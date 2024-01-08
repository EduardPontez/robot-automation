*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consestruturaorganograma.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Este caso de teste tem a finalidade de acessar a tela de Consulta de Estrutura de Organograma em Modo de Consulta

*** Test Cases ***

Testcase: Acessar Tela Consulta de Estrutura de Organograma
  [Tags]  PRINT  POPULATED  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Estrutura | Empresa | Organograma
  Então devo ver a tela: Consulta de Estrutura de Organograma

*** Keywords ***

Dado que eu acesse o menu: Estrutura | Empresa | Organograma
  resource_mnu.Clicar No Menu Estrutura | Empresa | Organograma

Então devo ver a tela: Consulta de Estrutura de Organograma
  resource_consestruturaorganograma.Acessar Tela Consulta de Estrutura de Organograma
