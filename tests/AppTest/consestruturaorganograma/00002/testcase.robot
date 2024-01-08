*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consestruturaorganograma.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Este caso de teste tem a finalidade de acessar a tela de Consulta de Estrutura de Organograma em modo filtro

*** Test Cases ***

Testcase: Acessar Tela Consulta de Estrutura de Organograma (Filtro)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Estrutura | Empresa | Organograma
  Quando eu visualizar a tela: Consulta de Estrutura de Organograma
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Consulta de Estrutura de Organograma (Filtro)



*** Keywords ***

Dado que eu acesse o menu: Estrutura | Empresa | Organograma
  resource_mnu.Clicar No Menu Estrutura | Empresa | Organograma

Quando eu visualizar a tela: Consulta de Estrutura de Organograma
  resource_consestruturaorganograma.Acessar Tela Consulta de Estrutura de Organograma

E clicar no botão: Pesquisar registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Consulta de Estrutura de Organograma (Filtro)
  resource_consestruturaorganograma.Acessar Tela Consulta de Estrutura de Organograma (Filtro)
