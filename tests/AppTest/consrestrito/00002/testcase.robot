*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consrestrito.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Acesso as Áreas Restritas
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Área Restrita | Consultar Acesso
  Quando eu visualizar a tela: Filtro para consrestrito
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Acesso as Áreas Restritas

*** Keywords ***
Dado que eu acesse o menu: Registro | Área Restrita | Consultar Acesso
  resource_mnu.Clicar No Menu Registro | Área Restrita | Consultar Acesso

Quando eu visualizar a tela: Filtro para consrestrito
    resource_consrestrito.Acessar Tela Filtro para consrestrito

E clicar no botão: Pesquisar registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Acesso as Áreas Restritas
  resource_consrestrito.Acessar Tela Acesso as Áreas Restritas
