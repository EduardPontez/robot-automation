*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmarcaveiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Marcas de Veículos (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Marcas
  Então devo visualizar a tela: Marcas de Veículos (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Marcas
  resource_mnu.Clicar No Menu Veículos | Cadastro | Marcas

Então devo visualizar a tela: Marcas de Veículos (Atualização)
  resource_frmmarcaveiculos.Acessar Tela Marcas de Veículos (Atualização)
